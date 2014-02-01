class CreateSmartUsers < ActiveRecord::Migration
  def change
    create_table :smart_users do |t|
      t.string :name
      t.string :pass
      t.references :user_type, index: true

      t.timestamps
    end
  end
end
