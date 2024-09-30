class Comment < ApplicationRecord
    belongs_to :project
    # TODO: customise validation message tailored to business domain
    validates :body, presence: true
end
