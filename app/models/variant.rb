class Variant < ActiveRecord::Base
  has_many :items
  belongs_to :product

  validates_presence_of :title
end
