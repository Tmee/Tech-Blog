class CreateCnetScrapers < ActiveRecord::Migration
  def change
    create_table :cnet_scrapers do |t|

      t.timestamps null: false
    end
  end
end
