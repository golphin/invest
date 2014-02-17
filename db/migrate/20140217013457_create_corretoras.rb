class CreateCorretoras < ActiveRecord::Migration
  def change
    create_table :corretoras do |t|
      t.string :corretora
      t.boolean :ativo

      t.timestamps
    end
  end
end
