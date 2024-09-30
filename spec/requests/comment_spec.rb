require 'rails_helper'

RSpec.describe 'Posting comment', type: :request do
    let!(:project) { create :project }

    describe 'POST /projects/:project_id/comments' do
        let(:post_comment) do
            post project_comments_path(project), params: {
                project_id: project.id,
                comment: { body: body }
            }
        end

        context 'when valid' do
            let(:body) { 'hello world' }

            it 'is successful' do
                expect { post_comment }.to change { project.reload.comments.size }.from(0).to(1)
                expect(response).to redirect_to project_path(project)
                follow_redirect!
                expect(response.body).to include('Comment posted.')
            end
        end

        context 'when invalid' do
            let(:body) { '' }

            it 'is rejected' do
                expect { post_comment }.to change { project.reload.comments.size }.by(0)
                expect(response).to redirect_to project_path(project)
                follow_redirect!
                expect(response.body).to include('Error adding comment.')
            end
        end
    end
end
