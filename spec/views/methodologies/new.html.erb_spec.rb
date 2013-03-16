require 'spec_helper'

describe "methodologies/new" do
  before(:each) do
    assign(:methodology, stub_model(Methodology,
      :meth_number => "MyString",
      :meth_title => "MyString",
      :meth_version => "MyString",
      :meth_active => false
    ).as_new_record)
  end

  it "renders new methodology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => methodologies_path, :method => "post" do
      assert_select "input#methodology_meth_number", :name => "methodology[meth_number]"
      assert_select "input#methodology_meth_title", :name => "methodology[meth_title]"
      assert_select "input#methodology_meth_version", :name => "methodology[meth_version]"
      assert_select "input#methodology_meth_active", :name => "methodology[meth_active]"
    end
  end
end
