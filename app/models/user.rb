class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :images
    accepts_nested_attributes_for :images, :allow_destroy => true


    def funky_method  
     "#{self.email}"  
    end
end
