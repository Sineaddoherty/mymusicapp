class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :Song
      t.string :Singer
      t.text :Album
      t.integer :year

      t.timestamps
    end
  end
end
