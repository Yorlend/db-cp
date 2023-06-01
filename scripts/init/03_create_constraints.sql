alter table users add constraint users_pkey primary key (id);
alter table kanji add constraint kanji_pkey primary key (glyph);
alter table dictionaries add constraint dictionaries_pkey primary key (id);
alter table words add constraint words_pkey primary key (id);
alter table dict_words add constraint dict_words_pkey primary key (dict_id, word_id);
alter table texts add constraint texts_pkey primary key (id);

alter table dict_words add constraint dict_words_dict_id_fkey foreign key (dict_id) references dictionaries(id);
alter table dict_words add constraint dict_words_word_id_fkey foreign key (word_id) references words(id);