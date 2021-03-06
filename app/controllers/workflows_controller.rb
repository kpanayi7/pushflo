class WorkflowsController < ApplicationController
  before_action :find_workflow, only: [:show, :edit]

  def index
    @workflows = Workflow.all.where(:approved => true ).order("created_at DESC")
    @workflows = @workflows.paginate(page: params[:page], per_page: 9)
  end

  def index_by_program
    if params[:filter]
      @workflows = Workflow.where(:program => params[:filter], :approved => true )
      @workflows =  @workflows.paginate(page: params[:page], per_page: 9)
    else
      @workflows = Workflow.all
      @workflows =  @workflows.paginate(page: params[:page], per_page: 9)
    end
  end

  def index_by_user
    if params[:filter]
      @user = User.where(user_name: params[:filter])
      @workflows = Workflow.where(:user_id => @user, :approved => true )
      @workflows =  @workflows.paginate(page: params[:page], per_page: 9)
    else
      @workflows = Workflow.all
      @workflows =  @workflows.paginate(page: params[:page], per_page: 9)
    end
  end

  def index_by_unapproved
      @workflows = Workflow.where(:approved => true )
      @workflows =  @workflows.paginate(page: params[:page], per_page: 9)
   
  end


  def index_by_user_unapproved
      @user = User.where(user_name: params[:filter])
      @workflows = Workflow.where(:user_id => @user, :approved => true )
      @workflows =  @workflows.paginate(page: params[:page], per_page: 9)
    
  end


  def new
    @workflow = Workflow.new
  end

  def create
    @workflow = Workflow.new(workflow_params)
    @workflow.user = current_user
    if @workflow.update(workflow_params)
      redirect_to workflow_path(@workflow), notice: '🎉 Workflow was successfully added'
    else
      render :new
    end
  end

  def edit
    @workflow_id = Workflow.find(params[:id])
  end

  def update
    @user = current_user
    @workflow = Workflow.find(params[:id])
    if @workflow.update(workflow_params)
      redirect_to workflow_path(@workflow), notice: '🎉 Workflow was successfully edited'
    else
      render :edit
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
    params.require(:workflow).permit(:title, :description, :walkthrough, :content, :program, :loom_url, :approved, :SDprofile, :SDimage)
  end

  def update_attributes
    params.require(:workflow).permit(:title, :description, :walkthrough, :content, :program, :loom_url, :approved, :SDprofile, :SDimage)
  end

  def find_workflow
    @workflow = Workflow.find(params[:id])
  end
end
