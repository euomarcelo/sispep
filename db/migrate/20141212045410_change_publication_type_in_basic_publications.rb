class ChangePublicationTypeInBasicPublications < ActiveRecord::Migration
  def change
    change_column :basic_publications, :publication_type, :integer, :default => nil
  end
end
