class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.integer :department_id
      t.string :positionname

      t.timestamps
    end
  end
end
