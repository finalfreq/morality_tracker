class UsersController < ApplicationController

  helper_method :sort_action_column, :sort_direction


  def index
    @users = User.all
  end
  
  private

  def sort_action_column
    Action.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
end
