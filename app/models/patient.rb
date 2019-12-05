class Patient < ApplicationRecord
    belongs_to :provider
    has_many :prescriptions
    has_many :medications, through: :prescriptions
end
