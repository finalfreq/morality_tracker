class ItemsController < ApplicationController

  def new
    @item = Item.new
    @items = Item.search(params[:search])
    @results = @items.paginate(per_page: 8, page: params[:page])
    @user = current_user
  end

  def create
    @item = Item.find_or_create_by(item_params)
    current_user.items.push(@item)
    if @item.save
      redirect_to current_user, notice: 'Successfully added'
    else
      render :new, alert: "error adding item"
    end
  end

  private
    def item_params

      params.require(:item).permit(:name, :morality)
    end
end
