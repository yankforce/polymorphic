require 'spec_helper'

describe "slideshows/edit" do
  before(:each) do
    @slideshow = assign(:slideshow, stub_model(Slideshow,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit slideshow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slideshow_path(@slideshow), "post" do
      assert_select "input#slideshow_name[name=?]", "slideshow[name]"
      assert_select "textarea#slideshow_content[name=?]", "slideshow[content]"
    end
  end
end
