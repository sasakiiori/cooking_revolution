class PostsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @post = current_customer.posts.build(post_params)
    @post.status = false if params[:commit] == "下書き"
    if @post.save
      flash[:notice] = "success"
      redirect_to post_path(@post)
    else
      flash.now[:alert] = "failed"
      render 'homes/top'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def post_params
    params.require(:post).permit(:name, :explanation, :image)
  end
end
