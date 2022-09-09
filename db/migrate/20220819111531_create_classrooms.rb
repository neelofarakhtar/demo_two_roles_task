class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :class_name
      t.string :section
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
