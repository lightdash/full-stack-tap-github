# Modern data pipeline for exploring github data

Explore analytics data for a github repo using a best-practice modern data pipeline:

1. Meltano/singer to **E**xtract raw data from the github API
2. Meltano/postgres to **L**oad raw github data into a postgres database
3. dbt to **T**ransform raw github data into explorable tables
4. Lightdash to visualise and explore the transformed tables

![screenshot](./docs/screenshot.png)

## Requirements

* docker

## Usage

### 1. Clone the repo.
```
git clone git@github.com:lightdash/full-stack-tap-github.git
```

### 2. Configure  your credentials
Head into the `full-stack-tap-github` directory and create a file called `.env`
```
cd full-stack-tap-github
touch .env
```

Add the following credentials to your `.env` file. (**Note**: if you're new to GitHub personal access tokens, check out [how to create/find them here](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token).)
```
TAP_GITHUB_ACCESS_TOKEN=<your personal access token for github>
TAP_GITHUB_REPOSITORY="<your github repo e.g. lightdash/lightdash>" # make sure you add quotes around this and the one below!
TAP_GITHUB_START_DATE="<start date e.g. 2020-10-01T00:00:00Z>"
```

### 2. Extract GitHub data, load it to postgres, transform it
From within the `full-stack-tap-github` directory, run:
```
docker compose run meltano
```

### 3. Visualise and explore data

```
docker compose up lightdash
```

Open [http://localhost:8080](http://localhost:8080)
