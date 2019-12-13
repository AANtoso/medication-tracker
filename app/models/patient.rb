class Patient < ApplicationRecord
    has_secure_password
    has_many :prescriptions
    has_many :providers, through: :prescriptions

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true

    def self.from_omniauth(auth)
        # binding.pry
        where(email: auth.info.email).first_or_initialize do |patient|
            patient.username = auth.info.name
            patient.email = auth.info.email
            patient.password = SecureRandom.hex
        end
    end
end
