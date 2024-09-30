require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) do
    described_class.new(body: body, project: project)
  end

  let(:project) { Project.new }

  describe 'validations' do
    context 'without a body' do
      let(:body) { nil }

      it { expect(comment).to_not be_valid }
    end

    context 'with a body' do
      let(:body) { 'Test' }

      it { expect(comment).to be_valid }
    end
  end
end
