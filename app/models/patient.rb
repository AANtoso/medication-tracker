class Patient < ApplicationRecord
    has_secure_password
    has_many :prescriptions
    has_many :medications, through: :prescriptions
    has many :providers, through: :prescriptions

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
end
