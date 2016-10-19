App.auction = App.cable.subscriptions.create "AuctionChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $campaign = $('.campaign-'+ data['campaign'])
    $campaign.find('td.price').empty()
    $campaign.find('td.user').empty()
    $campaign.find('td.price').append data['auction']
    $campaign.find('td.user').append data['user']

  bid: (price, campaign)->
    @perform 'bid', price: price, campaign: campaign

$(document).ready ->
  $(".bid").click (e)->
    if confirm('Do you want bid')
      price = $(this).parent().parent().find('.bid_price')
      bid_price = $(this).parent().parent().find('#price')
      if (price.val() <= bid_price.text())
        alert('Must larger bigest price')
      else
        campaign_id = $(this).parent().parent().attr('campaign-id')
        App.auction.bid price.val(), campaign_id
        price.val('')
    else
      return false
    e.preventDefault()
