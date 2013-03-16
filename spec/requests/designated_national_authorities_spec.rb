require 'spec_helper'

describe "DesignatedNationalAuthorities" do
  describe "GET /designated_national_authorities" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get designated_national_authorities_path
      response.status.should be(200)
    end
  end
end
