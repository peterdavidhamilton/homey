require 'rails_helper'

RSpec.describe 'Updating project status', type: :request do
    let!(:project) { create :project }

    describe 'PATCH /projects/:id' do
        let(:update_status) do
            patch project_path(project), params: {
                id: project.id,
                project: { status: 1 }
            }
        end

        it 'is successful' do
            expect { update_status }.to change { project.reload.status }.to('in_progress')
            expect(response).to redirect_to project_path(project)
            follow_redirect!
            expect(response.body).to include('notice: Project updated.')
            expect(response.body).to include('In Progress')
        end
    end
end
