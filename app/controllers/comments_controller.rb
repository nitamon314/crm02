class CommentsController < ApplicationController
  def index
    
  end

  def show

  end
  
  def new

  end
  
  def create
      
    @comment = Comment.new(comment_params)
    
    if @comment.valid? 
      @comment.save
      redirect_to customer_url(@comment.customer_id)
    else
      flash[:alert] = @comment.errors.full_messages
      redirect_to customers_path
    end
  
    
  end
  
  def edit

  end
  
  def update
    
  end
  
  def destroy
      @comment = Comment.find(params[:id])
      customer_id = @comment.customer_id
      @comment.destroy
      redirect_to customer_url(customer_id)
  end
  
  private
  
  def comment_params
      params.require(:comment).permit(:body, :customer_id)
  end

end
