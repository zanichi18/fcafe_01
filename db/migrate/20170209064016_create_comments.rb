class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :shop, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
