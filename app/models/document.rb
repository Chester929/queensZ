class Document < ActiveRecord::Base
  has_many :items, inverse_of: :document, validate: true, dependent: :destroy

  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :title
end
