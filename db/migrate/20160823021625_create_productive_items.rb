class CreateProductiveItems < ActiveRecord::Migration[5.0]
  def change
    create_table :productive_items do |t|
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
