## about
- Rails version             5.2.4.2
- Ruby version              2.6.3-p62 (x86_64-darwin19)
- RubyGems version          3.0.3
- Rack version              2.2.2
- JavaScript Runtime        Node.js (V8)
- Database adapter          sqlite3

## init
```bash
bundle install
brew install redis
redis-server # 다른 터미널
bundle exec sidekiq # 다른 터미널
rake db:migrate
rake db:seed
rails like:movie
rails like:book
```
