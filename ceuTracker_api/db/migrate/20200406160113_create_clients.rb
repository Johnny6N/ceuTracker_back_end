class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :f_name
      t.string :l_name
      t.integer :birth_month
      t.integer :birth_day
      t.integer :birth_year
      t.string :license

      t.timestamps
    end
  end
end
