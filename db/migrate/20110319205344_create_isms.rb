class CreateIsms < ActiveRecord::Migration
  def self.up
    create_table :isms do |t|
      t.string :title
      t.text :description
      t.string :gender
      t.text :category

      t.timestamps
    end
  end

  def self.down
    drop_table :isms
  end
end
