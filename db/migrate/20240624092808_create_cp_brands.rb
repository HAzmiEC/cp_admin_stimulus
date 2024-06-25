class CreateCpBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :cp_brands do |t|
      t.string :name
      t.string :address
      t.string :website
      t.text   :categories
      t.timestamps
    end
  end
end
