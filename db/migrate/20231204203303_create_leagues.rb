class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.references :commissioner, null: false, foreign_key: { to_table: :users }
      t.belongs_to :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
