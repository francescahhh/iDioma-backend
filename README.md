# [insert name of app here] Backend README

## Models and Relationships

<img width="811" alt="Screen Shot 2022-02-01 at 1 04 40 PM" src="https://user-images.githubusercontent.com/91583383/152042808-b6ee0314-c9fe-4626-8fcd-e7174aad808f.png">

## User

* A user has many words. A user has many word_categories through words. 
* A user has many notes. A user has many note_categories through notes. 

## Word

* A word belongs to a user. A word belongs to a word_category.

## Note

* A note belongs to a user. A note belongs to a note_category. 

## API
Each table will have multiple endpoints. Here are some examples:

#### POST/ users
Creates a new user. Response JSON looks like this: 
```
{
id: 1,
username: “name”
}
```
There is no DELETE or PATCH endpoint for this table. 

#### POST/ words
Creates a new word. Response JSON looks like this:
```
{
id: 1,
word: “gato”,
definition: “cat”,
source: “name of source”,
user_id: 1,
word_category_id: 1
}
```

There is also a GET, DELETE, and PATCH endpoint for this table. 

#### POST/ notes
Creates a new note. Response JSON looks like this:
```
{
id: 1,
content: “note content goes here…”,
user_id: 1,
note_category_id: 1
}
```
There is also a GET, DELETE, and PATCH endpoint for this table. 

#### POST/ word_categories
Creates a new category for the words to belong to. The format for the note_categories table is the same. Response JSON looks like this: 
```
{
id: 1,
category_name: “animals”
}
```
There is also a DELETE endpoint for this table.


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
