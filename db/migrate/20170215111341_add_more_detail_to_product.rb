class AddMoreDetailToProduct < ActiveRecord::Migration[5.0]

def change

 add_column :products, :mu_name, :string
 add_column :products, :ci_name, :string
 add_column :products, :shi_name, :string
 add_column :products, :is_mu, :boolean, default: true
 add_column :products, :is_ci, :boolean, default: true
 add_column :products, :is_shi, :boolean, default: true

 end
end
