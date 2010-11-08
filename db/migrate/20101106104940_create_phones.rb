class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.integer :ptype
      t.integer :contact_id
      t.string :number

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
