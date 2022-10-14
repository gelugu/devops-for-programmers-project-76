vault_password_file=.vault.pass

install:
	ansible-galaxy install -r requirements.yml

deploy: setup-server setup-ssl setup-monitoring

setup-server:
	ansible-playbook playbook.yml --vault-password-file ${vault_password_file}

setup-ssl:
	ansible-playbook ssl.yml --vault-password-file ${vault_password_file}

setup-monitoring:
	ansible-playbook monitoring.yml --vault-password-file ${vault_password_file}

encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml --vault-password-file .vault.pass

decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml --vault-password-file .vault.pass
