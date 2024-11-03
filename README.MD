### Usage:

- Copy paste the below in your terminal,

```
sudo tee /etc/yum.repos.d/materialgram.repo <<EOF
[Materialgram]
name=Materialgram RPM (From burhancodes) - x86_64 - Updates
baseurl=https://burhancodes.github.io/materialgram-repo/
enabled=1
gpgcheck=0
metadata_expire=1h
EOF
```

- Then run,
```
sudo dnf install materialgram
```
