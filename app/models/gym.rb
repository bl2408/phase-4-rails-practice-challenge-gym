class Gym < ApplicationRecord

    has_many :memberships, dependent: :destroy

    validates :name, presence: true
    validates :address, presence: true

end
