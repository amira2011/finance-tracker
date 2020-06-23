class StocksController < ApplicationController
  def search
    @client = IEX::Api::Client.new(
      publishable_token: 'Tpk_42731396d5fe4af5a5e5cdce8b83aab3',
      secret_token: 'Tsk_8cf6ec8f5ecb4e3993b714f90fa29249',
      endpoint: 'https://sandbox.iexapis.com/v1')
      
    if params[:stock].present?
      @stock= Stock.new_lookup(params[:stock])
        if @stock
          respond_to do |format|
            format.js {render partial: 'users/result'}
          end
        #render 'users/my_portfolio'
        else
            respond_to do |format|
              flash.now[:alert]="Please Enter Valid Symbol to Search"
                format.js {render partial: 'users/result'}
            end


        #  redirect_to my_portfolio_path
        end
    else
      respond_to do |format|
        flash.now[:alert]="Please Enter   Symbol to Search"
        format.js {render partial: 'users/result'}
      end
      #   redirect_to my_portfolio_path
    end
  end
end
