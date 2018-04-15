class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :user_informations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def role_name
  	if role_id==0
  		'user'
  	else
  		'admin'
  	end
  end

  def admin?
    role_name == 'admin'
  end
end
