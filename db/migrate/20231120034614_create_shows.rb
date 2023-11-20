class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :season, null: true
      t.date :season_start, null: true
      t.date :season_end, null: true

      t.timestamps
    end
  end
end
