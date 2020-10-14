class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :name
      t.integer :duration
      t.integer :product_id      
      t.integer :routine_id
      t.timestamps
    end
  end
end
