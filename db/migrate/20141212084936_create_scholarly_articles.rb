class CreateScholarlyArticles < ActiveRecord::Migration
  def change
    create_table :scholarly_articles do |t|
      t.belongs_to :basic_publication
      t.string :ISSN
      t.string :volume
      t.string :issue
      t.string :series
      t.integer :startingPage
      t.integer :endingPage

      t.timestamps
    end
  end
end
