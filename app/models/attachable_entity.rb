class AttachableEntity < ActiveRecord::Base
  belongs_to :entity, polymorphic: true
  belongs_to :attachable, polymorphic: true
end
