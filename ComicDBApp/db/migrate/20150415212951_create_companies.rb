class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :date_founded
      t.boolean :in_business
    end
  end
end
