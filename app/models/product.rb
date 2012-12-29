class Product < ActiveRecord::Base
  attr_accessible :company_address, :company_name, :health_function, :license_no, :name
end
