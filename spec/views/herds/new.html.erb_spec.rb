require 'spec_helper'

describe "herds/new" do
  before(:each) do
    assign(:herd, stub_model(Herd,
      :name => "MyString",
      :size => 1
    ).as_new_record)
  end

  it "renders new herd form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => herds_path, :method => "post" do
      assert_select "input#herd_name", :name => "herd[name]"
      assert_select "input#herd_size", :name => "herd[size]"
    end
  end
end
