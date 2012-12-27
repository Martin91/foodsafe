#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

count_range = 1...100

count_range.each do |count| 
  law = Law.new
  law.title = "#{count}这是某部法律的标题"
  law.content = "这是一段文本，说明法律内容" * 50
  law.law_type = "相关法律"
  law.save

  law = Law.new
  law.title = "#{count}这是某部法规的标题"
  law.content = "这是一段文本，说明法规内容" * 50
  law.law_type = "相关法规"
  law.save

  law = Law.new
  law.title = "#{count}这是某个部门规定的标题"
  law.content = "这个部分说明部门规定内容" * 50
  law.law_type = "部门规定"
  law.save

  law = Law.new
  law.title = "#{count}这是工作文件标题"
  law.content = "这是一段文本，说明工作文件内容" * 50
  law.law_type = "工作文件"
  law.save
end
