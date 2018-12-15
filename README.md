# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization


## itemテーブル

|Column|Type|Options|
|------|----|-------|
|item_num|integer|null: false, unique: true|
|name|string|null: false, index: true|
|price|integer|null: false|
|stock|integer|null: false|
|item_description|text|null: false|
|category_id|integer|null: false, foreign_key: true|
|shop_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :category
- belongs_to :shop
- has_many :item_carts, through: :users
- has_many :orders, through: :item_orders
- has_many :images
- has_many :users, through: :item_likes
- has_many :sezes, through: :sizes_item


## sizesテーブル

|Column|Type|Options|
|------|----|-------|
|type|string|null: false|

### Association
- has_many :items, through: :sizes_item


## sizes_itemテーブル

|Column|Type|Options|
|------|----|-------|
|sizes_id|integer|null: false, unique: true|
|items_id|integer|null: false, unique: true|

### Association
- belongs_to :size
- belongs_to :item


## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|top_categorie|string|index: true, null: false, unique: true|
|sub_categorie|string|index: true, null: false, unique: true|

### Association
- has_many :items


## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|items_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


## shopsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|shop_introduction|text|null: false, foreign_key: true|
|self_introduction|text|null: false, foreign_key: true|
|logo|integer|null: false, foreign_key: true|
|heder_image|integer|null: false, foreign_key: true|
|blood_type_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :blood_type
- has_many :items


## blood_typesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Association
- has_many :users


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|member_num|string|null: false, unique: true|
|mail|text|null: false, foreign_key: true|
|password|text|null: false, foreign_key: true|
|name|integer|null: false, foreign_key: true|
|tel|integer|null: false, foreign_key: true|
|post_num|integer|null: false, foreign_key: true|
|address|integer|null: false, foreign_key: true|
|birthdays_id|integer|null: false, foreign_key: true|
|gender_id|integer|null: false, foreign_key: true|
|shops_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :gender
- belongs_to :birthday
- has_many :carts
- has_many :items, through :item_carts
- has_many :items, through :item_likes



## birthdaysテーブル

|Column|Type|Options|
|------|----|-------|
|year|integer|null: false|
|month|integer|null: false|
|day|integer|null: false|

### Association
- has_many :users


## genderテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :users


## ordersテーブル

|Column|Type|Options|
|------|----|-------|
|order_num|integer|null: false, unique: true|
|cart_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :cart
- has_many :items, through :item_orders


## item_ordersテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|quantity|integer|null: false|
|order_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :order
- belongs_to :item


## cartsテーブル

|Column|Type|Options|
|------|----|-------|
|total_price|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :orders

## item_cartsテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|quantity|integer|null: false|
|cart_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## item_likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

