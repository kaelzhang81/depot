class Product < ActiveRecord::Base
  validates :title, :uniqueness => true, :presence => true
  validates :description, :presence => true
  validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i, :message => 'must be a URL for GIF, JPG or PNG image.', multiline: true}
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  default_scope :order => 'title'
end
