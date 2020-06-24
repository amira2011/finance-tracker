class WelcomeController < ApplicationController
  def index

  @stocks=StockSymbol.all
  @names = Array.new
  @stocks.each do |s|
    @names.push(s.name)
  end
end
end
