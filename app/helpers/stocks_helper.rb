module StocksHelper
  def getStockPrice(symbol)
     url = 'https://api.twelvedata.com/time_series?symbol='+symbol.to_s+"&interval=1min&apikey="+Rails.application.credentials.twelvedata.api_key
     response = HTTParty.get(url)

     if response["status"] == "ok"
       return response["values"][0]["open"]
     end
  end
end
