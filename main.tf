provider "dominos" {
  first_name = "John"
  last_name = "Doe"
  email_address = "jdoe@hashicorp.com"
  phone_number = "1555555555"

}

data "dominos_address" "addr" {
  street = "101 2nd Street"
  city = "San Francisco"
  state = "CA"
  zip = "94105"
}

data "dominos_store" "store" {
  address_url_object = "${data.dominos_address.addr.url_object}"
}
