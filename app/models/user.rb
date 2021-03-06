class User < ActiveRecord::Base
  acts_as_paranoid

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :birth_date, :remember_me, :name, :avatar
  # attr_accessible :title, :body
  has_attached_file :avatar, :styles => { :medium => "300x300#", :thumb => "36x36#" }
end
