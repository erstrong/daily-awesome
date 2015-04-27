class EntriesController < ApplicationController
  def index
    @entries = current_user.entries.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = current_user.entries.new(entry_params)
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

  end

  def update
    @entry = Entry.find(params[:id])

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
    params.require(:entry).permit(:body, :user, :topic)
  end
end
