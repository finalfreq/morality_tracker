class ActivitiesController<ApplicationController
  helper_method :sort_activity_column, :sort_direction

  def new
    @activity = Activity.new
    activities = Activity.search(params[:search])
    @results = activities.paginate(per_page: 8, page: params[:page])
  end

  def create
    @activity = Activity.find_or_create_by(activity_params)
    current_user.activities.push(@activity)
    if @activity.save
      redirect_to current_user, notice: 'Successfully added'
    else
      render :new, alert: "error adding activity"
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :morality)
  end
end
