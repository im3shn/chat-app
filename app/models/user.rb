class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :conversations, foreign_key: :sender_id

  def self.full_name(current_user="")
  	if current_user.present?
	  current_user.first_name + " " + current_user.last_name
	end
  end
end
