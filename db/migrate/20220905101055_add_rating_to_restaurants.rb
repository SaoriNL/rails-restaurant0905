class AddRatingToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :rating, :integer
  end
end
