## Objective
demo how to use polymorphic with has_many through at both side

## core code relation

```ruby
class Article < ActiveRecord::Base
  has_many :attachable_entities, as: :entity
  has_many :attachables, through: :attachable_entities, source: :attachable, source_type: Image 
end

class AttachableEntity < ActiveRecord::Base
  belongs_to :entity, polymorphic: true
  belongs_to :attachable, polymorphic: true
end

class Image < ActiveRecord::Base
  has_many :attachable_entities, as: :attachable
  has_many :entities, through: :attachable_entities, source: :entity, source_type: Article 
end
```