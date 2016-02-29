class AddContentToManifests < ActiveRecord::Migration
  def change
    add_column :manifests, :nameimportingconvevance, :string
    add_column :manifests, :namepersonincharge, :string
    add_column :manifests, :nameaddressowner, :string
    add_column :manifests, :foreignportoflanding, :string
    add_column :manifests, :usportofdestination, :string
    add_column :manifests, :portofarrival, :string
    add_column :manifests, :dateofarrival, :date
    add_column :manifests, :billoflading, :string
    add_column :manifests, :carnumber, :string
    add_column :manifests, :numberandgrossweight, :decimal
    add_column :manifests, :nameofconsignee, :string
  end
end
