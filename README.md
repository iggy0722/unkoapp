# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| email              | string | null: false, unique:true |
| encrypted_password | string | null: false              |


### Association


## familys テーブル

| Column         | Type   | Options                              |
| -------------- | ------ | ------------------------------------ |
| name           | string | null: false, unique:true             |
| type_id        | string | null: false                          |
| user           | references   | null: false, foreign_key: true |


### Association


## unkos テーブル

| Column             | Type         | Options                        |
| ------------------ | ------------ | ------------------------------ |
| state_id           | string       | null: false                    |
| detail             | text         | null: false                    |
| family             | references   | null: false, foreign_key: true |



### Association