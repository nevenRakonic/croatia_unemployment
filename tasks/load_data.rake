task :load_data do
  f = File.open("data/data.txt",'r')

  f.each do |line|
    db_row = UnemploymentData.new

    line.split(/time:|unemployed:|job_openings:/).each_with_index do |str, i|
      if i == 1
        db_row.fetch_time = DateTime.parse(str)
      elsif i == 2
        db_row.unemployed_people = str.strip.to_i
      elsif i == 3
        db_row.job_openings = str.strip.to_i
      end
    end

    db_row.save
  end

end
