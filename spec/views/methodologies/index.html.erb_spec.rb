require 'spec_helper'

describe "methodologies/index" do
  before(:each) do
    assign(:methodologies, [
      stub_model(Methodology,
        :meth_number => "Meth Number",
        :meth_title => "Meth Title",
        :meth_version => "Meth Version",
        :meth_active => false
      ),
      stub_model(Methodology,
        :meth_number => "Meth Number",
        :meth_title => "Meth Title",
        :meth_version => "Meth Version",
        :meth_active => false
      )
    ])
  end

  it "renders a list of methodologies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Meth Number".to_s, :count => 2
    assert_select "tr>td", :text => "Meth Title".to_s, :count => 2
    assert_select "tr>td", :text => "Meth Version".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
