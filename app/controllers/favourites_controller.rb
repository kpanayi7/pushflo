class FavouritesController < ApplicationController
  before_action :find_favourite, only: %i[show]
  before_action :find_workflow, only: %i[new create]

  def index
    @favourites = Favourite.where(user: current_user).order("created_at DESC")
    @favourites =  @favourites.paginate(page: params[:page], per_page: 8)
  end

  def index_uploads
    @uploads = Workflow.where(user_id: current_user).order("created_at DESC")
    @uploads =  @uploads.paginate(page: params[:page], per_page: 8)
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new(favourite_params)

    # @favourite.workflow = Workflow.find(params[:workflow_id])
    # @favourite.user = current_user

    if @favourite.save
      @favourite.save!
      sleep(1.0)
      redirect_to workflow_path(@workflow)
    else
      render :new
    end
  end


  def destroy
  @favourite = Favourite.find(params[:id])
  @favourite.delete
    redirect_back(fallback_location: root_path)
  end

  private

  def find_favourite
    @favourite = Favourite.find(params[:id])
  end

  def find_workflow
    @workflow = Workflow.find(params["favourite"][:workflow_id])
  end

  def favourite_params
    params.require(:favourite).permit(:workflow_id,:user_id)
  end

end
