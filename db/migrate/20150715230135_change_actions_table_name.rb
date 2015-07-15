class ChangeActionsTableName < ActiveRecord::Migration
  def change
    rename_table :actions, :activities
    rename_table :actions_users, :activities_users
  end
end
