class Prescription < ApplicationRecord

    belongs_to :patient
    belongs_to :provider
    accepts_nested_attributes_for :provider
    
    scope :called_in, -> {where(called_in: true)}
    
    def provider_attributes=(provider)
        self.provider = Provider.find_or_create_by(name: provider[:name])
        self.provider.update(provider)
    end
end
