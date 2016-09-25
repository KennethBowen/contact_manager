require 'rails_helper'

RSpec.describe EmailAddress, type: :model do
  let(:address) do
    EmailAddress.new(address: 'example@gmail.com', contact_id: 1, contact_type: "company")
  end

  it 'is valid' do
    expect(address).to be_valid
  end

  it "is invalid without an email address" do
    address = EmailAddress.new(address: nil)
    expect(address).not_to be_valid
  end

  it "is invalid without a contact id" do
    address = EmailAddress.new(address: 'example@gmail.com', contact_id: nil, contact_type: "nil" )
    expect(address).not_to be_valid
  end


end
