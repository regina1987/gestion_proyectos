class AddTitleToProyectos < ActiveRecord::Migration[5.2]
  def change
    add_column :proyectos, :name, :string
    add_column :proyectos, :descripcion, :string
    add_column :proyectos, :begin_at, :date
    add_column :proyectos, :end_at, :date
    add_column :proyectos, :status, :string
  end
end
