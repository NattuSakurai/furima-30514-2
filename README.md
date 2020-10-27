# テーブル設計
## users テーブル
| Colum                | Type   | Options     | 
| -------------------- | ------ | ----------- | 
| nickname             | string | null: false | 
| email                | string | null: false | 
| password             | string | null: false | 
| birthday             | date   | null: false | 
| first_name           | string | null: false | 
| last_name            | string | null: false | 
| first_name_kana      | string | null: false | 
| last_name_kana       | string | null :false | 

### Association
-has_many :items
-has_many :records

## items テーブル
| Colum            | Type       | Options                        | 
| ---------------- | ---------- | ------------------------------ | 
| name             | string     | null: false                    | 
| description      | text       | null: false                    | 
| category_id      | integer    | null: false                    | 
| status_id        | integer    | null: false                    | 
| postage_id       | integer    | null: false                    | 
| regional_id      | integer    | null: false                    | 
| shipping_date_id | integer    | null: false                    | 
| price            | integer    | null: false                    | 
| user             | references | null: false, foreign_key: true | 
### Association
-has_one :record
-belongs_to :user

## records テーブル
| Colum   | Type       | Options                        | 
| ------- | ---------- | ------------------------------ | 
| user    | references | null: false, foreign_key: true | 
| item    | references | null: false, foreign_key: true | 

### Association
-belongs_to :user
-belongs_to :item
-has_one :address

## address テーブル
| Colum          | Type       | Options                        | 
| -------------- | ---------- | ------------------------------ | 
| postal_code    | string     | null: false                    | 
| prefectures_id | integer    | null: false                    | 
| city           | string     | null: false                    | 
| address_number | string     | null: false                    | 
| building_name  | string     |                                | 
| phone_number   | string     | null: false                    | 
| record         | references | null: false, foreign_key: true | 
### Association
-belongs_to :record