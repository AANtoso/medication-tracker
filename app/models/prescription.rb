class Prescription < ApplicationRecord

    belongs_to :patient
    belongs_to :provider
    accepts_nested_attributes_for :provider
end
