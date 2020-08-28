import 'package:facebook_ui/models/models.dart';

final User currentUser = User(
    name: 'Vaibhav Chanchad',
    imageUrl:
        'https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');

final List<User> onlineUsers = [
  User(
    name: 'Milan Mavani',
    imageUrl:
        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Ashok Sisara',
    imageUrl:
        'https://images.unsplash.com/photo-1579783483458-83d02161294e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Gaurav',
    imageUrl:
        'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Hitesh',
    imageUrl:
        'https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Hrishikesh Umralia',
    imageUrl:
        'https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Maharshi',
    imageUrl:
        'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Nikhil',
    imageUrl:
        'https://images.unsplash.com/photo-1459245330819-1b6d75fbaa35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Tarun Dabhi',
    imageUrl:
        'https://images.unsplash.com/photo-1520974735194-9e0ce82759fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Kartik',
    imageUrl:
        'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Nikunj Savaliya',
    imageUrl:
        'https://images.unsplash.com/photo-1474978528675-4a50a4508dc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Hiren Viradiya',
    imageUrl:
        'https://images.unsplash.com/photo-1520592978680-efbdeae5d036?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
      name: 'Ramani Chintan',
      imageUrl:
          'https://images.unsplash.com/photo-1455274111113-575d080ce8cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  User(
    name: 'Andrew James',
    imageUrl:
        'https://images.unsplash.com/photo-1520223297779-95bbd1ea79b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
  User(
    name: 'Sam Kolder',
    imageUrl:
        'https://images.unsplash.com/photo-1504473178671-6809ddc42af6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ),
];

final List<Story> stories = [
  Story(
      user: onlineUsers[0],
      isViewed: true,
      imageUrl:
          'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  Story(
      user: onlineUsers[1],
      imageUrl:
          'https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  Story(
      user: onlineUsers[3],
      imageUrl:
          'https://images.unsplash.com/photo-1495374519711-e22c8b4596a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  Story(
      user: onlineUsers[4],
      isViewed: true,
      imageUrl:
          'https://images.unsplash.com/photo-1501143779831-7639ccda8d10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  Story(
      user: onlineUsers[5],
      imageUrl:
          'https://images.unsplash.com/photo-1526313199968-70e399ffe791?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  Story(
      user: onlineUsers[6],
      isViewed: true,
      imageUrl:
          'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  Story(
      user: onlineUsers[7],
      imageUrl:
          'https://images.unsplash.com/photo-1519806141527-e3c35efe2c1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'bike atle bike ho baki',
    timeAgo: '31m',
    imageUrl:
        'https://images.unsplash.com/photo-1558980394-4c7c9299fe96?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 1,
    comments: 2,
    shares: 3,
  ),
  Post(
    user: currentUser,
    caption: 'Poco F1 + GCam = aur kya chahiye',
    timeAgo: '58m',
    imageUrl:
        'https://images.unsplash.com/photo-1471879832106-c7ab9e0cee23?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption: 'skills dekh lo guys',
    timeAgo: '3hr',
    imageUrl:
        'https://images.unsplash.com/photo-1503965830912-6d7b07921cd1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'Just Awesome.',
    timeAgo: '8hr',
    imageUrl:
        'https://images.unsplash.com/photo-1518495973542-4542c06a5843?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[9],
    caption:
        'Flutter is awesome framework. using it since 1564654 years and i can only say it\'s awesome',
    timeAgo: '1d',
    imageUrl: null,
    likes: 5156151151587,
    shares: 1564815,
    comments: 921218741200,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Music and only music',
    timeAgo: '15hr',
    imageUrl:
        'https://images.unsplash.com/photo-1533054281011-fc95be44e7ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption: 'New setup dekh lo friendsss',
    timeAgo: '1d',
    imageUrl:
        'https://images.unsplash.com/photo-1593642703055-4b72c180d9b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    caption: '',
    timeAgo: '1d',
    imageUrl:
        'https://images.unsplash.com/photo-1537526358797-e732f762d6af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjI0MX0&auto=format&fit=crop&w=500&q=60',
    likes: 1523,
    shares: 129,
    comments: 301,
  ),
  Post(
    user: onlineUsers[9],
    caption: 'At village',
    timeAgo: '1d',
    imageUrl:
        'https://images.unsplash.com/photo-1598543435904-e1902fac5605?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];
