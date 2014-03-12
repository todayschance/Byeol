require 'spec_helper'

describe "reviews/edit" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :title => "MyString",
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", review_path(@review), "post" do
      assert_select "input#review_title[name=?]", "review[title]"
      assert_select "textarea#review_content[name=?]", "review[content]"
      assert_select "input#review_user_id[name=?]", "review[user_id]"
    end
  end
end
