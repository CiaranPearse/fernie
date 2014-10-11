require 'rails_helper'

RSpec.describe "eases/new", :type => :view do
  before(:each) do
    assign(:ease, Ease.new(
      :name => "MyText"
    ))
  end

  it "renders new ease form" do
    render

    assert_select "form[action=?][method=?]", eases_path, "post" do

      assert_select "textarea#ease_name[name=?]", "ease[name]"
    end
  end
end
