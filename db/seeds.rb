#encoding: utf-8
count_range = 1...50
count_range.each do |count|
  company = Company.new
  company.name = "白云山&王老吉药业"
  company.produce_address = "XX省XX市XX区XX县XX工业区XX食品生产加工#{count}区"
  company.license_no = "GD·FDA健证字（2010）第0111W#{count}号"
  company.legal_person = "洪XX"
  company.license_project = "保健食品生产销售（片剂、胶囊剂、颗粒剂、软胶囊剂）"
  company.register_address = "XX省XX市XX区XX县XX工业区XX食品生产加工#{count}区"
  company.valid_for = "20#{count}-13-32"
  company.save
end
