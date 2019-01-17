## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|item_num|references|null: false, unique: true|
|name|references|null: false, index: true|
|price|integer|null: false|
|stock|integer|null: false|
|item_description|text|null: false|
|category_id|references|null: false, foreign_key: true|
|shop_id|references|null: false, foreign_key: true|

### Association
- belongs_to :category
- belongs_to :shop
- has_many :item_carts, through: :users
- has_many :orders, through: :item_orders
- has_many :images
- has_many :users, through: :item_likes
- has_many :sizes, through: :item_sizes


## sizesテーブル

|Column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- has_many :items, through: :item_sizes


## item_sizesテーブル

|Column|Type|Options|
|------|----|-------|
|size_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :size
- belongs_to :item


## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|main_category|string|index: true, null: false, unique: true|
|sub_category|string|index: true, null: false, unique: true|

### Association
- has_many :items


## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|items_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item


## shopsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|shop_introduction|text|null: false|
|seller_introduction|text|null: false|
|logo|integer|null: false|
|heder_image|integer|null: false|

### Association
- has_many :items


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|member_num|string|null: false, unique: true|
|mail|text|null: false|
|password|text|null: false|
|name|integer|null: false|
|tel|integer|null: false|
|post_num|integer|null: false|
|address|integer|null: false|
|gender|string|null: false|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|shops_id|references|null: false, foreign_key: true|

### Association
- has_many :carts
- has_many :items, through :item_carts
- has_many :items, through :item_likes


## ordersテーブル

|Column|Type|Options|
|------|----|-------|
|order_num|integer|null: false, unique: true|
|cart_id|references|null: false, foreign_key: true|

### Association
- belongs_to :cart
- has_many :items, through :item_orders


## item_ordersテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|quantity|integer|null: false|
|order_id|references|null: false, foreign_key: true|

### Association
- belongs_to :order
- belongs_to :item


## cartsテーブル

|Column|Type|Options|
|------|----|-------|
|total_price|integer|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :orders


## item_cartsテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|quantity|integer|null: false|
|cart_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## item_likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item



![database](https://user-images.githubusercontent.com/40683059/50054507-e8d40d00-0185-11e9-907f-05bed2311390.png)
