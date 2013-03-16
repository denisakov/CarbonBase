class Methodology < ActiveRecord::Base
  has_and_belongs_to_many :projects, :join_table => :pr_meth
  attr_accessible :meth_active, :meth_number, :meth_title, :meth_version
end
