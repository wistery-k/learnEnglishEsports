class CreateVideoContents < ActiveRecord::Migration
  def change
    create_table :video_contents do |t|
      t.string :videoUrl
      t.string :createdBy
      t.text :script
      t.datetime :lastUpdated

      t.timestamps null: false
    end
  end
end
