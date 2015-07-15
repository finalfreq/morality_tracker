class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :morality
      
      t.timestamps
    end
  end
end
