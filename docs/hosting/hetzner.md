# [Hetzner](https://www.hetzner.com)

## Install the Hetzner Cloud CLI
```bash
brew install hcloud
```

## Create a Hetzner API token
1. Visit [Hetzner Cloud Console](https://console.hetzner.cloud/).
2. Under the under the Projects tab, click `CREATE SERVER` at the bottom of the Default project panel.
3. Click on `Security` at the bottom of the left sidebar.
4. Click the `API Tokens` tab.
5. Click the "Generate API Token" button at the top-right of the page.
6. Enter a description. Recommend the user's name and/or the project name of this token.
7. Select "Read and Write" for the permissions since we are creating servers.
8. Click the `Generate API token` button.
9. Copy the API token.

## Create a Hetzner Cloud context (aka session)
```bash
hcloud context create a1web
Token: <paste your API token here>Context a1web created and activated

hcloud context list
ACTIVE   NAME 
*        a1web
```

The API token and context name are stored in `~/.config/hcloud/cli.toml`.

## Add a SSH key

From your console, run the following command to add a SSH key.
```bash
hcloud ssh-key create --name "my-ssh-key" --public-key "$(cat ~/.ssh/id_ed25519.pub)"
```
Or, if using the Hetzner Cloud UI:

Copy the public key to your clipboard.
```bash
cat ~/.ssh/id_ed25519.pub | pbcopy
```

Visit [Hetzner Cloud Console](https://console.hetzner.cloud/).
1. Under the under the Projects tab, click `CREATE SERVER` at the bottom of the Default project panel.
2. Click on `Security` at the bottom of the left sidebar.
3. Click the `SSH Keys` tab.
4. Click the `Add SSH Key` button at the top-right of the page.
5. Enter a name for the SSH key.
6. Paste the public key from your clipboard.
7. Click the `Add SSH Key` button.

## Create a Hetzner server

First, list the region to host the server. You can use `grep` to filter the country.
```bash
hcloud locations list | grep US
```

Next, list the available images. You can use `grep` to filter the OS.
```bash
hcloud image list | grep ubuntu
```

Next, list the available server types. You can use `grep` to filter the CPU and memory.
```bash
hcloud server-type list | grep -E 'shared[[:space:]]+x86[[:space:]]+2\.0 GB'
```

Next, list the available SSH keys.
```bash
hcloud ssh-key list
```

Finally, create the server based on the region, image, and server type.
```bash
hcloud server create --name "server-name" --image "ubuntu-24.04" --ssh-key "my-ssh-key" --location "ash" --type "cpx11"

 ✓ Waiting for create_server       100% 28s (server: 123456789, image: 161547269)                                          
 ✓ Waiting for start_server        100% 28s (server: 123456789)                                                            
Server 123456789 created
IPv4: 1.2.3.4
IPv6: ---:---:--:----::1
IPv6 Network: ----:---:--:----::/64
```
This command will create a budget-friendly, shared server with the name `server-name`, installed with the `Ubuntu 24.04` OS in Ashburn, Virginia. The server is configured for your credentials to SSH into the server using:

From your console, run the following command to SSH into the server.
```bash
ssh -i ~/.ssh/id_ed25519 root@<server-ip>
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
```

## Additional Resources
- [hcloud: Command-line interface for Hetzner Cloud](https://github.com/hetznercloud/hcloud-cli)
- [How-to: Hetzner Cloud CLI](https://community.hetzner.com/tutorials/howto-hcloud-cli)
- [Controlling Hetzner with CLI](https://willschenk.com/labnotes/2023/controlling_hetzner_with_cli/)

