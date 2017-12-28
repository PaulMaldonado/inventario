class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles
  validates :email, presence: true
  validates :password, presence: true, length: { in: 6..20 }
  validates :name, presence: true, uniqueness: true, length: { in: 6..15 }
end
