create or replace function delete_words_in_text()
returns trigger as $$
begin
    -- Get all words that belong only to the specified text record
	create temp table if not exists words_to_delete(
		word text
	);
	
	insert into words_to_delete
	select w.word
	from "WordsDAO" w
	where OLD.text like '%' || w.word || '%'
		and not exists(
			select *
			from "TextsDAO" t
			where t.text like '%' || w.word || '%'
				and t.id <> OLD.id
		);

	-- Delete all connections with dictionaries from database
	delete from "_DictionariesDAOToWordsDAO" as d
	where d."B" in (select word from words_to_delete);

	-- Delete all words that belong only to the specified text record
	delete from "WordsDAO" as w
	where w.word in (select word from words_to_delete);
	return OLD;
end;
$$ language plpgsql;


-- create trigger
create trigger delete_words_in_text_trigger
before delete on "TextsDAO"
for each row
execute function delete_words_in_text();
