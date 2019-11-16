ANSIBLE=ansible-playbook

site:
	$(ANSIBLE) ./playbooks/site.yml

web:
	$(ANSIBLE) -t web ./playbooks/site.yml

mail:
	$(ANSIBLE) -t mail ./playbooks/site.yml