# BunAdmin example Strapi (service side)
[BunAdmin](https://github.com/bunred/bunadmin)
[Strapi](https://github.com/strapi/strapi)

A Bunadmin example using Strapi as data resource.

### Demo
[Online demo](http://bunadmin-example-strapi.herokuapp.com/)

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

4.Add Strapi plugins: user, data resource and blog example.
```
cd [bunadmin path]/plugins/
git clone https://github.com/bunred/bunadmin-plugin-buncms-strapi-user.git buncms-user
git clone https://github.com/bunred/bunadmin-plugin-data-source-strapi.git data-source-strapi
git clone https://github.com/bunred/bunadmin-plugin-strapi-blog-example.git bunadmin-blog
```

Done.

[bunadmin](https://github.com/bunred/bunadmin)

[strapi-user-auth](https://github.com/bunred/bunadmin-plugin-buncms-strapi-user)

[data-source-strapi](https://github.com/bunred/bunadmin-plugin-data-source-strapi)

[strapi-blog](https://github.com/bunred/bunadmin-plugin-strapi-blog-example)
