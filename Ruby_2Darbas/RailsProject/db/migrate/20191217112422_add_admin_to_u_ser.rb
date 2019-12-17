class AddAdminToUSer < ActiveRecord::Migration[6.0]
  def change
    add_column :u_sers, :admin, :boolean, default: false
  end
end
