create table csv_tweets (
	Date_field date,
	Tweet_Text text,
	Hashtags text,
	twt_favourites_IS_THIS_LIKE_QUESTION_MARK int,
	Retweets int
);

create table json_tweets (
	created_at date,
	full_text text,
	favorite_count int,
	retweet_count int
);