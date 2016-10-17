module ProductsHelper
  def render_price_user(price, user, campaign)
    if price.nil? || user.nil?
      @user = ''
      @price = campaign
    else
      @user = user
      @price = price
    end
    render partial: 'the_auction'
  end
end
