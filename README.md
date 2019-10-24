## usersテーブル

|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|password|string|null: false|
|email|string|null: false, unique: true|
|groups_users_id|integer|null: false, foreign_key: true|

### Association
- has_many :massage
- has_many :groups_users
- has_many :group,  through:  :groups_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|string|null: false|
|group_user_id|integer|null: false, foreign_key: true|

### Association
- has_many :massage
- has_many :groups_users
- has_many :users,  through:  :groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|text||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user