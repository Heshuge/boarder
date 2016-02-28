class CreateLadings < ActiveRecord::Migration
  def change
    create_table :ladings do |t|

      t.timestamps null: false
    end
  end
end
