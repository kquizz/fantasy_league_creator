class AddUSerReferenceToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :created_by, foreign_key: { to_table: :users }
    add_reference :contestants, :created_by, foreign_key: { to_table: :users }
  end
end
