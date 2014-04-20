class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :section_title
      t.string :section_number

      t.timestamps
    end
  end
end