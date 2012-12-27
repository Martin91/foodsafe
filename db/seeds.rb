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
  info = GovInfo.new
  info.name = "这是第#{count}个工作计划"
  info.content = "这是一段文本，说明工作计划的内容！" * 50
  info.info_type = "工作计划"
  info.save

  info = GovInfo.new
  info.name = "#{count}这是工作内容的标题"
  info.content = "这是一段文本，说明工作内容！" * 50
  info.info_type = "工作内容"
  info.save

  info = GovInfo.new
  info.name = "这是工作成果#{count}"
  info.content = "这个部分展示工作成果！" * 50
  info.info_type = "工作成果"
  info.save

  info = GovInfo.new
  info.name = "#{count}这是工作动态标题"
  info.content = "这是一段文本，说明工作动态内容" * 50
  info.info_type = "工作动态"
  info.save
end
