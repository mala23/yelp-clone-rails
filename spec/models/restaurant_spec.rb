require 'spec_helper'

RSpec.describe Restaurant, :type => :model do
  it 'is valid with a name shorter then three characters' do
    restaurant = Restaurant.new(name: 'kf')
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end
end
