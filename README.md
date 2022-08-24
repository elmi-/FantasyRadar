## Fantasy Radar 
------------------------------  

Fantasy sports web app built using Ruby on Rails that sends text notifications to users to stay up to date on specific player news/updates.

### Project Setup
* Use Ruby version
    2.3.5  

## System dependencies  
    Install dependencies by running command 'bundle install'

## Configuration
    create new file in the folder config with name "database.yml"  

    Copy contents from database.example.yml to database.yml 

    create .env in project folder from .env.example  
  
## Database creation
    To run db migratation scripts  
        bin/rake db:migrate

    To reset Db, run  
        bin/rake db:reset

    To run the project  
        bin/rails server -b 0.0.0.0  

### Dependencies  
* Rails 4.2
* PostgreSQL 9.x
* twilio-ruby