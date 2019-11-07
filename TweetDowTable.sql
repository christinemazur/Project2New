create table csv_tweets (
	Date_field date,
	Tweet_Text text,
	Hashtags text,
	twt_favourites_IS_THIS_LIKE_QUESTION_MARK int,
	Retweets int
);

create table json_tweets (
	full_text text,
	created_at date,
	favorite_count int,
	retweet_count int
);

create table Dow (
	DATE date,
	DJIA VARCHAR(30)	
);

select * from Dow;

select * from csv_tweets;
select * from json_tweets;

--DATE	DJIA
--Date	Time	Tweet_Text	Type	Media_Type	Hashtags	Tweet_Id	Tweet_Url	twt_favourites_IS_THIS_LIKE_QUESTION_MARK	Retweets		
--created_at full text, date, rite_count int, retweet_count int

select json_tweets.full_text,
	json_tweets.created_at,
	json_tweets.favorite_count, 
	json_tweets.retweet_count, 
	Dow.DJIA
	from json_tweets
	INNER JOIN Dow ON
    json_tweets.Created_at = Dow.Date;
