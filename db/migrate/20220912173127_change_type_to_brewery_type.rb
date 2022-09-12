class ChangeTypeToBreweryType < ActiveRecord::Migration[7.0]
  def change
    rename_column :pubs, :type, :brewery_type
  end
end
