class PostsController < ApplicationController
  def index
    @posts = Post.where(customer_id: current_customer.id).order(created_at: :desc)
  end

  def show
    @customer = current_customer
    @post = Post.find(params[:id])
  end


  def create
    @post = current_customer.posts.build(post_params)
    tags = Vision.get_image_data(post_params[:image])
    @post.status = false if params[:commit] == "下書き"
    if @post.save
      tags.each do |tag|
        @post.tags.create(name: tag)
      end
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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
  end

  private

  def post_params
    params.require(:post).permit(:name, :explanation, :image)
  end
end
