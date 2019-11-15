
# Jenkins server

Local jenkins server to test DevOps configs on local projects


## Start server

```
./start.sh
```

> `ctrl + c` to stop the server


## First time setup

* Start server

* Copy **password** from console

> This may also be found inside docker container at: `/var/jenkins_home/secrets/initialAdminPassword`

* Open `http://localhost:8080` and paste **password**

> wait 2 minutes for Jenkins to start


## Create a pipeline

* Open `http://localhost:8080/blue` and paste **password**

* **Create pipeline**

* Where do you store your code? **Git**

* Connect to a Git repository
  
  * Paste git repository url into jenkins

  > Example: `git@github.com:joaogsleite/my-project.git`

  * Copy ssh-key from jenkins into git repository settings (Settings -> Keys)

  > The access key can have just read permission

* OK