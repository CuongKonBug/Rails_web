class Truyen < ApplicationRecord
    def self.search(term)
   

        if term
          where('tentruyen LIKE ?', "%#{term}%")
        else
          all
        end
      end
      has_many :comments
end
