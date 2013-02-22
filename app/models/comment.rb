class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :commentable, :polymorphic => true

  attr_accessible :content
  validate :content, :presence => true
end
