class CreateResignationapplications < ActiveRecord::Migration[5.0]
  def change
    create_table :resignationapplications do |t|
      t.string :name
      t.integer :department_id
      t.integer :position_id
      t.datetime :entrytime
      t.integer :employee_info_id
      t.datetime :contractexpirationdate
      t.string :reasonsforresignation
      t.text :reasonforresignationinfo #辞职里有说明
      t.datetime :dateofresignation  #辞职日期
      t.string :staffsignature   #员工签名
      t.string :superiorsignature  #上级签名
      t.datetime :staffsignaturedate   #员工签名时间
      t.datetime :superiorsignaturedate  #上级签名时间
      t.datetime :lastworkingday    #最后工作日
      t.string :doyouneedtomakeup
      t.text :exitinterviewrecord
      t.text :departmentdirectoropinion
      t.string :signatureofdepartmentdirector
      t.text :directorofhumanresources
      t.string :signatureofhrdirector
      t.text :ceoopinion
      t.string :ceosignature
      t.datetime :departmentdirectordate
      t.datetime :hrdirectordate
      t.datetime :sedate
      t.text :remarks

      t.timestamps
    end
  end
end
