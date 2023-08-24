# README

# README
# テーブル設計

## users
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| email              | string     | null: false, unique: true      |
| nick_name          | string     | null: false                    |
| last_name          | string     | null: false                    |
| first_name         | string     | null: false                    |
| sex_id             | string     | null false                     |
| date_birth         | date       | null: false                    |
| encrypted_password | string     | null: false                    |

### Association
- has_many :share
- has_many :mountain_gears

## shares
| Column                        | Type         | Options                        |
| ------------------------------| -------------| ------------------------------ |
| title                         | string       | null: false                    |
| area                          | string       | null: false                    |
| mountain_area                 | string       | null: false                    |
| mountain_name                 | string       | null: false                    |
| date_entry                    | string       | null: false                    | 
| date_exit                     | string       | null: false                    |
| companions                    | string       |                                | #同行者
| access                        | string       | null: false                    |
| course                        | string       | null: false                    | #GPS導入？
| itinerary                     | string       | null: false                    | #行程
| activity_record               | text         | null: false                    | #行動記録
| user                          | references   | null: false foreign_key: true  |


### Association
- belongs_to :user


## gears 
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| category_id        | interger   | null: false                    |
| brand              | string     | null: false                    |
| item_name          | string     | null: false                    |
| buy_year           | date       | null: false                    |
| price              | integer    | null: false                    |
| review             | text       | null: false                    |
### Association
- belongs_to :user
