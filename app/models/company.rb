class Company < ActiveRecord::Base
  attr_accessible :legal_person, :license_no, :license_project, :name, :produce_address, :register_address, :valid_for
end
