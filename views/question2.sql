CREATE VIEW listes_amis_id1 AS

SELECT account.first_name, account.last_name, account.nickname, profile_pic, send_invite.friendship_birthday 
FROM account 
INNER JOIN send_invite 
ON account.id_account = send_invite.id_account_sender
WHERE id_account_receiver = 1   ;

-- first_name | last_name | nickname | profile_pic | friendship_birthday
------------+-----------+----------+-------------+---------------------
-- Orlo       | Will      | Orlo     | Orlo.png    | 2022-08-03
-- Tyra       | Schuster  | Tyra     | Tyra.png    | 2022-08-03
-- Enola      | Schmitt   | Enola    | Enola.png   | 2022-08-03
-- Kenny      | Pfeffer   | Kenny    | Kenny.png   | 2022-08-03
-- Quincy     | Turcotte  | Quinc    | Quincy.png  | 2022-08-03