class Offer < ActiveRecord::Base
	
	has_many :proposals
	belongs_to :user


	def self.search(params)
		offers = Offer.where("concert like ? or description like? or location like?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		offers
	end
end