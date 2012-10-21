class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.references :profile
      t.timestamps
    end
  end
end
