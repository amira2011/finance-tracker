class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: 'Tpk_42731396d5fe4af5a5e5cdce8b83aab3',
      secret_token: 'Tsk_8cf6ec8f5ecb4e3993b714f90fa29249',
      endpoint: 'https://sandbox.iexapis.com/v1')

    client.price(ticker_symbol)
  end

end
