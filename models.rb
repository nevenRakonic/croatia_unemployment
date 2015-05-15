class UnemploymentData < ActiveRecord::Base

  def self.all_data_with_unix_time
    # TODO this works but seems slow, there must be a better solution
    self.all.map do |row|
      {
        unemployed_people: row["unemployed_people"],
        job_openings: row["job_openings"],
        created_at: row["created_at"].to_i
      }
    end
  end

  # we don't need IDs so we don't return them when converting results to json
  def as_json(options={})
    super(only: [:unemployed_people, :job_openings, :created_at])
  end
end
