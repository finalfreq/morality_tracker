class UsersController < ApplicationController
  
  helper_method :sort_activity_column, :sort_activities_direction, :sort_items_direction, :sort_item_column


  def index
    @users = User.all
  end

  def show
    @activities = current_user.activities.order(sort_activity_column + " " + sort_activities_direction)
    @item = Item.new
    @items = current_user.items.order(sort_item_column + " " + sort_items_direction)
    @activity = Activity.new
    activities = Activity.search(params[:search])
    @results = activities.paginate(per_page: 6, page: params[:page])
  end

  private

  def sort_activity_column
    Activity.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end


  def sort_activities_direction
    %w[asc desc].include?(params[:activities_direction]) ? params[:activities_direction] : "asc"
  end
  def sort_items_direction
    %w[asc desc].include?(params[:items_direction]) ? params[:items_direction] : "asc"
  end

  def sort_item_column
    Item.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

end
