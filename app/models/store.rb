class Store < ApplicationRecord
    validates :title, presence: true
    validates :address, presence: true
    
    def self.search(keyword)
        where("title like ?", "%#{keyword}%")
    end 


end
