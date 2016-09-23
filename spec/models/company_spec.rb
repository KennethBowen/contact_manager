require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:company) do
    Company.new( company: 'derpcorp' )
  end

  it 'is valid' do
    expect(company).to be_valid
  end



end
