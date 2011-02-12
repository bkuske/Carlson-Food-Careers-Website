changeSet(id:'ChangeAdminPasswordToSomethingMemorable', author:'Colin') {
	def mySchweetHashedSomething = new org.jsecurity.crypto.hash.Sha1Hash("flash").toHex()
	update(tableName:"jsec_user") {
		column(name:"password_hash", value:mySchweetHashedSomething)
	}
}

