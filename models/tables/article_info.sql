-- contains relevant info about an article for further analysis
select 
	art.id as article_id, 
	art.headline, 
	art.date_published,
	nlp.sentiment,
	nlp.subjectivity, 
	nlp.topic,
	nlp.keywords,
	lkp.topic_name
from 
	{{ ref('article') }} art
	inner join {{ ref('article_nlp') }} nlp 
		on art.id = nlp.article_id
	inner join {{ ref('topic_lkp') }} lkp
		on nlp.topic = lkp.topic_id
