class BasicPublication < ActiveRecord::Base
  # relations
  belongs_to :profile
  has_one :event_publication
  accepts_nested_attributes_for :event_publication
  
  enum publication_type: [ :evento, :artigo, :capitulo ]
  
end
