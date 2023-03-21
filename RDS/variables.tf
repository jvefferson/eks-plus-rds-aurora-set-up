variable "region" {
	type = string
	description = "Region to be used"
    default = "us-east-1"
}

variable "skip_final_snapshot" {
	type = bool
    description = "Skip snapshot"
    default = true
}