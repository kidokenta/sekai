class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.text :action
      t.integer :status
      t.integer :post_id
      
      t.timestamps
    end
  end
end
