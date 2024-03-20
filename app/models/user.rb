class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: {user: 0, admin: 1, moderator: 2}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable
  

  has_many :articles, dependent: :destroy
has_one_attached :avatar
  has_many :comments, dependent: :destroy
  validates :firstName, presence: true # Example validation, adjust as needed



  

end
