class UsersController < ApplicationController
  def my_portfolio
    @stocks1=StockSymbol.all
    @names = Array.new
    @stocks1.each do |s|
      @names.push(s.name)
    end

    @stocks= current_user.stocks

  end
end
