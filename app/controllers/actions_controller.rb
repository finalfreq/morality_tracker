class ActionsController<ApplicationController
  def index
    @actions= Action.search(params[:search]).order(sort_action_column + " " + sort_direction).paginate(per_page: 10, page: params[:page])
  end

  private

  def sort_action_column
    Action.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
