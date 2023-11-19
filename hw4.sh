import paramiko

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
hostname = 'remote_host'
port = 22
ssh.connect(hostname, port, username='username', password='password')
stdin, stdout, stderr = ssh.exec_command('command_to_execute')

output = stdout.read().decode()

print('Comand Output:, output')

print('Command Error', error)

ssh.close()
