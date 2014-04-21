class AddSummaryToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :summary, :string
  end
end
