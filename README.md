# README

## graph_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|graph_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :graph
- belongs_to :user

## users table

|Culumn|Type|Opton|
|------|----|-----|
|encrypted_password|string| null: false|
|name|string|index: true, null:false, unque: true|
|email|string|null: false|
|goal|string|null: false|

### Association
- has_many :graphs, through: graphs_users
- has_many :graphs_users

## graphs table

|Culumn|Type|Opton|
|------|----|-----|
|weight|string| null: false|
|title|string|null:false|

### Association
- has_many :users, through: graphs_users
- has_many :graphs_users

## numbers table

|Culumn|Type|Opton|
|------|----|-----|
|weight|string| null: false|
|parsent|string|null:false|
|result|string|null:false|