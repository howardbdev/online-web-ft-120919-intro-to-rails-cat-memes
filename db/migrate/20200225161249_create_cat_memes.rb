class CreateCatMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_memes do |t|
      t.string :title
      t.string :alt
      t.belongs_to :user, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
