class Fixjointables < ActiveRecord::Migration
  def change
    drop_table :user_actions
    drop_table :user_items

    create_table :users_actions do |t|
    t.belongs_to :user, index: true
    t.belongs_to :action, index: true
    end

    create_table :users_items do |t|
      t.belongs_to :user, index: true
      t.belongs_to :item, index: true
    end
  end
end
