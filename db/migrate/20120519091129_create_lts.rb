class CreateLts < ActiveRecord::Migration
  def change
    create_table :lts do |t|
      t.integer :like_count

      t.timestamps
    end
  end
end
