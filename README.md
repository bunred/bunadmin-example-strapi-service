# BunAdmin example Strapi (service side)
[BunAdmin](https://github.com/bunred/bunadmin)
[Strapi](https://github.com/strapi/strapi)

This example includes user authentication, menu control, file upload, relational data operations, etc.

## Online demo
[https://blog.eg.bunadmin.com/](https://strapi-demo.bunadmin.com/)

***It takes less time but cannot be deleted, and the test data will be reset from time to time***

Login with any user below (different menus)
- Username: `admin`, `reviewer`, `user`
- Password: `bunadmin`

![Blog Post](https://gblobscdn.gitbook.com/assets%2F-M1ZbjnBaWO_NJOdj8_A%2F-MHlKrSo5A7uYDJDV45k%2F-MHlKxF4-lohTzN3gsiA%2Fblog-post-strapi.png)

## Local test
***It takes more time, but the data and permissions are completely controlled by you***

1.Start Strapi service
``` shell
cd [Test folder]
git clone https://github.com/bunred/bunadmin-example-strapi.git bunadmin-example-strapi-service
cd bunadmin-example-strapi-service
yarn
yarn develop
```

2.Start BunAdmin dashboard
``` shell
cd [Test folder]
git clone https://github.com/bunred/bunadmin.git bunadmin-example-strapi
cd bunadmin-example-strapi

yarn
cd packages/bunadmin
cp e.g./env-*.env env-dev.env
```

3.Use environment variables

Replace the content of `bunadmin/env-dev.env` with the following:
``` shell
# ENV_PATH=/absolute/path/to/env-demo.env yarn dev

# BunAdmin
NEXT_PUBLIC_SITE_NAME=BunAdmin DEV
NEXT_PUBLIC_AUTH_PLUGIN=bunadmin-auth-strapi
NEXT_PUBLIC_MAIN_URL=http://localhost:1337/api/v1
NEXT_PUBLIC_AUTH_URL=http://localhost:1337
NEXT_PUBLIC_UPLOAD_URL=http://localhost:1337
#NEXT_PUBLIC_FILE_PREVIEW_URL=
NEXT_PUBLIC_SITE_URLS=http://192.168.2.2:51802/api/v1, http://192.168.2.2:51803/api/v1
NEXT_PUBLIC_I18N_CODE=en
NEXT_PUBLIC_ON_I18N=true
NEXT_PUBLIC_ON_SETTING=true
NEXT_PUBLIC_ON_DOC=true
NEXT_PUBLIC_ON_MOCK=false
NEXT_PUBLIC_NOTIFICATION_PLUGIN=bunadmin-plugin-notification
NEXT_PUBLIC_IGNORED_PLUGINS=bunadmin-plugin-blog, bunadmin-upload-buncms
NEXT_PUBLIC_PATHS_WITHOUT_LAYOUT=/company/about, /company/contact
NEXT_PUBLIC_PATHS_WITHOUT_AUTH=/company/about, /company/contact
NEXT_PUBLIC_OFF_NOTIFICATION_INTERVAL_COUNT=true

# Upload Plugin
NEXT_PUBLIC_UPLOAD_STRAPI_ROLE=Admin,Reviewer

# Auth Plugin
NEXT_PUBLIC_AUTH_STRAPI_ROLE=Admin

```

4.Start bunadmin

**Run in `packages/bunadmin/`**
```shell script
ENV_PATH=env-dev.env yarn dev
```

Open [http://localhost:1911/](http://localhost:1911/)

Login with any user below (different menus)
- Username: `admin`, `reviewer`, `user`
- Password: `bunadmin`

## Used plugins:

[bunadmin-plugin-example-blog](https://github.com/bunred/bunadmin/tree/master/plugins/bunadmin-plugin-example-blog)

[bunadmin-auth-strapi](https://github.com/bunred/bunadmin/tree/master/plugins/bunadmin-auth-strapi)

[bunadmin-upload-strapi](https://github.com/bunred/bunadmin/tree/master/plugins/bunadmin-upload-strapi)

[bunadmin-source-strapi](https://github.com/bunred/bunadmin/tree/master/packages/bunadmin-source-strapi)
