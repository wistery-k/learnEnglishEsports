class ChangeContentCreatedByFromStringToUser < ActiveRecord::Migration
  def change
    add_reference :video_contents, :user, :index => true
    remove_column :video_contents, :createdBy
  end
end
