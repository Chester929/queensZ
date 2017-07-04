class Item < ActiveRecord::Base
  belongs_to :document
  belongs_to :variant

  validates_presence_of :title, :variant_id
end

