class AddimageUrlToUser < ActiveRecord::Migration
  def change
    add_column :user, :image_url, :text
  end
end
