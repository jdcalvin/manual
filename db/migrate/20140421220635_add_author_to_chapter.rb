class AddAuthorToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :author, :string
  end
end
