class CommentsController < ApplicationController

  def new
    @entry = Entry.find( params[:entry_id] )
    @comment = Comment.new
  end

  def create
    @entry = Entry.find ( params[:entry_id])
    @comment = @entry.comments.new(comment_params)
    if @comment.save
      redirect_to @entry
    else
      render :new
    end
  end

  def edit
    @entry = Entry.find(params[:entry_id])
    @comment = @entry.comments.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:entry_id])
    @comment = @entry.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to @entry
    else
      render :edit
    end
  end

  def destroy
  end



  # post '/entry/:id/comment' do
  #   id = params[:id]
  #   detail = params[:detail]
  #   entry = Entry.find(id.to_i)
  #   entry.comments.create(detail: detail)
  #   redirect "/entry/#{entry.id}"
  # end
  #
  # get '/comment/:id/edit' do
  #   @comment = Comment.find(params[:id])
  #   erb :edit_comment
  # end
  #
  # post '/comment/:id/edit' do
  #   comment = Comment.find(params[:id])
  #   comment.detail = params[:detail]
  #   comment.save
  #   redirect "entry/%{comment.entry.id}"
  # end
  #

  private
  def comment_params
    params.require(:comment).permit(:detail)
  end


end
