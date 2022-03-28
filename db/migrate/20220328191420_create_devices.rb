class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :purpose
      t.string :ip
      t.string :mac
      t.string :type
      t.integer :zone_id


      t.timestamps
    end
  end
end
