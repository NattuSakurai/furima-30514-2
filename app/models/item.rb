class Item < ApplicationRecord
  has_one_attached :image
  has_one :record
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :postage
  belongs_to_active_hash :regional
  belongs_to_active_hash :shipping_date

  validates :image,:name, :description, :category_id, :status_id, :postage_id, :regional_id, :shipping_date_id, :price, presence: true

  with_options  numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :postage_id
    validates :regional_id
    validates :shipping_date_id
  end

  validates :price, numericality: { greater_than: 299}
  validates :price, numericality: {less_than: 100000000}
end
