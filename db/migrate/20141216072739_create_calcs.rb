class CreateCalcs < ActiveRecord::Migration
  def change
    create_table :calcs do |t|
      t.string :your_name
      t.string :lovers_name

      t.timestamps
    end
  end
end
