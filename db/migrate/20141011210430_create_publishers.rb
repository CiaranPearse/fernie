class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.integer :publisherid
      t.text :name
      t.text :logo
      t.text :url
      t.text :blurb

      t.timestamps
    end
  end
end
