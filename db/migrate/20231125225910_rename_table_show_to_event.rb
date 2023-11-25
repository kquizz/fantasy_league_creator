class RenameTableShowToEvent < ActiveRecord::Migration[7.0]
  def change
    rename_table :shows, :events
  end
end
