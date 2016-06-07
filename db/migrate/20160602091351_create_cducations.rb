class CreateCducations < ActiveRecord::Migration[5.0]
  def change
    create_table :cducations do |t|
      t.datetime :start_and
      t.datetime :end_date
      t.string :school
      t.string :major
      t.string :leaming_form
      t.string :qualifications_and_degree
      t.integer :employee_info_id

      t.timestamps
    end
  end
end
