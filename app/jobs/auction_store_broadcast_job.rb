class AuctionStoreBroadcastJob < ApplicationJob
  queue_as :default

  def perform(auction)
    ActionCable.server.broadcast "auction_channel",
                                  auction: render_auction(auction),
                                  campaign: auction.campaign.id
  end

  private

  def render_auction(auction)
    ApplicationController.render partial: 'auction_stores/auction',
                                 locals: {
                                    price: auction.bid_price,

                                 }
  end
end
