class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pass
      t.references :user_type, index: true

      t.timestamps
    end
  end
end
