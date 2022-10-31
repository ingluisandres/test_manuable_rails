class CreateAccountAndDocumentMigration < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.integer :verification_status, index: true
      t.string :email
      t.string :name
      t.string :password
      t.jsonb :verify_by
      t.datetime :verify_at
      t.timestamps
    end

    create_table :account_verification_documents do |t|
      t.integer :file_id, index: true
      t.text :file_data
      t.references :account
      t.timestamps
    end
  end
end
