# BunAdmin example Strapi (service side)
[BunAdmin](https://github.com/bunred/bunadmin)
[Strapi](https://github.com/strapi/strapi)

A Bunadmin example using Strapi as data resource.

### Online demo
[https://blog.eg.bunadmin.com/](https://strapi-demo.bunadmin.com/)

Username: `admin`, `reviewer`, `user` **different menu**

Password: `bunadmin`

### Local test

1.Start Strapi service.
```
cd [Test folder]
git clone https://github.com/bunred/bunadmin-example-strapi.git bunadmin-example-strapi-service
cd bunadmin-example-strapi-service
yarn
yarn develop
```

2.Start BunAdmin dashboard
```
cd [Test folder]
git clone https://github.com/bunred/bunadmin.git bunadmin-example-strapi
cd bunadmin-example-strapi

yarn
cd packages/bunadmin
cp e.g./env-*.env env-dev.env
```

3.Use environment variables

Replace the content of `bunadmin/env-dev.env` with the following:
```
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

Login with
- Username: `admin`, `reviewer`, `user` **different menu**
- Password: `bunadmin`

## Used plugins:

[strapi-user-auth](https://github.com/bunred/bunadmin-plugin-buncms-strapi-user)

[data-source-strapi](https://github.com/bunred/bunadmin-plugin-data-source-strapi)

[strapi-blog](https://github.com/bunred/bunadmin-plugin-strapi-blog-example)
