create table 19CPBLGame(
	player_id int,
	player_name varchar(30),
	team  varchar(15),
	year	int,
	等級	varchar(2),
	力量	int,
	打擊	int,
	速度	int,
	傳球	int,
	守備	int,
	primary key (player_id)
);

create table 19MLBGame(
	player_id int,
	player_name varchar(30),
	team  varchar(15),
	year	int,
	等級	varchar(2),
	力量	int,
	打擊	int,
	速度	int,
	傳球	int,
	守備	int,
	primary key (player_id)
);

create table 19CPBLBatting(
	player_name int,
	team varchar(15),
	year	int,
	PA		int,
	AB		int,
	H		int,
	2B		int,
	3B		int,
	HR		int,
	BA		float,
	SB		int,
	CS		int
);

create table 19MLBBatting(
	player_name int,
	team varchar(15),
	year	int,
	PA		int,
	AB		int,
	H		int,
	2B		int,
	3B		int,
	HR		int,
	BA		float,
	SB		int,
	CS		int
);

create table 19CPBLFielding(
	player_name int,
	team varchar(15),
	year	int,
	G		int,
	PO		int,
	A		int,
	E		int
);

create table 19MLBFielding(
	player_name int,
	team varchar(15),
	year	int,
	G		int,
	PO		int,
	A		int,
	E		int
);

load data local infile './19CPBLGame.csv'
into table 19CPBLGame
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

load data local infile './19MLBGame.csv'
into table 19MLBGame
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

load data local infile './19CPBLBatting.csv'
into table 19CPBLBatting
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

load data local infile './19MLBBatting.csv'
into table 19MLBBatting
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

load data local infile './19CPBLFielding.csv'
into table 19CPBLFielding
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;

load data local infile './19MLBFielding.csv'
into table 19MLBFielding
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;