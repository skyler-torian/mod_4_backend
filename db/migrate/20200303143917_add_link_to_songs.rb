class AddLinkToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :link, :string
  end
end
