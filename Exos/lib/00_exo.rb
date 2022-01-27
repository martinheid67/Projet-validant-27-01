def globale

require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all"))

cryptos = Array.new 
valeurs = Array.new 


page.xpath('/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[3]/div').each do |x|
    cryptos << x.text 
 end

page.xpath('/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[5]/div/a/span').each do |y|
    valeurs << y.text
end

tirette = Hash[cryptos.zip(valeurs)]

end

puts globale

def longueur

return globale.length

end

def verification

globale.has_key?("BTC" && Float && !nil)
globale.has_key?("DOT" && Float && !nil)
globale.has_key?("UST" && Float && !nil)
globale.has_key?("ETH")

end

#/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[2]/td[3]/div

#/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[3]/td[3]/div

#/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[4]/td[3]/div

#/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[21]/td[3]/div

#/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[21]/td[3]/div


