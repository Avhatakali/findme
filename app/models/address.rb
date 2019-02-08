class Address < ApplicationRecord
  belongs_to :user

  validates :number,:street, presence: true,
                    length: { minimum: 4 }

  validates :city, :suburb, presence: true,
          length: { minimum: 2 }
          
end
