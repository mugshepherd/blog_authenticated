class EntriesController < ApplicationController

  def index
      @entries = Entry.all
  end

  def show
      @entry = Entry.find(params[:id].to_i)
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @entry
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:id].to_i)
  end

  def update
    @entry = Entry.find( params[:id])
    if @entry.update(entry_params)
      redirect_to @entry
    else
      render :edit
    end
  end

  def destroy
    @entry = Entry.find( params[:id] )
    @entry.destroy
    redirect_to entries_path (@entry)
  end

end

private
  def entry_params
    params.require(:entry).permit(:title, :detail)
  end
