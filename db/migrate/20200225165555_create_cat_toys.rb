class CreateCatToys < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_toys do |t|
      t.string :toy_type
      t.string :name

      t.timestamps
    end
  end
end
