cluster-up:
	ansible-playbook -v provision.yaml \
	-e cluster_up=true

cluster-down:
	ansible-playbook -v provision.yaml \
	-e cluster_down=true

cluster-reset:
	ansible-playbook -v provision.yaml --ask-sudo-pass \
	-e cluster_reset=true