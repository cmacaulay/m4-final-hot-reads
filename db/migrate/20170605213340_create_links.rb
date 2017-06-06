class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :url
      t.integer :count, :default => 1
      t.boolean :hot, :default => false

      t.timestamps
    end
  end
end
