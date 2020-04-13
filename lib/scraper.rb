require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)


    html = open(index_url)
    index = Nokogiri::HTML(html)
    binding.pry
    # student name (h4 class="student-name")
  end





  def self.scrape_profile_page(profile_url)



  end





end
