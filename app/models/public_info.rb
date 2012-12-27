class PublicInfo < ActiveRecord::Base
  attr_accessible :content, :file_number, :index_number, :organ, :title, :info_type
end
