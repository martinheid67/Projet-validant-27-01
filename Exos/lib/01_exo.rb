require 'nokogiri'
require 'open-uri'

def get_townhall_urls
    liste = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/bas-rhin.html"))
    urls = liste.xpath('//*[contains(@class,"lientxt")]/@href').map{|x| x.text[1..-1]}
    urls.length.times do |y|
        urls[y]= "https://www.annuaire-des-mairies.com" + urls[y]
        end
    return urls
end

def get_townhall_email(pouet)
    page = Nokogiri::HTML(URI.open(pouet))
    email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text 
end

def autre
    urls = get_townhall_urls
    emails = urls.map{|z| get_townhall_email(z)}
end

def communes
    liste = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/bas-rhin.html")) 
    noms = liste.xpath('//a[@class = "lientxt"]').map{|b| b.text}
end

def assemblage
    noms = communes
    emails = autre
    tirette = noms.zip(emails).each_slice(1).map(&:to_h)
    puts tirette
end

assemblage
