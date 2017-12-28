class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :pedido
      t.integer :codigo
      t.text :solicitud
      t.integer :surtido

      t.timestamps
    end
  end
end
