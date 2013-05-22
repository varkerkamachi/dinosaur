require 'spec_helper'

describe "herds/edit" do
  before(:each) do
    @herd = assign(:herd, stub_model(Herd,
      :name => "MyString",
      :size => 1
    ))
  end

  it "renders the edit herd form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => herds_path(@herd), :method => "post" do
      assert_select "input#herd_name", :name => "herd[name]"
      assert_select "input#herd_size", :name => "herd[size]"
    end
  end
end
