# TODO: extract state history into own data object
class Project < ApplicationRecord
    has_many :comments, dependent: :destroy

    enum status: %i[not_started in_progress completed]

    validates :status, presence: true

    before_update :log_status_change

    # TODO: move to decorator layer
    # @return [String]
    def name
        "project-#{id}"
    end

    # TODO: move to decorator layer
    # @return [String]
    def status_tag
        I18n.t("status.#{status}")
    end

    # TODO: move to decorator layer
    # @return [String]
    def colour
        case status
        when "not_started" then "blue"
        when "in_progress" then "red"
        when "completed" then "green"
        else "grey"
        end
    end

    private

    # @return [Array, String]
    def log_status_change
        data << status
    end
end
