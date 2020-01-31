class AddInformationToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :information, :string
  end
end
