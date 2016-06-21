class CreateMattersshouldbedones < ActiveRecord::Migration[5.0]
  def change
    create_table :mattersshouldbedones do |t|
      t.string :name

      t.timestamps
    end
  end
end
