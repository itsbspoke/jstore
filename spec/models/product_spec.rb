require 'spec_helper'

describe Product do

  context "user community finder" do

    before(:each) do
      @po1 = create(:product_offering)
      @po2 = create(:product_offering)
      @shopper = create(:user)
      @shopper_membership = create(:membership, user: @shopper, community: @po1.community)
    end
    let(:products){  Product.in_user_communities(@shopper) }
    it "should find a product in users communities" do
      products.should include(@po1.product)
    end
    it "should not include a product outside the users community" do
      products.should_not include(@po2.product)
    end
  end
end
