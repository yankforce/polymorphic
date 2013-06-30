class Image < ActiveRecord::Base
  has_many :attachable_entities, as: :attachable
  has_many :entities, through: :attachable_entities, source: :entity, source_type: Article 
end
