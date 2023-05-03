create database cw_db;

\c cw_db

create table users (
    id serial,
    account_name text,
    creation_date timestamp,
    change_date timestamp,
    role text
);

create table kanji (
    glyph nchar,
    onyoumi text,
    kunyoumi text,
    meaning text
);

create table dictionaries (
    id serial,
    creation_date timestamp,
    change_date timestamp
);

create table words (
    id serial,
    translation text,
    reading text,
    word text
);

create table dict_words (
    dict_id int,
    word_id int
);

create table texts (
    id serial,
    title text,
    content text,
    creation_date timestamp,
    author_id int
);
