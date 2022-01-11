class Member < ApplicationRecord
    has_many :accounts, dependent: :destroy
end
