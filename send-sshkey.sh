server_list=( kaede susanoo asunaro 
              kashiwa kunugi sugi
              hiiragi keyaki yuzuriha
              torreya hinoki momo)
for server in "${server_list[@]}"
do 
  echo $server
  eval "ssh-copy-id -i ~/.ssh/id_rsa.pub $server"
done
