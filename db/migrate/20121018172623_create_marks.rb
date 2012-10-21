class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.references :account
      t.references :link

      t.timestamps
    end
  end
end
