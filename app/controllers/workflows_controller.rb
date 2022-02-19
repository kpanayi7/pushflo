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
  end

  def show
    @workflow = Workflow.find(params[:id])
    @favourite = Favourite.new
  end

  private

  def workflow_params
    params.require(:list).permit(:title, :description, :walkthrough, :program, :video)
  end

  def find_workflow
    @workflow = Workflow.find(params[:id])
  end
end
