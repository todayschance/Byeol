require 'spec_helper'

describe "frees/show" do
  before(:each) do
    @free = assign(:free, stub_model(Free,
      :content => "Content",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
