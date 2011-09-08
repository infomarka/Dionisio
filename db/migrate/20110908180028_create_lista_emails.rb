class CreateListaEmails < ActiveRecord::Migration
  def change
    create_table :lista_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
