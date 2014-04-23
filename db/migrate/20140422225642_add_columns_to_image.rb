class AddColumnsToImage < ActiveRecord::Migration
  def change
    add_column :images, :alt, :string, default: ""
    add_column :images, :hint, :string, default: ""
  end
end
