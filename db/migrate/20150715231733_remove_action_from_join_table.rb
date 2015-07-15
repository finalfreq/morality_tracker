class RemoveActionFromJoinTable < ActiveRecord::Migration
  def change
    remove_column :activities_users, :action_id
    add_column :activities_users, :activity_id, :integer
  end
end
