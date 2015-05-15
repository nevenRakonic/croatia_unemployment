class UnemploymentData < ActiveRecord::Base
  # we don't need IDs so we don't return them when converting results to json
  def as_json(options={})
    super(only: [:unemployed_people, :job_openings, :created_at])
  end
end
