
rsync -avz --delete -r --exclude  'document_storages' --exclude "system/bft_catalogs/" deploy@192.168.254.97:/space/apache/htdocs/bftconfigurator/shared/system/ /Users/Andrea/Public/configurator/

rsync -avz --delete -r deploy@gungan:/space/apache/htdocs/bft-corporate/shared/system/uploads/ /Users/Andrea/Code/bft-corporate/public/system/uploads/

rsync -avz --delete -r deploy@gungan:/space/apache/htdocs/stagings/bft-oauth/shared/system/ /Users/Andrea/Code/bft-oauth/public/system/

echo "drop database bft_dev;" | mysql -uroot
echo "create database bft_dev;" | mysql -uroot

echo "drop database bft_conf_dev;" | mysql -uroot
echo "create database bft_conf_dev;" | mysql -uroot

echo "drop database oauth_dev;" | mysql -uroot
echo "create database oauth_dev;" | mysql -uroot

mysqldump -ubftcorporate_st -p'[£rjeh232]' -h192.168.254.97 bftcorporate_stag | mysql -uroot bft_dev
mysqldump -ubftstaging -p'bi3ffet1st' -h192.168.254.94 bftstaging | mysql -uroot bft_conf_dev
mysqldump -ubftoauth_stag -p'dsf454!' -h192.168.254.89 bftoauth_stag | mysql -uroot oauth_dev








