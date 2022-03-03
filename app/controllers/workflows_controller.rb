class WorkflowsController < ApplicationController
  before_action :find_workflow, only: [:show]

  def index
    @workflows = Workflow.all
  end

  def new
    @workflow = Workflow.new

  end


  def create
    @workflow = Workflow.new(workflow_params)
    @workflow.user = current_user
    if @workflow.save!
      redirect_to workflow_path(@workflow), notice: 'Workflow was successfully added.'
    else
      render :new
    end
  end

  def show
    @workflow = Workflow.find(params[:id])
    @favourite = Favourite.new
  end

  def uploads
    @workflows = Workflow.all

  end

  private

  def workflow_params
    params.require(:workflow).permit(:title, :description, :walkthrough, :program, :loom_url)
  end

  def find_workflow
    @workflow = Workflow.find(params[:id])
  end
end
