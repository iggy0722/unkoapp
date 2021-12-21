# アプリケーション名
![うんち日記](https://user-images.githubusercontent.com/93369812/146731580-91ec5d19-4a98-4e1f-ae49-304f14688dca.png)
# 概要
うんちの記録をつけるアプリ。  
どれくらいの頻度で記録しているかカレンダーで一目でわかるように、最後の記録から何日経っているかを認知することでより健康管理の一つとして取り入れてもらえたらと思います。  
ユーザーも複数作る事ができ家族やペットの管理などもできるようにしています。
# URL
https://unkoapp-37164.herokuapp.com/
# test用アカウント
email: a@gmail.com
<p>password: aaaaaa</p>

# アプリケーションを作成した背景
便秘にお困りの方や排便頻度を記録したい人のために作ろうと考えました。  
その他にも話すことができない赤ちゃんやペットなどにとって排便で体調を管理することは重要であると考えています。  
子供がトイレを覚える際にも楽しんで記録する習慣に使ってもらえるようにフォントや絵などを可愛くしました。  

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1vyWtv-BmdzHwguYXlDhFCEdkmLHPOwSfXRg2o3a1UZY/edit#gid=982722306
# 実装予定の機能
写真を添付できるようにする。（実際病院などで必要になる事が多いため）
ペットによってうんちの絵を代わるようにする（飼い主の方の管理を楽しくしてもらうため）
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

#　開発環境
フロントエンド：HTML、CSS
バックエンド：Ruby(ver 2.5.1),Ruby on Rails(ver 6,0,4)
インフラ：heroku,MySQL
テスト：RSpec
テキストエディタ：Visual　Studio　Code


### 最後に
最後まで読んでくださりありがとうございます。
0から作る初めてのアプリなので至らぬ点もあるかと思いますが精進して参ります。
また機会がありましたらどうぞよろしくお願いします。
