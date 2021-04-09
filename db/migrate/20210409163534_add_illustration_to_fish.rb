class AddIllustrationToFish < ActiveRecord::Migration[6.1]
  def change
    add_column :fish, :illustration, :string
  end
end
