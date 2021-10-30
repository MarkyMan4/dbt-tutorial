select *
from {{ ref('high_article_counts') }}
where article_count < 5
