class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :your_name
      t.string :location

      t.timestamps
    end
  end
end
