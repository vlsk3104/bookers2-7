class BookCommentsController < ApplicationController
 before_action :authenticate_user!
  def create
    @book = Book.find(params[:book_id])
    @book_comment = @book.book_comments.new(book_comment_params)
    @book_comment.user_id = current_user.id
    if @book_comment.save
      flash[:success] = "Comment was successfully created."
      render :index
    else
       @book_comments = BookComment.where(id: @book)
  end
end

  def destroy
    @book = Book.find(params[:book_id])
    @book_comment = current_user.book_comments.find_by(book_id: @book.id)
    if @book_comment.user != current_user
      redirect_back(fallback_location: root_path)
    end
    @book_comment.destroy
    render :index
  end

  private
  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end