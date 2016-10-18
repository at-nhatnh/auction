App.auction = App.cable.subscriptions.create {
    channel: 'AuctionChannel'
    campaign_id: ''
  },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('tr #campaign-' + data['campaign_id']).find('.append').after( data['user'])
    # tr.find('.email').append data['user']
    # tr.find('.price').append data['price']

  bid: (price, campaign_id)->
    @perform 'bid', price: price, campaign_id: campaign_id

$(document).ready ->
  $(".click").click (e)->
    price = $(this).parent().parent().find('#price')
    campaign_id = $(this).parent().parent().attr('campaign-id')
    App.auction.bid price.val(), campaign_id
    price.val('')
    e.preventDefault()
