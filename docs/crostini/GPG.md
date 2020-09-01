# GPG Installation

## Configuration

1. Generate a key

```
gpg --full-generate-key
```

2. List a key
```
gpg -k
```

## Exchange Keys
1. Export a public key

```
gpg --export [username] > my-public-key.gpg
```

2. Import a Public key
```
 gpg --import my-public-key.gpg
 ```


