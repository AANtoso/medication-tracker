class Provider < ApplicationRecord

    has_many :prescriptions
    has_many :patients, through: :prescriptions


    def self.search(search)
        if search.present?
            where('name LIKE ?', "%#{search}%")
        else
            self.all
        end
    end

end
