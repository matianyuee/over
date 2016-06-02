class CreateEmployeeInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_infos do |t|
      t.string :name
      t.string :gender
      t.datetime :birth_date
      t.string :marriage
      t.string :nation
      t.string :origin
      t.string :political_landscape
      t.string :physical_condition
      t.string :height
      t.string :weight
      t.integer :contact_phone
      t.string :graduation_time
      t.string :graduate
      t.string :_school
      t.string :major
      t.string :highest_degree
      t.integer :id_card_number
      t.string :permanent_address
      t.string :live_address
      t.string :mailbox
      t.string :salary_expectation
      t.string :ox
      t.string :salary_expectation
      t.datetime :arrival_time
      t.string :self_evaluation
      t.integer :department_id
      t.datetime :date_of_application
      t.string :office_software
      t.string :reasons_for_applying
      t.integer :education_id
      t.integer :work_experience_id

      t.timestamps
    end
  end
end
