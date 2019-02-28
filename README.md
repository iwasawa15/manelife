# アプリの概要
カレンダーからその日の最初の予定を取り出し、最寄駅からその予定地につくためにはどの電車に乗るべきかを自動で算出する。準備にかかる設定時間から起きるべき時刻を通知する。
毎日のアラームの設定と乗り継ぎ電車を調べる時間と手間を省く。

# データベース設計

## users
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|email|string|null: false, unique: true|
|station|string|null: false|
|preparation_time|integer|null: false|

### Association

- has_many :schedules

## schedules
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|date|datetime|null: false, index: true|
|place|string|null: false|
|user_id|reference|foreign_key: true|

### Association

- belongs_to :user

## trains
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|date|datetime|null: false|
