class CreateGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :guides do |t|
      t.string :plantname
      t.text :description
    end
  end
end
