cluster-up:
	ansible-playbook -v -i inventory.cfg provision.yaml \
	-e cluster_up=true \
	-e cluster_inventory=bastion \
	-e cluster_public_hostname=35.237.40.111.nip.io \
	-e cluster_routing_suffix=35.237.40.111.nip.io

cluster-down:
	ansible-playbook -v -i inventory.cfg provision.yaml \
	-e cluster_down=true \
	-e cluster_inventory=bastion

cluster-reset:
	ansible-playbook -v -i inventory.cfg provision.yaml \
	-e cluster_reset=true \
	-e cluster_inventory=bastion