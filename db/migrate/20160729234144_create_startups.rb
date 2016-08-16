class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :address
      t.string :shortdescription
      t.string :stage

      t.text :description

      t.date :founded_date

      t.boolean :approval, default: false
      t.integer :employee_count
      t.float :latitude
      t.float :longitude


      t.belongs_to :user, index: true
      t.belongs_to :vertical, index: true

      t.timestamps
    end
  end
end
