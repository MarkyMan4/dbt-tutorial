select 
    topic_name, 
    count(*) as article_count
from {{ ref('article_info') }}
group by topic_name
