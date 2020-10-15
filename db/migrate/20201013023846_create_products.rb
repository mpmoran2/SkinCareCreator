class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :brand
      t.string :name
      t.string :use_for
      t.string :skintype
      #t.text :notes
      t.timestamps
    end
  end
end
