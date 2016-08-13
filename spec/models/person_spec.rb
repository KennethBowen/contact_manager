require 'rails_helper'

RSpec.describe Person, type: :model do
  it "is invalid without a firstname" do
    person = Person.new(first_name: nil)
    expect(person).not_to be_valid
  end

  it "is invalid without a lastname" do
    person = Person.new(first_name: 'bob', last_name: nil)
    expect(person).not_to be_valid
  end
end
