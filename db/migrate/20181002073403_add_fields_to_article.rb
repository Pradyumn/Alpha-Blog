class AddFieldsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :title, :string
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
