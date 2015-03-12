class CreateJerryisms < ActiveRecord::Migration
  def change
    create_table :jerryisms do |t|
      t.text :text
      t.string :created_by

      t.timestamps
    end
  end
end
