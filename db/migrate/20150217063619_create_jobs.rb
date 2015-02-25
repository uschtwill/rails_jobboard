class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :salary
      t.integer :working_hours
      t.string :location
      t.string :department
      t.string :team
      t.text :responsibility
      t.text :job_description
      t.text :requirements
      t.text :perks
      t.string :email
      t.integer :phone
      t.text :application

      t.timestamps null: false
    end
  end
end
