class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :recipeid
      t.text :title
      t.text :description
      t.text :ingredients
      t.integer :preptime
      t.integer :cooktime
      t.integer :totaltime
      t.references :publisher, index: true
      t.references :diet, index: true
      t.references :course, index: true
      t.references :ease, index: true
      t.integer :ratenum
      t.integer :commentnum
      t.integer :facebooknum
      t.integer :twitternum
      t.integer :pinnum
      t.integer :stumblenum
      t.integer :gplusnum
      t.integer :sumofall
      t.integer :cscore

      t.timestamps
    end
  end
end
