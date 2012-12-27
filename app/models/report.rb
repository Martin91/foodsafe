class Report < ActiveRecord::Base
  attr_accessible :content, :no, :status, :title, :user_email, :user_name, :user_phone

end
