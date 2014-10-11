require 'rails_helper'

RSpec.describe "publishers/edit", :type => :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :publisherid => 1,
      :name => "MyText",
      :logo => "MyText",
      :url => "MyText",
      :blurb => "MyText"
    ))
  end

  it "renders the edit publisher form" do
    render

    assert_select "form[action=?][method=?]", publisher_path(@publisher), "post" do

      assert_select "input#publisher_publisherid[name=?]", "publisher[publisherid]"

      assert_select "textarea#publisher_name[name=?]", "publisher[name]"

      assert_select "textarea#publisher_logo[name=?]", "publisher[logo]"

      assert_select "textarea#publisher_url[name=?]", "publisher[url]"

      assert_select "textarea#publisher_blurb[name=?]", "publisher[blurb]"
    end
  end
end
