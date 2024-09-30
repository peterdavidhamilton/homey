require 'rails_helper'

RSpec.describe Project, type: :model do
  describe '.statuses' do
    specify do
      expect(described_class.statuses).to eq({
        "not_started" => 0,
        "in_progress" => 1,
        "completed" => 2
        })
    end
  end


  # TODO: move out of model into either view component or delegate to wrapper
  describe 'view layer attributes' do
    subject(:project) { create(:project) }

    it '#name' do
      expect(project.name).to eq 'project-1'
    end

    it '#status_tag' do
      expect(project.status_tag).to eq 'Not Started'
    end

    it '#colour' do
      expect(project.colour).to eq 'blue'
    end
  end
end
