class BasicPublication < ActiveRecord::Base
  belongs_to :profile
  has_one :event_publication
  accepts_nested_attributes_for :event_publication
end
