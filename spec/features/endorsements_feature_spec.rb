require 'rails_helper'

describe 'endorsing reviews' do

  describe 'endorsing reviews' do

    before do
      kfc = Restaurant.create(name: 'KFC')
      kfc.reviews.create(rating: 3, thoughts: 'It was an abomination')
    end

    it 'a user can endorse a review, whicht updates the review endorsement count' do
      visit '/restaurants'
      click_link 'Endorse KFC'
      expect(page).to have_content('1 endorsment')
    end
  end

end
