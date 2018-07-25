class CreateBenefits < ActiveRecord::Migration[5.2]
  def change
    create_table :benefits do |t|
      t.string :name
      t.string :description
      t.string :slug
      t.string :tags
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
