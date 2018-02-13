class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.text :name
      t.text :image

      t.timestamps
    end
  end
end
