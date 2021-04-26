class CreateUserPeople < ActiveRecord::Migration[6.1]

  def change
    create_table :user_people do |t|
      t.column :doc_id, :string, :null => false
      t.column :doc_issue_date, :date
      t.column :doc_expiration_date, :date
      t.column :user_name, :text
      t.column :email, :text
      t.column :phone_number1, :text
      t.column :phone_number2, :text
      t.column :fk_user_type_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :user_people
  end
  
end
