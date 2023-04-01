class AddBannerToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :banner, :string
  end
end
