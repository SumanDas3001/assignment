class User < ApplicationRecord
  acts_as_token_authenticatable
  # field :authentication_token, type: String
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :by_authentication_token, lambda{|authentication_token|where(["authentication_token=?", authentication_token])}
end
