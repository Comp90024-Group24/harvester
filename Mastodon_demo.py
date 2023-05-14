import couchdb
from mastodon import Mastodon,StreamListener
import json
admin= 'user'
password = 'pwd'
url=f'http://{admin}:{password}@172.26.134.204:5984/'

couch = couchdb.Server(url)
db_name= 'mastodon_demo'

# Create a database
if db_name in couch:
    db = couch[db_name]
else:
    db = couch.create(db_name)

token='6w81T72VTxttK69lON9TTMxaCKxWcXKVicxs87e06NQ'
m=Mastodon(
    api_base_url=f'https://aus.social',
    access_token=token
    )

class MyListener(StreamListener):
    def on_update(self,status):
        json_str=json.dumps(status,indent=2,sort_keys=True,default=str)
        print(json_str)
        # doc_id,doc_rev = db.save(json.loads(json_str))  #save to coachdb
        # print(doc_id,doc_rev)


if __name__ == '__main__':
    m.stream_public(MyListener())