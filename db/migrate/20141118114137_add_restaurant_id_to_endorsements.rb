class AddRestaurantIdToEndorsements < ActiveRecord::Migration
  def change
    add_reference :endorsements, :restaurant, index: true
  end
end
