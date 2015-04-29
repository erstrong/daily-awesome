class EntriesController < ApplicationController
  def index
    @entries = current_user.entries.all
  end

  def show
    @entry = Entry.find(params[:id])
    authorize @entry
  end

  def new
    @entry = Entry.new
    authorize @entry
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @entry = current_user.entries.new(entry_params)
    @entry.topic = @topic
    authorize @entry
    if @entry.save
      flash[:notice] = "Entry was saved."
      redirect_to @entry
    else
      flash[:error] = "Error creating entry."
      render :new  
    end
  end


  def edit
    @entry = Entry.find(params[:id])
    authorize @entry
  end

  def update
    @entry = Entry.find(params[:id])
    authorize @entry
    if @entry.update_attributes(entry_params)
      flash[:notice] = "Entry saved."
      redirect_to @entry
    else
      flash[:error] = "Error saving entry."
      render :edit
    end
  end

  private
  
  def entry_params
    params.require(:entry).permit(:body, :public)
  end
  
end
