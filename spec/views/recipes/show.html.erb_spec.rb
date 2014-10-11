require 'rails_helper'

RSpec.describe "recipes/show", :type => :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
  end
end
