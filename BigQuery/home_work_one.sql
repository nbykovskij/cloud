Если под полпулярными сайтами имелись ввиду "Сайты с которых переходят" то вот:

select 
trafficSource.source,
    count(distinct visitId) as count_sess
from 
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`, unnest(hits) as hit
where 
    _table_suffix BETWEEN FORMAT_DATE("%Y%m%d", '2016-01-01') 
    AND FORMAT_DATE("%Y%m%d", '2016-12-31')
group by 1
order by 2 desc
limit 10

[
  {
    "source": "(direct)",
    "count_sess": "179605"
  },
  {
    "source": "youtube.com",
    "count_sess": "160770"
  },
  {
    "source": "google",
    "count_sess": "61011"
  },
  {
    "source": "Partners",
    "count_sess": "6609"
  },
  {
    "source": "analytics.google.com",
    "count_sess": "5186"
  },
  {
    "source": "dfa",
    "count_sess": "2951"
  },
  {
    "source": "baidu",
    "count_sess": "2238"
  },
  {
    "source": "google.com",
    "count_sess": "1754"
  },
  {
    "source": "sites.google.com",
    "count_sess": "1543"
  },
  {
    "source": "siliconvalley.about.com",
    "count_sess": "1235"
  }
]
