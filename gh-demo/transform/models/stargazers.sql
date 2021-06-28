WITH final AS (

    SELECT
      user_id,
      DATE(starred_at) as date_starred_at
    FROM {{ source('raw_singer_tap_github', 'stargazers') }}

)

SELECT * FROM final
