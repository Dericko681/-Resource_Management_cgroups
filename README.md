# -Resource_Management_cgroups
**Goal:** Use `cgroups` to manage system resources for Docker containers under stress.

**Requirements:**

1. Create a Docker container that simulates heavy CPU and memory usage.
2. Configure `cgroups` to:
    - Limit CPU usage to 25% for the container.
    - Restrict memory usage to 512MB.
3. Test the setup by running a resource-intensive script in the container.
4. Use tools like `htop` and `vmstat` to monitor resource consumption.
5. Log and summarize the performance in a report.

To begin

clone this repository to you terminal by running
```sh
git clone https://github.com/Dericko681/-Resource_Management_cgroups.git
```
change your working directory to the repository 
```sh
-Resource_Management_cgroups
```
To Create a Docker container that simulates heavy CPU and memory usage study and run the script in container.sh

```sh
./container.sh
```
To Test the setup by running a resource-intensive script in the container run and study the script in test.sh
```sh
./test.sh
```
To Use tools like `htop` and `vmstat` to monitor resource consumption

```sh
sudo apt install htop & htop
```

**Team**

Derick

Severian

Romeo