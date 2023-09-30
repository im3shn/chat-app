class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :messages, dependent: :destroy
  has_many :conversations, foreign_key: :sender_id
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  def self.full_name(current_user="")
  	if current_user.present?
	  current_user.first_name + " " + current_user.last_name
	end
  end
end
