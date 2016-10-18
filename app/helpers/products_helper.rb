module ProductsHelper
  def render_price_user(campaign)
    binding.pry
    auction_store = AuctionStore.where(campaign_id: campaign.id)
    if auction_store.nil?
      @user = ''
      @price = campaign.begin_price
      render partial: 'products/the_campaign'
    end
  end
end
