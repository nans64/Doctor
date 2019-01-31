class DeleteColumnSpecialty < ActiveRecord::Migration[5.2]
  def change
    change_table :doctors do |t|
    t.remove :doctors, :specialty
  end
end
