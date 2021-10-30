
-- Use the `ref` function to select from other models

select *
from {{ ref('article_counts_by_date') }}
where article_count >= 5
