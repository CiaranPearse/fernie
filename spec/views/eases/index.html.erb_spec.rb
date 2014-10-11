require 'rails_helper'

RSpec.describe "eases/index", :type => :view do
  before(:each) do
    assign(:eases, [
      Ease.create!(
        :name => "MyText"
      ),
      Ease.create!(
        :name => "MyText"
      )
    ])
  end

  it "renders a list of eases" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
