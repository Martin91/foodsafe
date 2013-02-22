class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, :dependent => :delete_all
  has_many :comments, :dependent => :delete_all

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :name, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validate :email, :presence => true, :uniqueness => true
  validate :password, :presence => true
  validate :name, :presence => true
end
