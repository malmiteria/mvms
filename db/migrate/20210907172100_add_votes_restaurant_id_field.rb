class AddVotesRestaurantIdField < ActiveRecord::Migration
  def change
    add_column :votes, :restaurant_id, :integer

  end
end
