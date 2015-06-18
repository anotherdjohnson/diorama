class CreateDioramaTemplates < ActiveRecord::Migration
  def change
    create_table :diorama_templates do |t|
      t.text :body
      t.text :path
      t.string :locale
      t.string :format
      t.string :handler
      t.boolean :partial

      t.timestamps
    end
  end
end
