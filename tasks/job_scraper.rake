require 'nokogiri'
require 'open-uri'
require 'rake'

task :job_scraper do
  # open the stats page
  page = Nokogiri::HTML(open("http://burzarada.hzz.hr/statistika.aspx"))
  # get the string values of currently unemployed and job openings
  currently_unemployed = page.css("html//body//div#pnlOld//div.statistika_pozadina//span#lblNezaposlenih").inner_text
  job_openings = page.css("html//body//div#pnlOld//div.statistika_pozadina//span#lblRadnika").inner_text

  # write the data to a text file
  f = File.open("data/data.txt", "a+")
  f.puts "time: #{Time.now} unemployed: #{currently_unemployed}  job_openings: #{job_openings}"
  f.close
end

