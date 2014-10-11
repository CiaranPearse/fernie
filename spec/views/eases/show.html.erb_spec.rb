require 'rails_helper'

RSpec.describe "eases/show", :type => :view do
  before(:each) do
    @ease = assign(:ease, Ease.create!(
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
