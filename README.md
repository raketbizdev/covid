# DW IT Renote Tech Exam

Building Covid Case Api per country group by date.

To test this application here are the process

1. Clone this repo to your local machine either via cli, ssh or https
```
	git clone git@github.com:raketbizdev/covid.git
```
2. `cd /your/location/path/covid`
3. run `bundle command`
4. run `rails db:migrate`
5. run `rails db:seed`
6. run `rspec`
7. open postman if you have postman otherwise use browser
	```
		GET /api/v1/case
		GET /api/v1/top/confirmed?observation_date=yyy-mm-dd&max_limit={integer}
	```

Thanks for the opportunity
Ruel