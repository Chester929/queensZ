class Product < ActiveRecord::Base
  has_many :variants, inverse_of: :product, validate: true, dependent: :destroy

  accepts_nested_attributes_for :variants, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :title
end
