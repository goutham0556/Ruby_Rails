module Api 
	module V1
		class BooksController < ApplicationController
			def index
				books= Book.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded books', data: books},status: :ok
			end
		
			def show
				book = Book.find(params[:id])
				render json: {status: 'SUCCESS', message: 'Loaded book', data: book},status: :ok

			end



			def create
		
				book = Book.new(book_params)

				if book.save
					render json: {status: 'SUCCESS', message: 'Saved book', data: book},status: :ok
				else
					render json: {status: 'ERROR', message: 'Book not saved', data: book.errors},
					status: :unprocessable_entity
				end

			end

			def destroy
				book = Book.find(params[:id])
				book.destroy 
				render json: {status: 'SUCCESS', message: 'Deleated book', data: book},status: :ok
			end

			private


			def book_params
				params.permit(:book_id, :book_title, :author, :publisher, :year)
			end


		end
	end
end
