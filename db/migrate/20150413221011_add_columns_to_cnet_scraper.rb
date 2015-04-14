class AddColumnsToCnetScraper < ActiveRecord::Migration
  def change
    add_column :cnet_scrapers, :header, :string
    add_column :cnet_scrapers, :image, :string
    add_column :cnet_scrapers, :detail, :string
    add_column :cnet_scrapers, :link, :string
  end
end
