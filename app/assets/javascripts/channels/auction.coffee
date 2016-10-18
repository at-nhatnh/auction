App.auction = App.cable.subscriptions.create "AuctionChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.campaign-'+ data['campaign']).find('td.price').empty()
    $('.campaign-'+ data['campaign']).find('td.price').append data['auction']

  bid: (price, campaign)->
    @perform 'bid', price: price, campaign: campaign

$(document).ready ->
  $(".bid").click (e)->
    price = $(this).parent().parent().find('.bid_price')
    campaign_id = $(this).parent().parent().attr('campaign-id')
    App.auction.bid price.val(), campaign_id
    price.val('')
    e.preventDefault()

  clicked = ->
    if confirm('Do you want to submit?')
      yourformelement.submit()
    else
      return false
    return
