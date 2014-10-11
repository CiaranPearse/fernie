require 'rails_helper'

RSpec.describe "eases/edit", :type => :view do
  before(:each) do
    @ease = assign(:ease, Ease.create!(
      :name => "MyText"
    ))
  end

  it "renders the edit ease form" do
    render

    assert_select "form[action=?][method=?]", ease_path(@ease), "post" do

      assert_select "textarea#ease_name[name=?]", "ease[name]"
    end
  end
end
