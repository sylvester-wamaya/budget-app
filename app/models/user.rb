class User < ApplicationRecord
    validates :name, presence: true
    has_many :groups, dependent: :destroy
    has_many :payments, foreign_key: :author_id, dependent: :destroy
end
