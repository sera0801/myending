# require 'net/http'
# require 'uri'
# require 'pry'
# require 'json'

#   uri = URI.parse(URI.escape("http://itemsearch.api.ponparemall.com/1_0_0/search/?key=c25d2566b98c225db3d4ccdc1a33c690&format=json&keywordAnd=終活&limit=100"))
#   res = Net::HTTP.get(uri)
#   obj = JSON.parse(res)

#     number = 1
#   obj["itemInfoList"].each do |i|
#     puts number
#     puts i["itemName"]
#     puts i["itemUrl"]
#     puts i["itemImgInfoList"][0]["itemImgUrl"]
#     number = number + 1

# end