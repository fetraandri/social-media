SELECT first_name, last_name, nickname, is_accepted 
from account 
inner join send_invite on account.id_account = send_invite.id_account_receiver 
where id_account = 1 and is_accepted = false;

 --first_name | last_name | nickname | is_accepted
--------------+-----------+----------+-------------
-- Heaven     | Pfeffer   | Heave    | f
-- (1 ligne)
