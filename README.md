## Usefull aliases

```bash
alias compose="docker-compose"
alias run="docker-compose run --rm"
alias down="docker-compose down"
alias start="docker-compose up"
```

## To start the configuration

```bash
docker-compose nginx -d
```

## Run commands
```bash
docker-compose run --rm <CONTAINER_TAG> <COMMAND>
```

### Examples 

#### Install a fresh Laravel Project into src directory
```bash
docker-compose run --rm composer create-project laravel/laravel .
```

#### Install node dependencies
```bash
docker-compose run --rm npm npm install
```

#### Run a migration in Laravel
```bash
docker-compose run --rm artisan migrate
```

## NOTE

### if you install `laravel/breeze` you need to change vite.config.js to this

```js
export default defineConfig({
    server: {
        hmr: {
            host: "localhost",
        }
    },
    /* rest of the code */
});

```
