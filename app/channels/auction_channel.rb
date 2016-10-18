
# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class AuctionChannel < ApplicationCable::Channel
  def subscribed
    campaign = Campaign.find(params['campaign_id'])
    stream_from campaign
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def bid(data)
    puts data['price']
    AuctionStore.create!(campaign_id: data['campaign_id'], bid_price: data['price'], user: current_user)
  end
end
