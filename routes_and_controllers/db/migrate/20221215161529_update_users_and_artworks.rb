class UpdateUsersAndArtworks < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :username, unique: true
    add_index :artworks, [:artist_id, :title], unique: true
  end
end
