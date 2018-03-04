cd
ENV_DIR='/mnt/irdc_storage/rekognition/Environment/'
file_list=(".zshrc" ".tmux.conf" ".tmux.conf.local" ".vimrc")


# cp ~/.zshrc $ENV_DIR
# cp ~/.zshrc $ENV_DIR
#
for x in $file_list
do
    rsync -ahv $x $ENV_DIR 
done
cd -
