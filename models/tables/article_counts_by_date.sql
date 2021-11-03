{{ config(materialized='table') }}

select 
    substr(date_published::varchar, 1, 10) as date,
    count(*) as article_count
from {{ ref('article') }}
group by substr(date_published::varchar, 1, 10)