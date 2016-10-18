class AuctionStoreBroadcastJob < ApplicationJob
  queue_as :default

  def perform(auction)
    ActionCable.server.broadcast "auction_channel",
                                  auction: render_auction(auction)
  end

  private

  def render_auction(auction)
    ApplicationController.render partial: 'auction_stores/the_auction', locals: { price: auction.bid_price,
                                                                              user: auction.user.email,
                                                                              campaign_id: auction.campaign_id }
  end
end