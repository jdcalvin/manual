class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :chapter_title
      t.string :chapter_number
      t.references :section, index: true

      t.timestamps
    end
  end
end
