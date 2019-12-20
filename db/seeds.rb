# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8

p "create test User"
User.create!(
  email: 'test@test.com',
  password: 'testtest'
)

p "create initial Category"
Category.create!(
  name: 'ノンカテゴリ',
  user_id: 1
)

p "create sample Template"
Template.create!(
  name: 'テンプレートサンプル',
  body: 'テンプレートをリストから選択するとフォームに反映されます。このテンプレートはサンプルなので削除してください。',
  user_id: 1
)

p "create test Category"
Category.create!(
  name: '実装状況',
  user_id: 1
)

p "create test Diary"
Diary.create!(
  date: '2019-12-19',
  body: 'Herokuデプロイしました',
  user_id: 1
)

p "create test Work"
Work.create!(
  title: '実装状況について',
  body: "・日記一覧：日記とワークを一覧表示します。\n・ワーク一覧：ワークをカテゴリごとに一覧表示します。（未実装）\n・検索：日記・ワークを文字列検索できます。（未実装）\n・編集：カテゴリとテンプレートの中身を編集できます。\n・アカウント：ログイン状況の確認とログアウトができます。",
  category_id: 2,
  diary_id: 1
)