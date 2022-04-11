class PostsController < ApplicationController
  def show
    @id=params[:id]
      @post=Post.find_by(id:params[:id])
  end

  def edit
    @post=Post.find_by(id: params[:id])
  end
  def update
    @post=Post.find_by(id: params[:id])
    redirect_to("/posts/index")
    @post.content=params[:content]
    @post.save
  end
  def index
    @posts=Post.all
  end

  def new
  @post=Post.new
  end
    
      def create
        @posts = Post.new(post_params)
        case params[:commit]
        when "出勤" ; @posts.go = Time.now
        when "退勤" ; @posts.leav = Time.now
      end
        if @posts.save
          redirect_to 
        else
          render :new
        end  
      end 

      private
      def post_params
        params.permit(:go, :leav)
      end
      
 
end
