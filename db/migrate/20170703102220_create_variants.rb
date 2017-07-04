class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|

      t.string :title

      t.belongs_to :product, index: true

      t.timestamps null: false
    end
  end
end
