class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :title

      t.timestamps
    end

    activitiesArray = Array["IT", "Energetics", "Automatics", "Telecommunications", "Arhitecture", "Banking"]
    #a lot of activities are missing and need to be added here later on
    activitiesArray.each do |activity|
      Activity.create :title => activity
    end
  end
end
