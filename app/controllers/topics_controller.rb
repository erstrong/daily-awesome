class TopicsController < ApplicationController
  def index
    @topics = Topic.currently_visible
  end

  def admin
    @topics = Topic.upcoming
  end

  def show
    @topic = Topic.find(params[:id])
    @entries = current_user.entries.where(topic: @topic)
    @entry = Entry.new
  end

  def new
    @topic = Topic.new
    authorize @topic
  end

  def create
    @topic = Topic.new(topic_params)
    authorize @topic
    if @topic.save
      flash[:notice] = "Topic was saved."
      redirect_to @topic
    else
      flash[:error] = "Error creating topic."
      render :new  
    end
  end

  def edit
    @topic = Topic.find(params[:id])
    #authorize @topic
  end

  def update
    @topic = Topic.find(params[:id])
    #authorize @topic
    if @topic.update_attributes(topic_params)
      flash[:notice] = "Topic saved."
      redirect_to @topic
    else
      flash[:error] = "Error saving topic."
      render :edit
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :prompt, :category, :display_date)
  end

end
