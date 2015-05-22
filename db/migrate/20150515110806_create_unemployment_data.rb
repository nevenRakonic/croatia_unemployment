class CreateUnemploymentData < ActiveRecord::Migration
  def change
    create_table :unemployment_data do |t|
      t.integer   :unemployed_people,  null: false
      t.integer   :job_openings,       null: false
      t.datetime  :fetch_time,         null: false

      t.timestamps                     null: false
    end
  end
end
