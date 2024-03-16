-- Check postion and file
-- ejem. 154 mysql-bin.000003

SHOW MASTER STATUS

-- Change master of slave DB
CHANGE MASTER TO
  MASTER_HOST='db-master',
  MASTER_USER='root',
  MASTER_PASSWORD='master',
  MASTER_LOG_FILE='mysql-bin.000003',
  MASTER_LOG_POS=154

-- Start slave
START SLAVE

-- Check slave status
SHOW SLAVE STATUS