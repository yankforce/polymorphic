require 'spec_helper'

describe "slideshows/show" do
  before(:each) do
    @slideshow = assign(:slideshow, stub_model(Slideshow,
      :name => "Name",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
