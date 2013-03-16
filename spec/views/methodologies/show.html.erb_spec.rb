require 'spec_helper'

describe "methodologies/show" do
  before(:each) do
    @methodology = assign(:methodology, stub_model(Methodology,
      :meth_number => "Meth Number",
      :meth_title => "Meth Title",
      :meth_version => "Meth Version",
      :meth_active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Meth Number/)
    rendered.should match(/Meth Title/)
    rendered.should match(/Meth Version/)
    rendered.should match(/false/)
  end
end
