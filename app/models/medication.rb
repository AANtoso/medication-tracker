class Medication < ApplicationRecord

    has_many :prescriptions
    has_many :patients, through: :presctiptions
    has_many :providers, through: :prescriptions
    
end
