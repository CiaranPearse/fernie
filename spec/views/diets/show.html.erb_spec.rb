require 'rails_helper'

RSpec.describe "diets/show", :type => :view do
  before(:each) do
    @diet = assign(:diet, Diet.create!(
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
