class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by_id(params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "Post successfully edited"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end
  
  def create
    @post = Post.new(content: params[:content])
    if @post.save
      flash[:notice] = "Post successfully created"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
  
  def destroy
    @post = Post.find_by_id(params[:id])
    if @post.destroy
      flash[:notice] = "Post successfully deleted"
      redirect_to("/posts/index")
    else
      render("post/:id/show")
    end
  end
end
