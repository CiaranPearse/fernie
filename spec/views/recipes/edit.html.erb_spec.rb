require 'rails_helper'

RSpec.describe "recipes/edit", :type => :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :recipeid => 1,
      :title => "MyText",
      :description => "MyText",
      :ingredients => "MyText",
      :preptime => 1,
      :cooktime => 1,
      :totaltime => 1,
      :publisher => nil,
      :diet => nil,
      :course => nil,
      :ease => nil,
      :ratenum => 1,
      :commentnum => 1,
      :facebooknum => 1,
      :twitternum => 1,
      :pinnum => 1,
      :stumblenum => 1,
      :gplusnum => 1,
      :sumofall => 1,
      :cscore => 1
    ))
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do

      assert_select "input#recipe_recipeid[name=?]", "recipe[recipeid]"

      assert_select "textarea#recipe_title[name=?]", "recipe[title]"

      assert_select "textarea#recipe_description[name=?]", "recipe[description]"

      assert_select "textarea#recipe_ingredients[name=?]", "recipe[ingredients]"

      assert_select "input#recipe_preptime[name=?]", "recipe[preptime]"

      assert_select "input#recipe_cooktime[name=?]", "recipe[cooktime]"

      assert_select "input#recipe_totaltime[name=?]", "recipe[totaltime]"

      assert_select "input#recipe_publisher_id[name=?]", "recipe[publisher_id]"

      assert_select "input#recipe_diet_id[name=?]", "recipe[diet_id]"

      assert_select "input#recipe_course_id[name=?]", "recipe[course_id]"

      assert_select "input#recipe_ease_id[name=?]", "recipe[ease_id]"

      assert_select "input#recipe_ratenum[name=?]", "recipe[ratenum]"

      assert_select "input#recipe_commentnum[name=?]", "recipe[commentnum]"

      assert_select "input#recipe_facebooknum[name=?]", "recipe[facebooknum]"

      assert_select "input#recipe_twitternum[name=?]", "recipe[twitternum]"

      assert_select "input#recipe_pinnum[name=?]", "recipe[pinnum]"

      assert_select "input#recipe_stumblenum[name=?]", "recipe[stumblenum]"

      assert_select "input#recipe_gplusnum[name=?]", "recipe[gplusnum]"

      assert_select "input#recipe_sumofall[name=?]", "recipe[sumofall]"

      assert_select "input#recipe_cscore[name=?]", "recipe[cscore]"
    end
  end
end
