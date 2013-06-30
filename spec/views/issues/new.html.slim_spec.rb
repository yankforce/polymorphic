require 'spec_helper'

describe "issues/new" do
  before(:each) do
    assign(:issue, stub_model(Issue,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", issues_path, "post" do
      assert_select "input#issue_title[name=?]", "issue[title]"
      assert_select "textarea#issue_content[name=?]", "issue[content]"
    end
  end
end
