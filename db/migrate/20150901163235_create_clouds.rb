class CreateClouds < ActiveRecord::Migration
  def change
    create_table :clouds do |t|
      # t.string   :name, null: false, default: Time.now.strftime("%A %b. %m, %Y")
      # t.datetime :date, null: false, default: Time.now
      t.timestamps null: false
    end
  end
end
