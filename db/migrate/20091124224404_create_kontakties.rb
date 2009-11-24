class CreateKontakties < ActiveRecord::Migration
  def self.up
    create_table :kontakties do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :www
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :kontakties
  end
end
