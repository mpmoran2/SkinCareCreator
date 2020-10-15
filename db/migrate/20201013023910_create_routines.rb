class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.integer :user_id
      t.string :name
      t.string :skintype
      #t.text :notes
      t.timestamps
    end
  end
end
