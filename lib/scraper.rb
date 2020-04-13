require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)


    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.roster-cards-container").each do |card|
      card.css(".student-card a").each do |student_card|
        name = student_card.css(".student-name").text 
    binding.pry
      end
    end
    # student name (h4 class="student-name")
end




  def self.scrape_profile_page(profile_url)



  end





end
