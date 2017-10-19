class CreateShortenedUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :shortened_urls do |t|
      t.text :long_url
      t.text :short_url
      t.integer :user_id
      t.timestamps
    end
  end
end
