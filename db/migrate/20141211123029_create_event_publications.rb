class CreateEventPublications < ActiveRecord::Migration
  def change
    create_table :event_publications do |t|
      t.belongs_to :basic_publication
      t.string :eventName
      t.string :eventCity
      t.integer :year
      t.string :annalTitle
      t.string :volume
      t.string :issue
      t.string :series
      t.integer :startingPage
      t.integer :endingPage
      t.string :ISBN
      t.string :publisherName
      t.string :publisherCity

      t.timestamps
    end
  end
end
