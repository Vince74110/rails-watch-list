class AddImageUrlToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_column :bookmarks, :image_url, :string
  end
end
