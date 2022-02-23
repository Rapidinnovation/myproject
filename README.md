
# Ten-Finance Backend

This is the backend part of Ten-finace which consists of crons to fetch data from the contract and API to display the changesin front-end.

## Installation

Clone the project

```bash
  git clone git@github.com:tenfinance/tenlend-backend.git
```



Install dependencies

```bash
  npm install
```
    
## Running the application

Start the server

```bash
  # development
  $ npm run start

  # watch mode
  $ npm run start:dev

  # production mode
  $ npm run start:prod
```


## Migration

Before running the application we need to migrate the entities to the database

To generate Migration

```bash
  npm run typeorm:generate <name_of_migration>
```

To run the migration

```bash
  npm run typeorm:run
```

#### NOTE --> After generating the migration, first use ```npm start``` to start the server and then stop the server. After then only run the migration run command.