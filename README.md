# Modern data stack for exploring github data

## Requirements

* docker
* a github repo

## Usage

### 1. Configure  your credentials
```
export TAP_GITHUB_ACCESS_TOKEN=<your personal access token for github>
export TAP_GITHUB_REPOSITORY="<your github repo e.g. lightdash/lightdash>"
export TAP_GITHUB_START_DATE="<start date e.g. 2020-10-01T00:00:00Z>"
```


### 2. Extract github data, load it to postgres, transform it

```
docker compose run meltano
```

### 3. Visualise and explore data

```
docker compose up lightdash
```

Open [http://localhost:8080](http://localhost:8080)
