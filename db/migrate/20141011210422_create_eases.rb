class CreateEases < ActiveRecord::Migration
  def change
    create_table :eases do |t|
      t.text :name

      t.timestamps
    end
  end
end
