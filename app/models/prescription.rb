class Prescription < ApplicationRecord

    belongs_to :medication
    belongs_to :patient
    belongs_to :provider

end
