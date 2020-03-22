class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.longtext :body
      t.string :youtube_url
      t.integer :user_id

      t.timestamps
    end
  end
end
