easy way to use more than one account in a single pc

1. Don't login or use https
2. Prefere ssh for every step.


1. First generate a ssh key with your github email `ssh-keygen -t rsa -C "youremail@example.com"`
2. this will ask for a file name with the ssh key in it, give it a unique name with the path, ex: `~/.ssh/id_rsa_Yourname/companyname`
3. now we have a ssh key that is linked to our email id, a public key is generated in `id_rsa_YOURNAME.pub`, a private key is generated in `id_rsa_YOURNAME`
4. Now we use this public key to setup our account.
5. type `cat ~/.ssh/id_rsa_YOURNAME.pub` this will show you the key in this file, copy the entire text, the key looks like 
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAadsfQDkRwVPbDqC18O9CxyHfUzbsOcv2FzVPq9Q1Ts17EywmQ+mhxJ2LBIWLmncVdoFGDqC+mYR3V0cvXTIHE5o6q1hfXPtzvug3DasdfkgJzoTAaKIadfLEy0kZK2+zMS2zbVBasdfasdfK9xns6Zjz1FI10Xo3DOXaiIBYQAFu8e+LlxMNCIxtXhOTdZgoMobnZbElpqIadsfL7LmDdCQqX4ecDWayFQ5/dJh+HpOa6D7eSAKc4UYbTwRXnIUaARRbAj4OquOrzuQ/I7tv+GYBV/Ekpp8/nD4d3/ttCvcZ7bAmHHmN7/T+HJ9QsuQsX6s+TrIM/FEw8CQTCEORCoBaWyDzhv96vPLs8WLukRoH youremail@example.com
```
6. go to your github account settings find ssh keys and add this key, give it a name.
7. Now when you use your pc to pull push you have to always use github ssh.
8. Create a config file to make this easy.
9. `echo > ~/.ssh/config`, add these lines 
```
#Default GitHub
# uniquely identify your account
Host github.com
  HostName github.com
  User git
  # uniquely identify your login, with the private key for the public key
  IdentityFile ~/.ssh/id_rsa_YOURNAME

Host github-COMPANY
  HostName github.com
  User git
  IdentifyFile ~/.ssh/id_rsa_COMPANY
```
10. Now type `ssh-add ~/.ssh/id_rsa_YOURNAME`, this will make your key available when needed.If you face any issues, google them and solve them.
11. go to your git repo and clone it with ssh, `git clone git@github.com:yourname/gitreponame.git`, don't hit enter just yet, to make pushing easy change the repo url wit the hostname you gave, for me it is 
12. `git clone git@github-COMPANY:yourname/gitreponame.git`, now when you hit enter your ssh key will be linked to your another git account.
13. To verify type `git remote -v` this should show `git@github-COMPANY` as the prefix, that means your ssh setup is working.
14. now you can work with this repo normally
15. When you want to push, just type `git push` or `git push origin master` 
