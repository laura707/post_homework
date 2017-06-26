class CommentsController < ApplicationController
    def create
        comment=Comment.new
        comment.content=params[:comment_content]
        comment.post_id=params[:post_id]
        comment.save
        
        redirect_to :back
    end
    
    def destroy
        comment=Comment.find(params[:comment_id])
        comment.destroy
        #게시글과 함께 댓글도 지우기하려면 model에서 코드 추가해줄 것
        
        redirect_to :back
    end
end
