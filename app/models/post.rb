class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  has_many :comments, :as => :commentable
  belongs_to :users

  validate :content, :presence => true
  validate :title, :presence => true
  validate :user_id, :presence => true

  def user
    User.find self.user_id 
  end
end
