require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)

    array = []
    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.roster-cards-container").each do |card|
      card.css(".student-card a").each do |student_card|
        name = student_card.css(".student-name").text
        location = student_card.css(".student-location").text
        profile_url = student_card.attr("href")
        array << {:name => name, :location => location, :profile_url => profile_url}
    # binding.pry
      end
    end
    array
    # student name (h4 class="student-name")
end




  def self.scrape_profile_page(profile_url)
    


  end





end
