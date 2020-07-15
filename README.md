# Nigerian API Application

## University API

# App Details
.......
................................................
................................

The app will consist of:

    └──Log-In Screen

    └──Sign-Up Screen

    └──

    └──

    └──


# Proposed Stack
JavaScript 

# Top-level directory layout

    📦NigeriaAPI
        ┗ 📦.github
            ┗ 📦workflows
                ┣ 📜ci.yml
        📦.vscode
            ┣ 📜settings.json
        📦api
            ┗ 📦bin
                ┣ 📜www
            ┗ 📦config
                ┣ 📜config.js
            ┗ 📦controllers
                ┗ 📦email
                    ┗ 📦templates
                        ┣ 📜signup.html
                    ┣ 📜helper.js
                ┣ 📜user.js
            ┗ 📦helpers
                ┣ 📜authHelper.js
                ┣ 📜mailer.js
                ┣ 📜validationSchema.js
            ┗ 📦middlewares
                ┣ 📜validationMid.js
            ┗ 📦migrations
                ┣ 📜20200711012227-create-users.js
            ┗ 📦models
                ┣ 📜index.js
                ┣ 📜users.js
            ┗ 📦routes
                ┣ 📜index.js
            ┗ 📦test
                ┣ 📜test.js
        ┣ 📜app.js
        ┣ 📜.env.example
        ┣ 📜.eslintrc.js
        ┣ 📜.gitignore
        ┣ 📜.sequelizerc
        ┣ 📜package.json
        ┣ 📜package-lock.json
        ┣ 📜README.md

## How to setup project and run locally

### Clone the repository 

```
git clone https://github.com/WuraLab/NigeriaApi.git
```

### Install all dependencies

Using npm

```
npm install
```

### Check out to the branch

```
git checkout <branch_name>
```

### To start the App and run locally

Using node
```
npm start
```    
or nodemon(make sure you have nodemon installed on your local sysytem, perhaps installed globally using)

```
npm install -g nodemon
```    

then you run the app with 

```
npm run dev
```    
