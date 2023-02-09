class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :bname
      t.string :aname
      
      t.timestamps
    end
  end
end
