class CreateProyectos < ActiveRecord::Migration[5.2]
  def change
    create_table :proyectos do |t|

      t.timestamps
    end
  end
end
