class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.text :descricao
      t.datetime :data_inicio
      t.datetime :data_fim
      t.string :local
      t.references :user

      t.timestamps
    end
    add_index :eventos, :user_id
  end
end
