output "instance_ip" {
  value = ibm_compute_vm_instance.code_server_node.ipv4_address
}