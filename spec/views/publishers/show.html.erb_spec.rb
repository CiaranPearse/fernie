require 'rails_helper'

RSpec.describe "publishers/show", :type => :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :publisherid => 1,
      :name => "MyText",
      :logo => "MyText",
      :url => "MyText",
      :blurb => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
