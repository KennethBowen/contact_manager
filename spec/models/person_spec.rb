require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) do
      Person.new(first_name: 'Alice', last_name: 'Smith')
  end

  it "is invalid without a firstname" do
    person = Person.new(first_name: nil )
    expect(person).not_to be_valid
  end

  it "is invalid without a lastname" do
    person = Person.new(first_name: 'Alice', last_name: nil )
    expect(person).not_to be_valid
  end

  it "converts to a string with last name, first name" do
    expect(person.to_s).to eq "Smith, Alice"
  end

  it 'is valid' do
    expect(person).to be_valid
  end

  it 'responds with its created phone numbers' do
    person.phone_numbers.build(number: '333-4445')
    expect(person.phone_numbers.map(&:number)).to eq(['333-4445'])
  end

  it 'responds with its created phone numbers' do
    person.email_addresses.build(address: 'derp@example.com')
    expect(person.email_addresses.map(&:address)).to eq(['derp@example.com'])
  end
end
