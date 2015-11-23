class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slogan
      t.string :logo_url

      t.timestamps
    end
  end
end
