class ChangeDataTypeForTableColumn < ActiveRecord::Migration
  def change
  	change_table :chapters do |t|
  		t.change :content, :text
  	end
  end
end
