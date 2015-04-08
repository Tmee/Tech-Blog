class Article < ActiveRecord::Base
  scope :active, -> { where(active: true) }
end
