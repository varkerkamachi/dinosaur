require 'spec_helper'

describe "herds/show" do
  before(:each) do
    @herd = assign(:herd, stub_model(Herd,
      :name => "Name",
      :size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
