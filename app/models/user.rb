class User < ApplicationRecord
  has_one :address, dependent: :destroy

  validates :first_name,:last_name, presence: true,
                    length: { minimum: 4 }

  validates :age, presence: true,
          length: { minimum: 1 }


end
