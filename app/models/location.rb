class Location < ActiveRecord::Base
  belongs_to :project
  attr_accessible :country, :ref, :lat, :lng, :project_id, :province, :region, :sub_region
end
