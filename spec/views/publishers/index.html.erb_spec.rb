require 'rails_helper'

RSpec.describe "publishers/index", :type => :view do
  before(:each) do
    assign(:publishers, [
      Publisher.create!(
        :publisherid => 1,
        :name => "MyText",
        :logo => "MyText",
        :url => "MyText",
        :blurb => "MyText"
      ),
      Publisher.create!(
        :publisherid => 1,
        :name => "MyText",
        :logo => "MyText",
        :url => "MyText",
        :blurb => "MyText"
      )
    ])
  end

  it "renders a list of publishers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
