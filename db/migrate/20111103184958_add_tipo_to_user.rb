class AddTipoToUser < ActiveRecord::Migration
  def change
    add_column :users, :tipo, :integer, :default => 0
  end

end
