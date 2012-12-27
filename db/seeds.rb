#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

count_range = 1...100

info_type = ["部门文件", "行政执法", "办事指南", "财政预决算", "规划计划", "统计信息"]
info_type.each do |inf_type|
  count_range.each do |count|
    info = PublicInfo.new
    info.title = "这是#{inf_type}中的第#{count}个文件的标题"
    info.content = "这是一段文本，用于说明#{inf_type}的内容"
    info.index_number = "0412-00-2012-009#{count}"
    info.file_number = "201212120#{count}"
    info.organ = "XX省XX办公室"
    info.info_type = inf_type
    info.save
  end
end
