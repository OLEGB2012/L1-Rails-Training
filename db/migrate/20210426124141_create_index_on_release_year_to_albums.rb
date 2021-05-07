class CreateIndexOnReleaseYearToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_index :albums, [:release_year]
  end
end
