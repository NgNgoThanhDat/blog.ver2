class PagesController < ApplicationController
    def new
		@page = Page.new
	end

	def create
		@page = Page.create!(page_params)
		@page.published_at = Time.now
		if @page.save
		    redirect_to @page
		else
		    render 'new'
		end
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])
		@page.update(page_params)
		redirect_to page_path(params[:id])
	end

	def show
		@page = Page.find(params[:id])
	end

	private
	def page_params
		params.require(:page).permit(:title, :body)
	end
end