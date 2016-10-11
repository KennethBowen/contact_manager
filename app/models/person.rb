class Person < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  def to_s
    "#{last_name}, #{first_name}"
  end

    include Contact
end
