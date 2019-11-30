class AddAttributesToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :user_id, :integer
    add_column :appointments, :animal_id, :integer
    add_column :appointments, :datetime, :string
    add_column :appointments, :request, :string
  end
end
