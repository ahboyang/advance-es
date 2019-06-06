output "es-aa-ingress_id" {
  value = "${aws_security_group.es-aa-ingress.id}"
}

output "es_aa_node1_id" {
  value = "${aws_instance.es_aa_node1.id}"
}

output "es_aa_node2_id" {
  value = "${aws_instance.es_aa_node2.id}"
}

output "es_aa_node3_id" {
  value = "${aws_instance.es_aa_node3.id}"
}

