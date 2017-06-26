class PostsController < ApplicationController
    def index#루트 페이지
        @post=Post.all
    end
    
    def show
        @post=Post.find(params[:id])
        @comments=@post.comments
        #where로도 할 수 있음
    end
    
    def new
    end
    
    def create
        post=Post.new
        post.title=params[:title]
        post.content=params[:content]
        post.save
        
        redirect_to '/'
    end
    
    def update
        post=Post.find(params[:post_id])
        post.title=params[:title]
        post.content=params[:content]
        post.save
        
        redirect_to '/'
    end
    
    def edit
        @post=Post.find(params[:post_id])
    end
    
    def destroy
        post=Post.find(params[:id])
        post.destroy
        
        redirect_to '/'
    end
end
