class Product < ActiveRecord::Base

  has_many :product_offerings
  #has_many :memberships, through: :product_offerings
  has_many :communities, through: :product_offerings

  def self.in_user_communities(user)
    # Ideally this would work, but Rails seems to complain.  2phase it.
    # includes(:communities).where(community: {id: user.communities})
    #
    community_ids = user.communities.pluck(:id)
    includes(:communities).where(communities: {id: community_ids})
  end

end
