class CreateAddCityColumnToListings < ActiveRecord::Migration[5.2]
  def change
    create_table :add_city_column_to_listings do |t|

      t.timestamps
    end
  end
end
