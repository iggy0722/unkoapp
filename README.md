# アプリケーション名
![うんち日記](https://user-images.githubusercontent.com/93369812/146731580-91ec5d19-4a98-4e1f-ae49-304f14688dca.png)
# 概要


# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| email              | string | null: false, unique:true |
| encrypted_password | string | null: false              |


### Association
- has_many :humans


## humans テーブル

| Column         | Type         | Options                        |
| -------------- | ------------ | ------------------------------ |
| name           | string       | null: false, unique:true       |
| type_id        | integer      | null: false                    |
| user           | references   | null: false, foreign_key: true |


### Association
- has_many :poops
- belongs_to :user

## poops テーブル

| Column             | Type         | Options                        |
| ------------------ | ------------ | ------------------------------ |
| state_id           | integer      | null: false                    |
| detail             | text         |                                |
| weight_id          | integer      | null: false                    |
| start_time         | datetime     | null: false                    |
| human              | references   | null: false, foreign_key: true |



### Association
- belongs_to :humans
