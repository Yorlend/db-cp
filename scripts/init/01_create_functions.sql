\c cw_db

create or replace function is_kanji(IN a_char character)
returns boolean as
$$
    select
        a_char ~ '[\x3400-\x4DB5\x4E00-\x9FCB\xF900-\xFA6A]'
$$
language sql
immutable
strict;
