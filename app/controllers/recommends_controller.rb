class RecommendsController < ApplicationController
  before_action :authenticate_user!
  def index
    @liked_movies = current_user.liked_movies
    @recommend_movies = current_user.recommended_movies
    @liked_books = current_user.liked_books
    @recommend_books = current_user.recommended_books
  end
end
