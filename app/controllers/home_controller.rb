class HomeController<ApplicationController
  helper_method :sort_action_column, :sort_direction


  def index
    actions = Action.search(params[:search]).order(sort_action_column + " " + sort_direction)
    items = Item.search(params[:search]).order(sort_item_column + " " + sort_direction)
    action_items = actions + items

    @results = action_items.paginate(per_page: 5, page: params[:page])
  end

  private

  def sort_action_column
    Action.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_item_column
    Item.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end


  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
