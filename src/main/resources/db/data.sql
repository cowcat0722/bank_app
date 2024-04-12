-- 유저 3명 ssar, cos, love
insert into user_tb(username, password, fullname, created_at) values ('ssar', '1111', '쌀쌀해', now());
insert into user_tb(username, password, fullname, created_at) values ('cos', '1111', '코스해', now());
insert into user_tb(username, password, fullname, created_at) values ('love', '1111', '러브해', now());

-- 계좌
-- ssar, cos 계좌 2개, love 계좌 1개
insert into account_tb(user_id, number, password, balance, status, created_at) values (1, 1111, '1234', 1000, true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (1, 2222, '1234', 1000, true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (2, 3333, '1234', 1000, true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (2, 4444, '1234', 1000, true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (3, 5555, '1234', 1000, true, now());

-- 입출금내역
-- 1111 계좌가 다른 계좌들에게 100원씩 보냄
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (1, 2, 100, 900, 1100, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (1, 3, 100, 800, 1100, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (1, 4, 100, 700, 1100, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (1, 5, 100, 600, 1100, now());

insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (2, 1, 100, 1000, 700, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (1, 5, 100, 600, 1200, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (3, 1, 100, 1000, 700, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (4, 1, 100, 1000, 800, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (3, 1, 100, 900, 900, now());
insert into history_tb(sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at) values (1, 5, 100, 800, 1300, now());
