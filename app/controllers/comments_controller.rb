class CommentsController < ApplicationController
    def create
        if comment.save
            redirect_to project, notice: "Comment posted."
        else
            redirect_to project, alert: "Error adding comment."
        end
    end

    private

    # @return [ActionController::Parameters]
    def comment_params
        params.require(:comment).permit(:body)
    end

    # @return [Project]
    def project
        Project.find(params[:project_id])
    end

    # @return [Comment]
    def comment
        project.comments.build(comment_params)
    end
end
