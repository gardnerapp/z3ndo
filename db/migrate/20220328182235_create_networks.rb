class CreateNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :networks do |t|
      t.text :purpose

      t.timestamps
    end
  end
end
