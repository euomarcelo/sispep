class CreateBasicPublications < ActiveRecord::Migration
  def change
    create_table :basic_publications do |t|
      t.belongs_to :profile
      t.string :title
      t.integer :year
      t.string :country
      t.string :language
      t.string :webpage
      t.string :english_title
      t.integer :publication_type

      t.timestamps
    end
  end
end
