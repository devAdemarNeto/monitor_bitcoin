require 'net/http'
require 'json'


def fetch_bitcoin_price
    url = URI("https://api.coindesk.com/v1/bpi/currentprice/BTC.json")
    response = Net::HTTP.get(url)
    data = JSON.parse(response)

    bitcoin_price =  data['bpi']['USD']['rate']

    puts "O valor atual do bitcoin em Dolar é : #{bitcoin_price}"
end

fetch_bitcoin_price

