class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :post

  attr_accessible :body, :user_id, :post_id
  validate :body, :presence => true
  validate :user_id, :presence => true
  validate :post_id, :presence => true
end
