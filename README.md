## App URL

### http://18.180.198.218


## usage

`$ git clone https://github.com/kotaro-ueda/muscle.git`


## 制作の意図

日々の記録及び自動重量計算を実装することで効率的かつ効果的なトレーニングを行えるようにする為このようなアプリを開発しました。自分自身が筋力トレーニングを行っている時にノートに記録を取っていたが、そのノートを持ち運びすることが手間に思いました。さらに筋力トレーニングの質を向上したく、日々の成長を記録しカレンダーに表すことでモチベーションの向上を図ることができる機能を実装。これらの理由から筋力トレーニングアプリの開発に至離ました。


## 工夫したポイント

自動計算機能でページを戻らなくても何度も計算できるように工夫しました。


## 使用技術（開発環境）

Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code


## 課題や今後実装したい機能

課題については、まだ見た目の部分で見にくいところがあるのでHTML・CSSを使って修正していきたいと思っています。
今後実装していきたい機能については、カレンダー機能にグループ機能を実装し複数人でカレンダーを共有できる機能を実装していきたいと思っていいます。


# muscleのデータベース設計

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
