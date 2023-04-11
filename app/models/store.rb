class Store < ApplicationRecord
    validates :title, presence: true
    validates :address, presence: true

    has_many :comments, dependent: :destroy
    
    def self.search(keyword)
        where("title like ?", "%#{keyword}%")
    end 


end
