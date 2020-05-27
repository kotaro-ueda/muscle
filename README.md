# README


## users table

|Culumn|Type|Opton|
|------|----|-----|
|encrypted_password|string| null: false|
|name|string|index: true, null:false, unque: true|
|email|string|null: false|
|goal|string|null: false|

### Association
- has_many : blogs

## numbers table

|Culumn|Type|Opton|
|------|----|-----|
|weight|string| null: false|
|parsent|string|null:false|
|result|string|null:false|

## blogs table

|Culumn|Type|Opton|
|------|----|-----|
|title|string| null: false|
|content|text|null:false|
|start_time|datetime|null:false|

### Association
- belongs_to : user
