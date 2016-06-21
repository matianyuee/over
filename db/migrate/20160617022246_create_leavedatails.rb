class CreateLeavedatails < ActiveRecord::Migration[5.0]
  def change
    create_table :leavedatails do |t|
      t.string :name
      t.integer :department_id
      t.integer :position_id
      t.integer :employee_info_id
      t.integer :mattersshouldbedone_id
      t.string :whethertocomplete
      t.string :signatureoftheresponsibleperson
      t.string :departmenthead
      t.text :remarks
      t.string :staffsignature
      t.string :signatureofdirectorofhumanresources
      t.string :handlingdepartment

      t.timestamps
    end
  end
end
