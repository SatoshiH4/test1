# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(name: 'satoshi', email: "satoshi@example.com")
user.posts.create(plan_name: '府中')
user.posts.create(plan_name: '調布')
user.posts.create(plan_name: '布田')
user.posts.create(plan_name: '中野')