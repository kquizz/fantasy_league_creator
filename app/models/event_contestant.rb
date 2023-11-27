class EventContestant < ApplicationRecord
  belongs_to :event
  belongs_to :contestant
end
