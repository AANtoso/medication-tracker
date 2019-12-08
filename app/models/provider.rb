class Provider < ApplicationRecord

    has_many :prescriptions
    has_many :patients, through: :prescriptions
    has_many :medications, through: :prescriptions

end
