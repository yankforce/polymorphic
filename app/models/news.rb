class News < ActiveRecord::Base
  has_many :attachable_entities, as: :entity
  has_many :attachables, through: :attachable_entities, source: :attachable, source_type: Image 
end
