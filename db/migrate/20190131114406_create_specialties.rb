class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :specialty_name
      t.timestamps
    end

    create_table :doctor_specialities do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :speciality, index: true
    end
  end
end
