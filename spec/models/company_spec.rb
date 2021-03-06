require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:company)do
    Company.new(name: "derpcorp")
  end

  context "designation" do
    it 'is valid' do
      expect(company).to be_valid
    end

    it 'is invalid without a company name' do
      company.name = nil
      expect(company).not_to be_valid
    end

    it "converts to a string with name" do
      expect(company.to_s).to eq "derpcorp"
    end
  end

  context "telephone" do
    it 'has an array of phone numbers ' do
      company.phone_numbers.new(number: "451-5673")
      expect(company.phone_numbers.map(&:number)).to eq(["451-5673"])
    end
  end

end
