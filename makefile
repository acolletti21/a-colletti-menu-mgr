
BE=bundle exec

install:
	bundle install

seed:
	$(BE) rake db:drop
	$(BE) rake db:create
	$(BE) rake db:migrate
	$(BE) rake db:seed

server:
	$(BE) rails s

test: install
	$(BE) rspec