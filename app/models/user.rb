class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable
  has_many :courses

  def to_s
    email
  end

  def userName 
      self.email.split(/@/).first
  end

end
