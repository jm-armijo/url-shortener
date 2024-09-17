class CreateUrls < ActiveRecord::Migration[7.2]
  def change
    create_table :urls do |t|
      t.string :long_url
      t.string :short_url
      t.string :description
      t.string :owner

      t.timestamps
    end
  end
end
