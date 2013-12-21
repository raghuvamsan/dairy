class CreateDairyApps < ActiveRecord::Migration
  def change
    create_table :dairy_apps do |t|
      t.datetime :timestamp
      t.text :text

      t.timestamps
    end
  end
end
