require 'spec_helper'

describe "slideshows/index" do
  before(:each) do
    assign(:slideshows, [
      stub_model(Slideshow,
        :name => "Name",
        :content => "MyText"
      ),
      stub_model(Slideshow,
        :name => "Name",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of slideshows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
