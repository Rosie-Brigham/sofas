class CreateCity < ActiveRecord::Migration
  def change
    create_table :cities do |t|
    	t.string :name
    	t.string :cached_slug
    end
  end
end
