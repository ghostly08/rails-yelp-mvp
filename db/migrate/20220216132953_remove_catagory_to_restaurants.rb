class RemoveCatagoryToRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :catagory
  end
end
