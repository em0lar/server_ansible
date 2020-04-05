ANSIBLE=ansible-playbook

initial:
	$(ANSIBLE) --user root -t base ./playbooks/site.yml

site:
	$(ANSIBLE) ./playbooks/site.yml

web:
	$(ANSIBLE) -t web ./playbooks/site.yml

mail:
	$(ANSIBLE) -t mail ./playbooks/site.yml