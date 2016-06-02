class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.datetime :start_and_end_date
      t.string :work_unit
      t.string :post
      t.string :salary
      t.string :reasons_for_leaving
      t.string :witness
      t.string :telephone

      t.timestamps
    end
  end
end
