require_relative "./version.rb"

class Travel::Scraper
  
  def scrape_locations
  doc = Nokogiri::HTML(open("https://viewfinder.expedia.com/features/top-rated-vacation-destinations-in-north-america/"))
  name = doc.css("div.entry-content h3 a").slice(0, 50)
  name.each do |x| 
    location = Travel::Location.new
    location.name = x.text
    location.url = x.attribute("href").value
    location.save

  end 
  binding.pry
  #binding.pry
  #doc.css("a")

  end
  
  
  
  
  
  
  # name = doc.css("h3").children.text.delete(" \t\r\n").split(/[0-9.]/).reject(&:empty?)
  # #binding.pry
  # all_p = doc.css(".entry-content").css("p")
  # summary_1 = all_p[0].text + all_p[1].text + all_p[2].text

  # doc.css(".entry-content").css("h3").each_with_index do |destination, index|
    
  #   location = Travel::Location.new
  #   location.name =  name[index]
    
  #   location.summary = destination.search("p.body-text").text
 
     
  #   location.save
  #   end 
  #   binding.pry
  # end 

end 


