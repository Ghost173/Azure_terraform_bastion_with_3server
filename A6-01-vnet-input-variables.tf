#avirtual network name
variable "Vnet_name" {
  description = "virtual network name"
  type = string
  default = "vnet"
}


#virtual_network address space
variable "vnet_address" {
  description = "virtual network ip"
  type = list(string)
  default = [ "10.0.0.1/16" ]
}

#ubutu subnet 
variable "ubuntu_subnet_name" {
  description = "ubuntu subnet name"
  type = string
  default = "ubuntu_subnet"
}

variable "ubuntu_subnet_address" {
  description = "ubuntu subnet ip define"
  type = list(string)
  default = [ "10.0.1.0/24" ]
}


#redhat subnet 
variable "redhat_subnet_name" {
  description = "redhat subnet name"
  type = string
  default = "redhat_subnet"
}

variable "redhat_subnet_address" {
  description = "redhat subnet ip define"
  type = list(string)
  default = [ "10.0.2.0/24" ]
}

#windows subnet 
variable "windows_subnet_name" {
  description = "windows subnet name"
  type = string
  default = "windows_subnet"
}

variable "windows_subnet_address" {
  description = "windows subnet ip define"
  type = list(string)
  default = [ "10.0.3.0/24" ]
}


#bastion subnet 
variable "bastion_subnet_name" {
  description = "bastion subnet name"
  type = string
  default = "bastion_subnet"
}

variable "bastion_subnet_address" {
  description = "bastion subnet ip define"
  type = list(string)
  default = [ "10.0.3.0/24" ]
}

