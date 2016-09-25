class Company < ApplicationRecord
  validates :name, presence: true

  has_many :phone_numbers, as: :contact
  has_many :email_addresses

end
