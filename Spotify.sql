# Spotify case study

create database Spotify;

use spotify;

#User table
CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE);

#Playlist table
CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id));

#Track table
CREATE TABLE Tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE);

#PlaylistTrack table
CREATE TABLE PlaylistTracks (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Tracks(track_id));

#Insert values into Users table
INSERT INTO Users (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');

#Insert values into Playlists table
INSERT INTO Playlists (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');

#Insert values into Tracks table
INSERT INTO Tracks (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', '÷ (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', '÷ (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');

  
#Insert values into PlaylistTracks table
INSERT INTO PlaylistTracks (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;


#Basic level
#1 Find all the distinct album names
select distinct album_name from tracks;

#2 Who is the artist of song 'Never Seen the Rain'?
select track_name, album_name from tracks where track_name = "Never Seen the Rain";

#3 Name all the user & email, who have registered with gmail id
select username, email from users where email like '%gmail.com';

#4 List the name of users along with registration dates, who have registered after April-22
select username, registration_date from users where registration_date > '2022-04-30';

#5 Extract the name of tracks, artists, albums and release dates for tracks released in year 2017
select track_name, artist_name, album_name, release_date from tracks where year(release_date) = "2017";

#6 Find the details of the users who have registered in between may and august
select * from users where registration_date between '2022-05-01' AND '2022-08-31';

#7 Count the number of playlists created by each user
select u.username, count(p.playlist_name) as playlits_count 
from playlists p join users u on p.user_id = u.user_id group by username;

#8 Find the track names and their durations for a specific album in the Tracks table
select track_name, duration from tracks where album_name = "starboy";

#9 Calculate the average duration of tracks in the Tracks table
select avg(duration) from tracks;

#10 How many users have registered with yahoo.com id?
select username, email from users where email like '%yahoo.com';

#Intermediate level

#1 Find the playlist names and the number of tracks in each playlist created by users whose email addresses end with '@gmail.com'
select p.playlist_name, count(*) from playlists p join users u
on p.user_id = u.user_id where u.email like '%gmail.com'group by playlist_name, playlist_id;

#2 Write a query to retrieve the usernames and email addresses of users who have created playlists with more than 5 tracks and an average track duration greater than 200 seconds
select u.username, u.email from users u inner join playlists p on u.user_id = p.user_id
inner join playlisttracks p1 on p.playlist_id = p1.playlist_id
inner join tracks t on t.track_id = p1.track_id
group by u.username, u.email
having count(p1.track_id) > 5 and avg(t.duration) >200;

#3 Find the track and artist names of the tracks that have a duration greater than the average duration of all tracks in the 'Tracks' table
select track_name, artist_name from tracks where duration > (select avg(duration) from tracks);

#4 Find the users who have created playlists with tracks from all albums released in a specific year
select u.username from users u 
inner join playlists p on u.user_id = p.user_id
inner join playlisttracks p1 on p.playlist_id = p1.playlist_id 
inner join tracks t on t.track_id = p1.track_id
where year(t.release_date) = 2017 group by u.username
HAVING COUNT(DISTINCT t.album_name) = (SELECT COUNT(DISTINCT album_name) FROM Tracks WHERE YEAR(release_date) = 2017);

#5 Name of playlist and their total durations, sorted by the number of tracks in descending order
select p.playlist_name, sum(t.duration) as total_duration from playlists p 
inner join playlisttracks p1 on p.playlist_id = p1.playlist_id 
inner join tracks t on p1.track_id = t.track_id
group by p.playlist_name
order by count(t.track_id) desc;

#6 Find the playlists that have tracks with a duration longer than the average duration of all tracks
select p.playlist_name, t.track_name, t.duration as Avg_duration
from playlists p inner join playlisttracks p1 on p.playlist_id = p1.playlist_id
inner join tracks t on p1.track_id = t.track_id
where duration > (select avg(duration) from tracks);

#7 Find the top 3 playlists with the most tracks
select p.playlist_name, count(p1.track_id) track_count
from playlists p inner join playlisttracks p1 on p.playlist_id = p1.playlist_id
group by p.playlist_name
order by track_count limit 3;

#8 Calculate the average track duration for each user and display the results in descending order
select u.username, Avg(t.duration) as Track_duration 
from users u inner join Playlists p on  u.user_id = p.user_id
inner join playlisttracks p1 on p.playlist_id = p1.playlist_id
inner join tracks t on t.track_id = p1.track_id 
group by username order by Track_duration desc;

#9 Find the track names and artist names of the tracks that are included in at least two different playlists
select track_name, artist_name from tracks t 
WHERE track_id IN (SELECT track_id FROM PlaylistTracks
GROUP BY track_id HAVING COUNT(DISTINCT playlist_id) >= 2);

#10  Find the playlist names and the total duration of each playlist. Include only the playlists created by users who registered in the year 2022
select p.playlist_name, sum(t.duration) as total_duration
from playlists p inner join users u on u.user_id = p.user_id
inner join playlisttracks p1 on p.playlist_id = p1.playlist_id
inner join tracks t on t.track_id = p1.track_id
where year(registration_date) = 2022
group by p.playlist_name;

# Advanced level

#1 Find the track names and artist names of the tracks that are included in playlists created by users who registered before the average registration date of all users.
select track_name, artist_name from tracks t 
WHERE track_id IN (SELECT track_id FROM PlaylistTracks
WHERE playlist_id IN (SELECT playlist_id FROM Playlists
WHERE user_id IN (SELECT user_id FROM Users
WHERE registration_date < (SELECT AVG(registration_date)FROM Users))));
        
#2 Use subquery to retrieve the names of users who have created playlists containing tracks from both the album 'After Hours' by The Weeknd and the album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.
SELECT username FROM Users WHERE user_id IN (
SELECT user_id FROM Playlists WHERE playlist_id IN (
SELECT playlist_id FROM PlaylistTracks WHERE track_id IN (
SELECT track_id FROM Tracks WHERE album_name = 'After Hours' AND artist_name = 'The Weeknd')) 
AND playlist_id IN (SELECT playlist_id FROM PlaylistTracks WHERE track_id IN (
SELECT track_id FROM Tracks WHERE album_name = 'When We All Fall Asleep, Where Do We Go?' AND artist_name = 'Billie Eilish')));

#3 Write a SQL query to extract the name of top 3 users with the highest average track duration for their playlists.
select u.username as Users, avg(t.duration) as Avg_duration
from playlists p inner join users u on u.user_id = p.user_id
inner join playlisttracks p1 on p.playlist_id = p1.playlist_id
inner join tracks t on t.track_id = p1.track_id
group by u.username order by Avg_duration desc limit 3;

#4 Find the tracks that have a duration greater than the average duration of all tracks and rank them within their respective albums.
select track_name, album_name, duration as Avg_duration, track_id
from tracks WHERE duration > (SELECT AVG(duration) FROM Tracks)
order by album_name, track_id;

#5 Name the playlists along with the total number of tracks and the rank of the playlist based on the number of tracks.
SELECT playlist_name, COUNT(pt.track_id) AS total_tracks,
RANK() OVER (ORDER BY COUNT(pt.track_id) DESC) AS playlist_rank
FROM Playlists p JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
GROUP BY playlist_name;

#6 Find the users who have created playlists with the highest number of tracks from a specific artist.
SELECT u.username, COUNT(*) AS track_count
FROM Users u
JOIN Playlists p ON u.user_id = p.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
JOIN Tracks t ON pt.track_id = t.track_id
WHERE t.artist_name = 'Ed Sheeran'
GROUP BY u.username ORDER BY track_count desc LIMIT 1; 
 
#7 Write a SQL query to retrieve the top most users who have created playlists with the highest number of unique tracks from a specific artist.
select u.username, p.created_at, t.artist_name, COUNT(DISTINCT t.track_id) AS unique_tracks
FROM Users u 
JOIN Playlists p ON u.user_id = p.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
JOIN Tracks t ON pt.track_id = t.track_id
WHERE t.artist_name = 'Billie Eilish'
group by u.username, p.created_at, t.artist_name
order by unique_tracks desc limit 1;

#8 Find the tracks that have a duration greater than the average duration of all tracks in their respective albums.
SELECT album_name, AVG(duration) AS avg_duration FROM Tracks GROUP BY album_name;

#9 Find name of the playlists along with the user who created them, sorted by the number of tracks in descending order and the username in ascending order.
select u.username, p.playlist_name, COUNT(pt.track_id) AS track_count
from users u join playlists p ON u.user_id = p.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
group by u.username, p.playlist_name
order by track_count desc, username asc;

#10 Write a SQL query to retrieve the playlists along with the user who created them, and the position of the track with the longest duration within each playlist.
select u.username, p.playlist_name, max(pt.position) as max_position, MAX(t.duration) AS max_duration
FROM Playlists p
JOIN Users u ON p.user_id = u.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
JOIN Tracks t ON pt.track_id = t.track_id
group by u.username, p.playlist_name;

#Quiz

#1 Use subquery to extract names of the users who have created playlists containing tracks from the album '÷ (Divide)' by Ed Sheeran.
select u.username, p.playlist_name 
from users u inner join playlists p on u.user_id = p.user_id
where playlist_id in (select playlist_id from playlisttracks p1 
JOIN Tracks t ON p1.track_id = t.track_id
WHERE t.album_name = '÷ (Divide)' AND t.artist_name = 'Ed Sheeran');
