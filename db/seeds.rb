#encoding: utf-8
count_range = 1...51

if User.count == 0
  user = User.new
  user.name = "Admin"
  user.email = "admin@example.com"
  user.password = "123456"
  user.password_confirmation = "123456"
  user.save
end

if Organ.count == 0
  organ_duty = ["部门职能", "单位及负责人", "组织结构", "工作内容与性质"]
  organ_duty.each do |title|
    organ = Organ.new
    organ.title = title
    organ.content = "这是一段文本，用于说明#{title}的内容" * 50
    organ.save
  end
end

if Law.count == 0
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
end

if GovInfo.count == 0
  works = ["工作计划", "工作内容", "工作成果", "工作动态"]
  works.each do |work_type|
    count_range.each do |count|
      work = GovInfo.new
      work.name = "这是#{work_type}中的第#{count}个文件的标题"
      work.content = "这是一段文本，用于说明#{work_type}的内容" * 50
      work.info_type = work_type
      work.save
    end
  end
end

if PublicInfo.count == 0
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
end

if Integrity.count == 0
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
end

if Company.count == 0
  count_range.each do |count|
    company = Company.new
    company.name = "白云山药业"
    company.produce_address = "XX省XX市XX区XX县XX工业区XX食品生产加工#{count}区"
    company.license_no = "GD·FDA健证字（2012）第0111W#{count}号"
    company.legal_person = "洪XX"
    company.license_project = "生产销售片剂、胶囊剂、颗粒剂、软胶囊剂"
    company.register_address = "XX县XX工业区XX食品生产加工#{count}区"
    company.valid_for = "20#{count}-13-32"
    company.save
  end

  count_range.each do |count|
    company = Company.new
    company.name = "王老吉制药"
    company.produce_address = "XX省XX市XX区XX县XX工业区XX食品生产加工#{count}区"
    company.license_no = "GD·FDA健证字（2010）第0111W#{count}号"
    company.legal_person = "洪XX"
    company.license_project = "保健食品片剂、胶囊剂、颗粒剂、软胶囊剂"
    company.register_address = "XX省XX市XX区"
    company.valid_for = "20#{count}-13-32"
    company.save
  end
end

if Product.count == 0
  count_range.each do |count|
    product = Product.new
    product.name = "仁德堂牌妙妙减肥胶囊"
    product.license_no = "卫食健字（2002）第02#{count}号"
    product.company_name = "XX保健生物制药厂"
    product.company_address = "XX省XX市XX区第#{count}减肥厂"
    product.health_function = "减肥防猝死"
    product.save
  end

  count_range.each do |count|
    product = Product.new
    product.name = "还我靓靓药"
    product.license_no = "卫食健字（2002）第08#{count}号"
    product.company_name = "XX保健生物制药厂"
    product.company_address = "XX省XX市XX区第#{count}减肥厂"
    product.health_function = "减肥防猝死"
    product.save
  end
end

if Post.count == 0
  20.times do
    post = Post.new
    post.title = "这是帖子的标题"
    post.content = "这是帖子的内容"
    post.user_id = User.first.id
    post.save
  end
end
