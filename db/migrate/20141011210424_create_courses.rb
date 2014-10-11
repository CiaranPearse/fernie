class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :name

      t.timestamps
    end
  end
end
