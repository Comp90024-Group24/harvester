#! /bin/bash
# MASTODON_ACCESS_TOKENS stores all your tokens separte by ', '
# SERVERS_URLS stores corresponding urls of server, separte by ', '
export MASTODON_ACCESS_TOKENS="Iiuvste6iNApoHM0RX0J5J_w_y-J52KvZYXeFZ7Mztc, JTOka0FBt1Dv3Y5ptiWQ2tIKTX1O4Y58JmH_Ob65HeQ"
export SERVERS_URLS="https://mastodon.social, https://mastodon.au"

# add your couchdb admin name, password and IP address
export COUCHDB_ADMIN="user"
export COUCHDB_PWD="pwd"
export COUCHDB_IP="172.26.134.204"

# start streaming, the number of process equal to the number of servers
mpiexec -n 2 python3 -m mpi4py Mastodon_demo.py