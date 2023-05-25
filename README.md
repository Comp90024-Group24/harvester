# harvester

Use this command to run the Mastodon harvester:

mpiexec -n 2 python3 -m mpi4py Mastodon_demo.py

We use Message Passing Interface for Python (mpi4py) to enable parallel execution of multiple Mastodon Harvesters. Each harvester processor is responsible for crawling data from a single Mastodon server, and all processors store the collected data into a shared CouchDB dataset. Communication between the harvester processors is not necessary for our specific requirements.
Each harvester processor operates independently, continuously fetching real-time data and processing it promptly. The data undergoes several stages of processing. Firstly, we filter the content by searching for specific keywords within the Mastodon posts. Next, we perform sentiment analysis on the filtered content. Finally, we extract the relevant information, including the month, content, and sentiment analysis results, which are then stored in the CouchDB dataset.
This approach allows for efficient and parallel processing of the Mastodon data, enabling us to gather valuable insights and analysis from multiple sources simultaneously. 
To customize the harvester configuration, you can edit the global constant variables MASTODON_ACCESS_TOKENS and SERVERS_URLS. These variables allow you to add your own access tokens and the corresponding URLs of the Mastodon servers you want to crawl. It's important to note that the number of harvester processes should align with the number of servers you want to crawl.
