require 'spec_helper'

describe "frees/edit" do
  before(:each) do
    @free = assign(:free, stub_model(Free,
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit free form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", free_path(@free), "post" do
      assert_select "input#free_content[name=?]", "free[content]"
      assert_select "input#free_user_id[name=?]", "free[user_id]"
    end
  end
end
