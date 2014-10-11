require 'rails_helper'

RSpec.describe "recipes/index", :type => :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :recipeid => 1,
        :title => "MyText",
        :description => "MyText",
        :ingredients => "MyText",
        :preptime => 2,
        :cooktime => 3,
        :totaltime => 4,
        :publisher => nil,
        :diet => nil,
        :course => nil,
        :ease => nil,
        :ratenum => 5,
        :commentnum => 6,
        :facebooknum => 7,
        :twitternum => 8,
        :pinnum => 9,
        :stumblenum => 10,
        :gplusnum => 11,
        :sumofall => 12,
        :cscore => 13
      ),
      Recipe.create!(
        :recipeid => 1,
        :title => "MyText",
        :description => "MyText",
        :ingredients => "MyText",
        :preptime => 2,
        :cooktime => 3,
        :totaltime => 4,
        :publisher => nil,
        :diet => nil,
        :course => nil,
        :ease => nil,
        :ratenum => 5,
        :commentnum => 6,
        :facebooknum => 7,
        :twitternum => 8,
        :pinnum => 9,
        :stumblenum => 10,
        :gplusnum => 11,
        :sumofall => 12,
        :cscore => 13
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
  end
end
