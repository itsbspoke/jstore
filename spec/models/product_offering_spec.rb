require 'spec_helper'

describe ProductOffering do

  let(:product_offering){ build(:product_offering) }
  context "validations" do
    subject{ product_offering }
    it {should be_valid}
  end

  context "on saving" do

    it "should save community_id on save" do
      product_offering.save
      product_offering.community.should_not be_nil
    end
    
  end
end
