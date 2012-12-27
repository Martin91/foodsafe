#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

count_range = 1...100

law = ["相关法律", "相关法规", "部门规定", "工作文件"]
law.each do |law_type|
  count_range.each do |count|
    info = Law.new
    info.title = "这是#{law_type}中的第#{count}个文件的标题"
    info.content = "这是一段文本，用于说明#{law_type}的内容" * 50
    info.law_type = law_type
    info.save
  end
end
