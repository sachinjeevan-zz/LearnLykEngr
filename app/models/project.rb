class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]

	has_many :tasks

	has_many :subscriptions
	has_many :users, through: :subscriptions


	validates :name, presence: true, length: { maximum: 100 }
	validates :content, presence: true, length: { maximum: 2000 }
	validates :price, presence: true, numericality: { only_integer: true }
	validates :promo, presence: true

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def shortname
  	name.length > 25? name[0..25] + "..." : name
  end

  def price_in_cents
  	(self.price*100).to_i
  end
end
