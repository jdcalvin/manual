class ChangeDataTypeForSummary < ActiveRecord::Migration
  def change
  	change_table :chapters do |t|
  		t.change :summary, :text
  	end
  end
end
