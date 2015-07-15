class ChangeJoinTableNames < ActiveRecord::Migration
  def change
    rename_table :users_actions, :actions_users
    rename_table :users_items, :items_users
  end
end
