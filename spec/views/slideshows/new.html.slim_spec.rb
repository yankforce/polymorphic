require 'spec_helper'

describe "slideshows/new" do
  before(:each) do
    assign(:slideshow, stub_model(Slideshow,
      :name => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new slideshow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slideshows_path, "post" do
      assert_select "input#slideshow_name[name=?]", "slideshow[name]"
      assert_select "textarea#slideshow_content[name=?]", "slideshow[content]"
    end
  end
end
