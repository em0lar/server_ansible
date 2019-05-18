ANSIBLE=ansible-playbook

site:
	$(ANSIBLE) ./playbooks/site.yml
