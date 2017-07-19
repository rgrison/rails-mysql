class CreateBalls < ActiveRecord::Migration
  def change
    sleep(2.hours)
    create_table :balls do |t|
      t.integer :dimples

      t.timestamps
    end
  end
end
