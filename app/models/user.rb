class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :conversations, foreign_key: :sender_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



end
