#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

count_range = 1...100

organ_duty = ["部门职能", "单位及负责人", "组织结构", "工作内容与性质"]
organ_duty.each do |title|
    organ = Organ.new
    organ.title = title
    organ.content = "这是一段文本，用于说明#{title}的内容" * 50
    organ.save
end

laws = ["相关法律", "相关法规", "部门规定", "工作文件"]
laws.each do |law_type|
  count_range.each do |count|
    law = Law.new
    law.title = "这是#{law_type}中的第#{count}个文件的标题"
    law.content = "这是一段文本，用于说明#{law_type}的内容" * 50
    law.law_type = law_type
    law.save
  end
end

works = ["工作计划", "工作内容", "工作成果", "工作动态"]
works.each do |work_type|
  count_range.each do |count|
    work = GovInfo.new
    work.name = "这是#{work_type}中的第#{count}个文件的标题"
    work.content = "这是一段文本，用于说明#{work}的内容" * 50
    work.info_type = work_type
    work.save
  end
end

info_types = ["部门文件", "行政执法", "办事指南", "财政预决算", "规划计划", "统计信息"]
info_types.each do |info_type|
  count_range.each do |count|
    info = PublicInfo.new
    info.title = "这是#{info_type}中的第#{count}个文件的标题"
    info.content = "这是一段文本，用于说明#{info_type}的内容" * 50
    info.info_type = info_type
    info.organ = "XX省XX办公室"
    info.index_number = "0412-00-2012-009#{count}"
    info.file_number = "201212120#{count}"
    info.save
  end
end

integritys = ["质量公告", "查处公告", "审批公告"]
integritys.each do |integrity_type|
  count_range.each do |count|
    integrity = Integrity.new
    integrity.title = "这是#{integrity_type}中的第#{count}个文件的标题"
    integrity.content = "这是一段文本，用于说明#{integrity_type}的内容" * 50
    integrity.info_type = integrity_type
    integrity.save
  end
end
