class AddLinkColumnToListing < ActiveRecord::Migration
  def change
    add_column :listings, :link, :text
  end
end
