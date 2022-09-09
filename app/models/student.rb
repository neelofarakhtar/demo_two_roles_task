class Student < ApplicationRecord
  belongs_to :user
  has_many :subjects, dependent: :destroy
  has_many :masters, dependent: :destroy
end
