class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messageposts
  has_many :pictures
  has_one  :form

  def get_sex
      sex = self.sex

      if sex == 1
        return "男"

      elsif sex == 2
        return "女"

      end
    end
end
