class DeleteLastUpdated < ActiveRecord::Migration
  def change
    remove_column :video_contents, :lastUpdated
  end
end
