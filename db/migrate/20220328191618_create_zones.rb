class CreateZones < ActiveRecord::Migration[7.0]
  def change
    create_table :zones do |t|
      t.string :name
      t.json :rules
      t.text :purpose

      t.timestamps
    end
  end
end
