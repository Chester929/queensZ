class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :title

      t.belongs_to :variant, index: true
      t.belongs_to :document, index: true

      t.timestamps null: false
    end
  end
end
