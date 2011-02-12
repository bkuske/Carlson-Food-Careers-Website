dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "foodcareers"
    password = "foodcareers"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			//dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			//dbCreate = "create-drop"
			url = "jdbc:mysql://localhost/foodcareers_dev"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			//url = "jdbc:hsqldb:mem:testDb"
			url = "jdbc:mysql://localhost/foodcareers_test"
		}
	}
	staging {
		dataSource {
			//dbCreate = "create"
			username = "foodcareers"
			password = "cfc139771a"
            url = "jdbc:mysql://localhost/foodcareers_staging"
		}
	}
	production {
		dataSource {
			//dbCreate = "create"
			username = "foodcareers"
			password = "cfc139771a" 
			url = "jdbc:mysql://localhost/foodcareers_prod"
		}
	}
}
