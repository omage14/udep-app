class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :maiden_name
      t.string :email
      t.string :phone
      t.string :mobile_phone
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :street
      t.string :external_number
      t.string :internal_number

      t.timestamps
    end
  end
end
