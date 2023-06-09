# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "admin@admin",
  password: "adminadmin"
)

Genre.create!(
  [
    {name: "スポーツ",is_active: true,},
    {name: "音楽",is_active: true,},
    {name: "アウトドア",is_active: false,},
    {name: "車・バイク",is_active: false,},
    {name: "ゲーム",is_active: true,},
    {name: "ギャンブル",is_active: true,},
    {name: "芸術",is_active: true,},
    {name: "その他",is_active: true,}
  ]
)

#User.create!()
  users = [
    {name: "太郎",email: "a@a",password: "aaaaaa",password_confirmation: "aaaaaa",admin: false},
    {name: "次郎",email: "b@b",password: "bbbbbb",password_confirmation: "bbbbbb",admin: false},
    {name: "三郎",email: "c@c",password: "cccccc",password_confirmation: "cccccc",admin: false},
    {name: "四郎",email: "d@d",password: "dddddd",password_confirmation: "dddddd",admin: false},
    {name: "五郎",email: "e@e",password: "eeeeee",password_confirmation: "eeeeee",admin: false},
  ]

  users.each do |user|
    User.create!(user)
  end
# Hobbyモデルに新しいホビーを保存する
hobby = Hobby.new
  hobby.user = User.find_by(id:"1")# ユーザーを検索して関連付け
  hobby.name = "野球"                          # ホビーの名前を指定
  hobby.introduction = "最近プロ野球も盛り上がってるし、みなさんも始めてみよう！"                  # ホビーの紹介文を指定
  hobby.genre_id = 1                           # ホビーのジャンルIDを指定
  hobby.save                        #ホビーデータ保存
  hobby.save_tags("本格派 中級者")    # タグを保存

  hobby = Hobby.new
  hobby.user = User.find_by(id:"2")# ユーザーを検索して関連付け
  hobby.name = "ピアノ"                          # ホビーの名前を指定
  hobby.introduction = "本体は高いけど、電子ピアノならリーズナブルで簡単に始められます！生音にこだわりたいならアップライトも有り！"                  # ホビーの紹介文を指定
  hobby.genre_id = 2                           # ホビーのジャンルIDを指定
  hobby.save                        #ホビーデータ保存
  hobby.save_tags("初心者オススメ 中級者")    # タグを保存

  hobby = Hobby.new
  hobby.user = User.find_by(id:"3")# ユーザーを検索して関連付け
  hobby.name = "キャンプ"                          # ホビーの名前を指定
  hobby.introduction = "日頃の疲れを非日常でもあるキャンプで癒してみませんか？栃木の「ニュー霧降」新潟の「スノーピーク・ヘッドクォーターズ」は最高でした！"                  # ホビーの紹介文を指定
  hobby.genre_id = 3                           # ホビーのジャンルIDを指定
  hobby.save                        #ホビーデータ保存
  hobby.save_tags("非日常 初心者オススメ")    # タグを保存

  hobby = Hobby.new
  hobby.user = User.find_by(id:"4")# ユーザーを検索して関連付け
  hobby.name = "test"                          # ホビーの名前を指定
  hobby.introduction = "test"                  # ホビーの紹介文を指定
  hobby.genre_id = 4                           # ホビーのジャンルIDを指定
  hobby.save                        #ホビーデータ保存
  hobby.save_tags("test test2 test3")    # タグを保存

  hobby = Hobby.new
  hobby.user = User.find_by(id:"5")# ユーザーを検索して関連付け
  hobby.name = "test"                          # ホビーの名前を指定
  hobby.introduction = "test"                  # ホビーの紹介文を指定
  hobby.genre_id = 5                           # ホビーのジャンルIDを指定
  hobby.save                        #ホビーデータ保存
  hobby.save_tags("test test2 test3")    # タグを保存