class Payment < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }

  belongs_to :group
  belongs_to :user, foreign_key: :author_id
end
