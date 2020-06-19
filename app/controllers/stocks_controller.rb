class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock= Stock.new_lookup(params[:stock])
        if @stock
        render 'users/my_portfolio'
        else
          flash[:alert]="Please Enter Valid Symbol to Search"
          redirect_to my_portfolio_path
        end
    else
      flash[:alert]="Please Enter Symbol to Search"
      redirect_to my_portfolio_path
    end
  end
end
