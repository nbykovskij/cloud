select 
    hit.page.pagePath, 
    count(distinct visitId) as cnt_visit
from 
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`, unnest(hits) as hit
where 
    _table_suffix BETWEEN FORMAT_DATE("%Y%m%d", '2016-01-01') 
    AND FORMAT_DATE("%Y%m%d", '2016-12-31')
group by 
    1
order by
    2 desc
limit 
    10
    
 [
  {
    "pagePath": "/home",
    "cnt_visit": "353091"
  },
  {
    "pagePath": "/google+redesign/apparel/men++s/men++s+t+shirts",
    "cnt_visit": "39328"
  },
  {
    "pagePath": "/signin.html",
    "cnt_visit": "35709"
  },
  {
    "pagePath": "/google+redesign/shop+by+brand/youtube",
    "cnt_visit": "34043"
  },
  {
    "pagePath": "/basket.html",
    "cnt_visit": "31896"
  },
  {
    "pagePath": "/store.html",
    "cnt_visit": "30177"
  },
  {
    "pagePath": "/google+redesign/drinkware",
    "cnt_visit": "24501"
  },
  {
    "pagePath": "/google+redesign/electronics",
    "cnt_visit": "24310"
  },
  {
    "pagePath": "/google+redesign/office",
    "cnt_visit": "23956"
  },
  {
    "pagePath": "/google+redesign/bags",
    "cnt_visit": "22352"
  }
]
