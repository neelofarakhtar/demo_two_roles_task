class Master < ApplicationRecord
  belongs_to :user
  has_many :students, dependent: :destroy
end
