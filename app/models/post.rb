class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  has_many :comments
  belongs_to :user

  validate :content, :presence => true
  validate :title, :presence => true
  validate :user_id, :presence => true

end
