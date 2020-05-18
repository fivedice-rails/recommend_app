include Sidekiq::Worker

namespace :like do
  desc '랜덤으로 모든 사용자에게 like movies 10개 부여'
  task :movie => :environment do

    User.all.each do |user|
      movies = Movie.limit(10).order("RANDOM()")
    
      movies.each do |movie|
        unless user.likes?(movie)
          user.like(movie)
        end
      end
    end
  end

  desc '랜덤으로 모든 사용자에게 like books 10개 부여'
  task :book => :environment do

    User.all.each do |user|
      books = Book.limit(10).order("RANDOM()")
    
      books.each do |book|
        unless user.likes?(book)
          user.like(book)
        end
      end
    end
  end
end