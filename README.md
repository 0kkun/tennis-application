# README

## このアプリについて
- ユーザーの好みに合わせて表示する情報を変えることができるウェブアプリです。
- favarite playerを選択することで表示が変わります。
- ニュース、youtubeの情報が切り替わるようになっています。

## 使用している技術
- スクレイピング(ニュース、ランキング、大会情報)
- youtube API

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : 2.5.1p57

* System dependencies : Rails version 5.2.4.1

* Configuration

* Database creation : MySQL 5.6.46 Homebrew

### Tennis Application DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :messages
- has_many :players
- has_many :brands


## playersテーブル
|Column|Type|Options|
|------|----|-------|
|player_name|string|unique: true|
|player_name_jp|string|unique: true|
|player_name_etc|string|unique: true|
|player_name_search_1|string|unique: true|
|player_name_search_2|string|unique: true|
### Association
- has_many :users, through: :favorites
- has_many :player_users


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand_name_en|string|unique: true|
|brand_name_jp|string|unique: true|
|brand_name_etc|string|unique: true|
### Association
- has_many :users, through: :brand_users
- has_many :brand_users


## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|player_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :players


## brand_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :brands



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
