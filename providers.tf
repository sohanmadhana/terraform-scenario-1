provider "tls" {
  
}
provider "aws" {
    region = "us-west-1"
    shared_credentials_file = <provide-location-of-the-aws-credentials-file>
  
}
