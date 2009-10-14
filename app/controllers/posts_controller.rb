class PostsController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]

  def index
    @posts = Post.all(:order => 'created_at desc')
  end

  def new
    @post = Post.new
    respond_to do |format|
      format.html {render :partial => "form", :locals => {:post => @post} if request.xhr?}
    end
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to "/"
    else
      render :action => "new"
    end
  end
end