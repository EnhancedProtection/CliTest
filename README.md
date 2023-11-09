# Testing cli!
<p align="center">
    <br>
    <h1>
        How To Use Git CLI
    </h1>
    <br>
</p>

#### For Termux
```bash
apt install openssh
```

#### For Linux

```bash
apt install ssh
```

Configure your username with this command

```bash
git config --global user.name "username"
```

Now configure your email with this command
```bash
git config --global user.email "email@emaple.com"
```

#### Note :
- The username and email must match to your github account
- The username may be case sensitive

#### Now create a directory to store ssh key
```bash
mkdir -p ~/.ssh
```

#### Create ssh key using this command
```bash
ssh-keygen -t rsa -b 2048 -C "email@example.com" -f ~/.ssh/id_rsa
```


You will be asked for some info fill them according to your choice or just press enter and enter again until it finishes.


#### Configure github account with cli

As we have created the ssh-key now its time to add that key into our github account by which we can authenticate to account by using CLI.
<br>
<br>
To do this the first steps is that we need to copy the public key of ssh for that we will be using a command

```bash
cat ~/.ssh/id_rsa.pub
```


Now copy the text (key) shown on the to the clipboard and follow the next steps 

1. Go to browser and log in to your github account
2. Click on Setting
3. Click on SSH and GPG Keys
4. Click on "New SSH key"
5. Now paste the ssh key in the "key" section
you can choose a title whatever you want and the Key type must be set to "Authentication Key"
Now click on "Add SSH key"


## Congratulation you have configured your git!

