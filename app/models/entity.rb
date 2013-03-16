class Entity < ActiveRecord::Base
  has_many :host_project_participants
  has_many :projects, :through => :host_project_participants, :uniq => true
  
  has_many :annex1_project_participants
  has_many :projects, :through => :annex1_project_participants, :uniq => true
  
  has_many :designated_national_authorities
  has_many :projects, :through => :designated_national_authorities, :uniq => true
  
  has_many :designated_operational_entities
  has_many :projects, :through => :designated_operational_entities, :uniq => true
  
  has_many :consultants
  has_many :projects, :through => :consultants, :uniq => true
  attr_accessible :ent_title
end
