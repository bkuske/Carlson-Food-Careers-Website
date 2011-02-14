changeSet(id:'AddHideFromHomePageColumnToJobOpportunity', author:'Colin') { 
	def tblName = 'job_opportunity'
	def colName = 'hide_from_home_page'
 	addColumn(tableName:tblName) {
		column(name:colName, type:"bit(1)"){
			constraints(nullable:true)
		}
	}
	update(tableName:tblName) {
		column(name:colName, valueNumeric:0)
	}
}
