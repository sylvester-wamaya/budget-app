class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  has_many :payments, dependent: :destroy
  belongs_to :user, foreign_key: :author_id
end
