class ProductOffering < ActiveRecord::Base
  belongs_to :membership
  belongs_to :community
  belongs_to :product

  before_save :ensure_community_is_set

  validate :membership, presence: true

  def ensure_community_is_set
    self.community_id = self.membership.community_id
  end
end
