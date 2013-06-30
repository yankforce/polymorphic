require 'spec_helper'

describe "images/new" do
  before(:each) do
    assign(:image, stub_model(Image,
      :name => "MyString",
      :size => 1,
      :hidden => false
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", images_path, "post" do
      assert_select "input#image_name[name=?]", "image[name]"
      assert_select "input#image_size[name=?]", "image[size]"
      assert_select "input#image_hidden[name=?]", "image[hidden]"
    end
  end
end
