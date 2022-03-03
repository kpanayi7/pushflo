class FavouritesController < ApplicationController
    before_action :find_favourite, only: %i[show]

  def index
    @favourites = Favourite.where(user: current_user)
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def new
    @workflow = Workflow.find(params[:workflow_id])
    @favourite = Favourite.new

  end

  def create
    @favourite = Favourite.new(favourite_params)

    # @favourite.workflow = Workflow.find(params[:workflow_id])
    # @favourite.user = current_user
    if @favourite.save
      redirect_to favourited_path(current_user), notice: "Favourite Saved"
    else
         render :new
    end
  end

  private

  def find_favourite
    @favourite = Favourite.find(params[:id])
  end

  def favourite_params
    params.require(:favourite).permit(:workflow_id,:user_id)
  end

end
