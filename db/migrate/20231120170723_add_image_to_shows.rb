class AddImageToShows < ActiveRecord::Migration[7.0]
  def change
    add_column :shows, :banner, :string
  end
end
