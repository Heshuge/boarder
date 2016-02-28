class AasmCreateShipments < ActiveRecord::Migration
  def change
    create_table(:shipments) do |t|
      t.string :aasm_state
      t.timestamps null: false 
    end
  end
end
