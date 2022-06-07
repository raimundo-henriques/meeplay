class AddCityToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :city, :string, default: "Lisbon"
  end
end
