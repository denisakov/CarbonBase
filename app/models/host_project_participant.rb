class HostProjectParticipant < ActiveRecord::Base
  belongs_to :entity
  belongs_to :project
  
  attr_accessible :entity_id, :project_id
end
