# [Vultr](https://www.vultr.com)

TODO: Add Vultr documentation

## Prerequisites

1. Get your [Vultr API key](https://my.vultr.com/settings/#settingsapi)

```bash
export VULTR_API_KEY='<api_key_from_vultr_account>'
vultr-cli account info
```

2. Add your [SSH key](https://my.vultr.com/settings/#settingsssh)

```bash
vultr-cli ssh-key create --name "my-ssh-key" --key "$(cat ~/.ssh/id_ed25519.pub)"
```

3. Setup [Vultr CLI](https://github.com/vultr/vultr-cli)

Install the Vultr CLI
```bash
brew tap vultr/vultr-cli
brew install vultr-cli
```

## Create a Vultr instance (aka server)

First, list Vultr regions 
```bash
vultr-cli regions list | grep US
```

Then, list Vultr plans supported by the selected region
```bash
vultr-cli plans list | grep dfw
vultr-cli plans list --type='vc2' | grep dfw
```

Then, list operating systems supported by Vultr
```bash
vultr-cli os list | grep ubuntu
```

Next, list your SSH keys registered with Vultr
```bash
vultr-cli ssh-key list
```

Finally, create a Vultr instance
```bash
vultr-cli instance create \
    --region dfw \
    --plan vc2-1c-1gb \
    --os 1743 \
    --label my-server \
    --ipv6 false \
    --ssh-key <ssh-key-id>
```

Your Vultr instance will take a few minutes to boot up. You can check the status of your instance with the following command:
```bash
vultr-cli instance list
```

# Additional Resources
- [Vultr CLI](https://github.com/vultr/vultr-cli)
- [Vultr CLI Reference](https://docs.vultr.com/reference)
- [How to Easily Manage Instances with Vultr CLI](https://blogs.vultr.com/How-to-Easily-Manage-Instances-with-Vultr-CLI)
