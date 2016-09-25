class EmailAddress < ApplicationRecord
  validates :address, :person_id, presence: true

  belongs_to :contact, polymorphic: true
end
