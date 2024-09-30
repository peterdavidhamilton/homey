class ProjectsController < ApplicationController
    helper_method :project, :comment

    def index
    end

    def show
    end

    def update
      if project.update(status: status)
        redirect_to project, notice: "Project updated."
      else
        render :show
      end
    end

    private

    # @return [ActionController::Parameters]
    def project_params
      params.require(:project).permit(:status)
    end

    # @return [Integer]
    def status
        project_params[:status].to_i
    end

    # @return [Project]
    def project
        Project.find(params[:id])
    end

    # @return [Comment]
    def comment
        Comment.new
    end
end
