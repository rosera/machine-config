# Install Theia IDE


## Virtual Machine

TBC


## Cloud Run - Flutter and Dart

* Master list of Extension - [Link](https://github.com/theia-ide/theia-apps/blob/master/theia-full-docker/latest.package.json)

- [x] [Theia IDE repo](https://github.com/theia-ide/theia-apps/tree/master/theia-full-docker)
- [x] Dockerfile - __NOTE:__ exposed port is `3000`
- [x] Download [latest-package.json](https://github.com/theia-ide/theia-apps/blob/master/theia-full-docker/latest.package.json)
- [x] Add [Dart extension](https://github.com/theia-ide/theia-apps/blob/master/theia-full-docker/latest.package.json) 
- [x] Add [Flutter extension](https://github.com/theia-ide/theia-apps/blob/master/theia-full-docker/latest.package.json)


#### Change the latest-package.json to package.json
* Remove the header from the file latest-package.json 

#### Directory should contain the following files
```
.
├── Dockerfile
└── latest.package.json
```

#### Build the image

Use Docker
```
 docker build -t gcr.io/$GOOGLE_CLOUD_PROJECT/qwiklabs-theiaide:0.5 .
```

Push image to Container Registry
```
docker push
```

Use Cloud Build
```
gcloud builds submit --tag gcr.io/$GOOGLE_CLOUD_PROJECT/qwiklabs-theiaide:0.5
```

Deploy the image to Cloud Run

* Unauthenticated
* Port 3000
* Memory 512MB


