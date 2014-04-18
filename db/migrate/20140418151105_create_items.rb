class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :store
      t.references :user, index: true

      t.timestamps
    end
  end
end
