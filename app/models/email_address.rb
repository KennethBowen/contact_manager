class EmailAddress < ApplicationRecord
  validates :address, presence: true
end
