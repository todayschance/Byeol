require 'spec_helper'

describe "frees/new" do
  before(:each) do
    assign(:free, stub_model(Free,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new free form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", frees_path, "post" do
      assert_select "input#free_content[name=?]", "free[content]"
      assert_select "input#free_user_id[name=?]", "free[user_id]"
    end
  end
end
