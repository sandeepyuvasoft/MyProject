class AuthorsController < ApplicationController
	def index
		@authors=Author.all
	end
	# def new
	# 	@author=Author.new
	# end
	def create
		@author=Author.new(name:params[:author][:name])
		@author.save
		redirect_to authors_url
	end
end
