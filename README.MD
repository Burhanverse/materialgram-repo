### Usage:

- Copy paste the below in your terminal,

```
sudo tee /etc/yum.repos.d/materialgram.repo <<EOF
[Materialgram]
name=Materialgram RPM 
baseurl=https://burhancodes.github.io/materialgram-repo/
enabled=1
gpgcheck=0
EOF
```

- Then run,
```
sudo dnf install materialgram
```