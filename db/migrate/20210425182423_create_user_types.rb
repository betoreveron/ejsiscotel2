class CreateUserTypes < ActiveRecord::Migration[6.1]

  def change
    create_table :user_types do |t|
      t.column :user_type_name, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :user_types
  end

end
