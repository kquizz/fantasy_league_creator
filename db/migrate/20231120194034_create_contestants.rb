class CreateContestants < ActiveRecord::Migration[7.0]
  def change
    create_table :contestants do |t|
      t.string :name
      t.date :birthdate, null: true
      t.string :image, null: true
      t.date :arrival_date, null: true
      t.text :details, null: true

      t.timestamps
    end
  end
end
