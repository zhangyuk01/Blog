# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#添加管理员
admin = User.new username: 'yunanxili', password: '504523', password_confirmation: '504523', email: '1135841068@qq.com', admin: true, activation: 1
puts admin.save! ? 'add admin success.' : 'add admin fail!'

#添加一个默认分类
category = Category.new name: 'morenfenlei'
puts category.save! ? 'add category success.' : 'add category fail!'
