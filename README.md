# Ansible

# Introduction
This README file provides instructions for setting up and running a containerized Flask application using Ansible. The necessary files and configurations for this setup.

# Details about the files
ansible.cfg: Configuration file for Ansible. You will need to define the SSH username and SSH private key file in this file.
ansible.yaml: Ansible playbook for deploying the application.
app.py: The containerized Flask application you'll be running.
Dockerfile: Contains the configurations to create a Docker image for the Flask application.
hosts: Inventory file for Ansible to define target hosts.
secret.yaml: Contains credentials for Docker Hub if you're using a private repository.

# Configuration Steps
Follow these steps to configure and run the Flask application using Ansible:

# SSH Configuration:
Open the ansible.cfg file and set the SSH username and the path to your SSH private key file. Example:
[defaults]
remote_user = your_ssh_username
private_key_file = /path/to/your/ssh/private/key
Docker Hub Credentials (if applicable):

A private Docker repository was used and its credentials are in secret.yaml file 
To view the credentials you can use below command with password 'test' 
ansible-vault view secret.yaml


# Location of Configuration Files:
Ensure that the ansible.cfg, ansible.yaml, and secret.yaml files are placed in the same directory.


# Running the Ansible Playbook:
Run the Ansible playbook using the following command:
ansible-playbook ansible.yaml --vault-id @prompt
Ansible will prompt you for a vault password. In this case, the vault password is 'test', as mentioned in the instructions. (I have excluded the secret.yaml file because it contained access to my dockerhub, you would need to create your own secret.yaml to make it work)

# Accessing the Flask Application:
Once the Ansible playbook completes successfully, you can visit the Flask application by using the IP address of the target host and port 5000. Example: http://your_target_ip:5000. (Make Sure the port 5000 is open and publically accessable.

# Troubleshooting
If you encounter any issues or have questions about the setup process, feel free to reach out for assistance.

Happy coding!
