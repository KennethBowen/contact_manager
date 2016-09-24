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
      name = Company.new(name: nil)
      expect(company).not_to be_valid
    end
  end

end
