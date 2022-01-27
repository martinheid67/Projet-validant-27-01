require_relative '../lib/01_exo'

describe "get_townhall_urls" do
    it "should put l'url de toutes les communes du Bas-Rhin when asked" do
      expect(get_townhall_urls("https://www.annuaire-des-mairies.com/bas-rhin.html")).to eq(mairie.avernes@orange.fr)
    end
end

describe "longueur method" do
    it "should put the length of the hash when asked" do
      expect(get_townhall_email(''http://annuaire-des-mairies.com/95/avernes.html'')).to eq(mairie.avernes@orange.fr)
    end
end