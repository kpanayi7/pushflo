class FavouritesController < ApplicationController
    before_action :find_favourite, only: %i[show]

  def index
    @favourites = favourite.where(user: current_user)
  end

  def show
    @favourite = favourite.find(params[:id])
  end

  def new
    @workflow = Workflow.find(params[:workflow_id])
    @favourite = Favourite.new

  end

  def create
    @favourite = favourite.new(favourite_params)
    @favourite.workflow = Workflow.find(params[:workflow_id])
    @favourite.user = current_user
    if @favourite.save
      redirect_to favourites_path, notice: "Favourite Saved"
    else
      render workflows/show
    end
  end

  private

  def find_favourite
    @favourite = favourite.find(params[:id])
  end

  def favourite_params
    params.require(:favourite).permit(:workflow_id)
  end

end
