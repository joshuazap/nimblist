class ItemsController < ApplicationController

  def index

  end

  def days_left
    7 - (DateTime.now.to_date - created_at.to_date).to_i
  end

  def show

  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)

    if @item.save
      flash[:notice] = "Item was saved."
    else
      flash[:error] = "There was an error saving the item. Please try again."
    end

    respond_to do |format|
      format.html { redirect_to items_path }
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "To-do was deleted."
    else
      flash[:notice] = "There was a problem deleting the to-do."
    end

    respond_to do |format|
      format.html { redirect_to items_path }
      format.js
    end
  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end