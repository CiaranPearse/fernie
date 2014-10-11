require 'rails_helper'

RSpec.describe "diets/new", :type => :view do
  before(:each) do
    assign(:diet, Diet.new(
      :name => "MyText"
    ))
  end

  it "renders new diet form" do
    render

    assert_select "form[action=?][method=?]", diets_path, "post" do

      assert_select "textarea#diet_name[name=?]", "diet[name]"
    end
  end
end
