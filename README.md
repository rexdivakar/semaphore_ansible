# Semaphore_ansible

## Prerequisites

```shell
pip install ansible
pip install ansible-lint
sudo apt install sshpass
```

## Ansible Commands

```shell
ansible-inventory -i inventory --list
```

### General Ping

```shell
ansible all -i inventory -m ping

ansible dell -i inventory -m ping
```

### Fetch Uptime

```shell
ansible all -i inventory -a "uptime"
```

### AdHoc Execution

```shell
ansible dell -i inventory -a "ls -lrths /tmp" --become
```

## Ansible Playbook execution

```shell
ansible-playbook ./playbooks/cloud.yml 
```

### Fetch Server details

```shell
ansible dell -i inventory -m setup -a "filter=*ipv*"

ansible all -m setup
```

## Initial setup (Ping)

```shell
ansible -i ./inventory/hosts dell -m ping --user pi --ask-pass
```

### Without Password

```shell
ansible -i ./inventory/hosts dell -m ping --user pi
```

## PlayBook deployment

```shell
ansible-playbook ./playbooks/apt.yml --user pi -i ./inventory/hosts
```

## Execute the playbooks as per user limit

```shell
ansible-playbook ./playbooks/docker_installation.yml --limit=server1-th
```

## Ansbile.cfg

adding the variables for ansible under .cfg files allows us to skip passing parameters during runtime

### Generate sample config file

```shell
ansible-config init --disabled > templates/ansible.cfg
```