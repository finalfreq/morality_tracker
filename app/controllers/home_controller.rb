class HomeController<ApplicationController
  
  before_action :authenticate_user!

  helper_method :sort_activity_column, :sort_item_column, :sort_direction


  def index
    activities = Activity.search(params[:search]).order(sort_activity_column + " " + sort_direction)
    items = Item.search(params[:search]).order(sort_item_column + " " + sort_direction)
    activity_items = activities + items

    @results = activity_items.paginate(per_page: 5, page: params[:page])
  end

  private

  def sort_activity_column

    Activity.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_item_column
    Item.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end


  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
