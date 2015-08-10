class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
