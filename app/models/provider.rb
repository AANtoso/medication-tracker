class Provider < ApplicationRecord

    has_many :prescriptions
    has_many :patients, through: :presctiptions
    has_many :medications, through: :prescriptions

end
