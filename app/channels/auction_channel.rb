# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class AuctionChannel < ApplicationCable::Channel
  def subscribed
    stream_from "auction_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def bid(data)
    AuctionStore.create(user: current_user,
                        campaign_id: data['campaign'],
                        bid_price: data['price'])
  end
end
