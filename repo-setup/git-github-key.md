
# GIT

- install git
- create key pair
- install tig / gitextensions

```sh
# create a key
ssh-keygen -t rsa -b 4096 -f ~/.ssh/<key-name>

# -b bits used in encryption
ssh-keygen -t ed25519 -b 8192 -f ~/.ssh/<key-name>

# pwsh
ssh-keygen -t ed25519 -b 8192 -f $HOME/.ssh/<key-name>
```

### setup in Windows

- ssh key needs to be loaded

```powershell
# start ssh-agent service (as admin)
Get-Service ssh-agent | Set-Service -StartupType Automatic -PassThru | Start-Service

# add the private key (as non-admin!)
ssh-add $HOME/.ssh/<key-name>
```

### connect to github

https://help.github.com/articles/testing-your-ssh-connection/

### Attempt to ssh to GitHub

```sh
ssh -T git@github.com
```

### Configuring Git to Leverage the Windows SSH-Agent (run as admin)

 -  if the auth with github works , but not the repo updates, do this:

```sh
git config --global core.sshCommand C:/Windows/System32/OpenSSH/ssh.exe
```