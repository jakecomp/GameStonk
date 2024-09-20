class StocksController < ApplicationController
  include StocksHelper
  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
    price = getStockPrice(@stock.shorthand)
    @stock.price = price
  end 

  def new
    @stock = Stock.new
  end
end
