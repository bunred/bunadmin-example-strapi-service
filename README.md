# BunAdmin example Strapi (service side)
[BunAdmin](https://github.com/bunred/bunadmin)
[Strapi](https://github.com/strapi/strapi)

A Bunadmin example using Strapi as data resource.

### Demo
[Online demo](https://strapi-demo.bunadmin.com/)

Username / password: `bunadmin_test`

### Test in local

1.Start Strapi service.
```
cd [your test path]
git clone https://github.com/bunred/bunadmin-example-strapi.git
yarn
yarn develop
```

2.Start BunAdmin dashboard
```
cd [your test path]
git clone https://github.com/bunred/bunadmin.git
cd bunadmin

yarn
cp env-example.js env.js
yarn run dev
```

3.Update **env.js** in bunadmin root path
```
DEV: {
    ...
    MAIN_URL: "http://localhost:1337",
    AUTH_URL: "http://localhost:1337",
}
```

4.Add Strapi plugins: user, data resource and blog.

copy objects into array (:bunadmin/plugins-info.json)


[strapi-user-auth](https://github.com/bunred/bunadmin-plugin-buncms-strapi-user)

[data-source-strapi](https://github.com/bunred/bunadmin-plugin-data-source-strapi)

[strapi-blog](https://github.com/bunred/bunadmin-plugin-strapi-blog-example)

array objects:
```
[
  {
    "enable": true,
    "name": "bunadmin strapi user authentication",
    "version": "1.0.0-alpha.1",
    "description": "authentication, user query",
    "license": "Apache-2.0",
    "repository": {
      "type": "git",
      "url": "https://github.com/bunred/bunadmin-plugin-strapi-user.git"
    },
    "keywords": ["user", "auth"],
    "homepage": "https://github.com/bunred/bunadmin-plugin-strapi-user",
    "plugin-id": "bunadmin-plugin-strapi-user",
    "plugin-navigation": "authentication",
    "plugin-author": "bunred",
    "plugin-folder": "buncms-user",
    "plugin-version": "1.0.1",
    "plugin-bunadmin-version": "1.0.1",
    "plugin-download": {
      "type": "git",
      "url": "https://github.com/bunred/bunadmin-plugin-strapi-user/archive/1.0.1.zip"
    }
  },
  {
    "enable": true,
    "name": "bunadmin strapi data resource",
    "version": "1.0.0-alpha.1",
    "description": "data resource for Strapi",
    "license": "Apache-2.0",
    "repository": {
      "type": "git",
      "url": "https://github.com/bunred/bunadmin-plugin-data-source-strapi.git"
    },
    "keywords": ["data source", "source"],
    "homepage": "https://github.com/bunred/bunadmin-plugin-data-source-strapi",
    "plugin-id": "bunadmin-plugin-data-source-strapi",
    "plugin-navigation": "data-source",
    "plugin-author": "bunred",
    "plugin-folder": "data-source-strapi",
    "plugin-version": "1.0.1",
    "plugin-bunadmin-version": "1.0.1",
    "plugin-download": {
      "type": "git",
      "url": "https://github.com/bunred/bunadmin-plugin-data-source-strapi/archive/1.0.0-alpha.1.zip"
    }
  },
  {
    "enable": true,
    "name": "bunadmin-plugin-strapi-blog",
    "version": "1.0.0-alpha.1",
    "description": "blog example for Strapi",
    "license": "Apache-2.0",
    "repository": {
      "type": "git",
      "url": "https://github.com/bunred/bunadmin-plugin-strapi-blog.git"
    },
    "keywords": ["blog", "strapi"],
    "homepage": "https://github.com/bunred/bunadmin-plugin-strapi-blog",
    "plugin-id": "bunadmin-plugin-strapi-blog",
    "plugin-navigation": "blog",
    "plugin-author": "bunred",
    "plugin-folder": "bunadmin-blog",
    "plugin-version": "1.0.1",
    "plugin-bunadmin-version": "1.0.1",
    "plugin-download": {
      "type": "git",
      "url": "https://github.com/bunred/bunadmin-plugin-strapi-blog/archive/1.0.1.zip"
    }
  }
]
```
go to :bunadmin path and run:
```
node plugins-update.js
```

Done.
