#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1...1000).each do |count| 
  law = Law.new
  law.title = "#{count}这是一个标题"
  law.content = "这是一段文本，用来说明发生了什么事"
  law.law_type = "相关法律"
  law.save
end
