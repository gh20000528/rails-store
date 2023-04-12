class Store < ApplicationRecord
    validates :title, presence: true
    validates :address, presence: true

    has_many :comments, dependent: :destroy 


    acts_as_list

    def self.search(keyword)
        where("title like ?", "%#{keyword}%")
    end 


end
