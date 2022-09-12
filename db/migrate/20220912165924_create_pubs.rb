class CreatePubs < ActiveRecord::Migration[7.0]
  def change
    create_table :pubs do |t|
      t.string :address
      t.string :website
      t.string :type
      t.string :brewery_name
      t.string :state
      t.string :state_breweries

      t.timestamps
    end
  end
end
