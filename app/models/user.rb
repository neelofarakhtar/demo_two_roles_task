class User < ApplicationRecord
  rolify
  has_many :students, dependent: :destroy
  has_many :masters, dependent: :destroy
  has_many :classrooms, dependent: :destroy
  has_many :subjects, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # enum role: [:admin, :student, :master]
  before_save :set_default_roles

  def set_default_roles
    # debugger
     role = Role.find(self.role).name.parameterize.underscore.to_sym 
     self.add_role(role)
  end
  
enum status: {
    rejected: 0,
    accepted: 1     
  }


end
