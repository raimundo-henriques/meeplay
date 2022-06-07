require "open-uri"

UserMeeting.destroy_all
Meeting.destroy_all
Chatroom.destroy_all
User.destroy_all
Boardgame.destroy_all

database = Bgg.new
database.call

guy = User.create(email: "guygb91@gmail.com", password: "131415161718")
jose = User.create(email: "ja.melo321@gmail.com", password: "192021222324")
raimundo = User.create(email: "raimundo.henriques@gmail.com", password: "123456")
ricardo = User.create(email: "ricardosilva.rss@gmail.com", password: "789101112")

guy_profile = Profile.create!(
                user: guy,
                name: "Guy Gan Baruch",
                description: "I'm an IT admin want to make a change in the world on the environmental sector. and I like cats and remote controlled helicopters.",
                date_of_birth: Date.new(1996, 1, 1),
                city: "Lisbon"
              )
file1 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1652775726/ctcrjpqfgbxallgn9xqr.jpg')
guy_profile.photo.attach(io: file1, filename: 'guy.jpg', content_type: 'image/jpg')


jose_profile = Profile.create!(
                user: jose,
                name: "José de Melo",
                description: "i did social studies at universidade catolica",
                date_of_birth: Date.new(1998, 1, 1),
                city: "Lisbon"
)
file2 = URI.open('https://avatars.githubusercontent.com/u/99876826?v=4')
jose_profile.photo.attach(io: file2, filename: 'jose.jpg', content_type: 'image/png')

raimundo_profile = Profile.create!(
                user: raimundo,
                name: "Raimundo Henriques",
                description: "I've been studying philosophy and literary theory for the past years and want to look for other opportunities and to develop my passion for technology.",
                date_of_birth: Date.new(1991, 1, 17),
                city: "Lisbon"
)
file3 = URI.open('https://avatars.githubusercontent.com/u/100690574?v=4')
raimundo_profile.photo.attach(io: file3, filename: 'raimundo.jpg', content_type: 'image/jpg')


ricardo_profile = Profile.create!(
                user: ricardo,
                name: "Ricardo Silva",
                description: "After years of doing administrative work and some acting, I am now looking for a change. Always liked computers and videogames, so coding just felt right...",
                date_of_birth: Date.new(1991, 1, 1),
                city: "Lisbon"
)
file4 = URI.open('https://avatars.githubusercontent.com/u/97455167?v=4')
ricardo_profile.photo.attach(io: file4, filename: 'ricardo.jpg', content_type: 'image/jpg')


boardgame1 = Boardgame.all.sample
meeting_guy_1 = Meeting.create!(user: guy, boardgame: boardgame1, start_date:20220610,
  start_time: Time.new(2022, 6, 10, 16, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "let's play #{boardgame1.name}", chatroom: Chatroom.create!, players_wanted: 3,
  address: "Lisboa, Rua do Conde Redondo"
)

boardgame2 = Boardgame.all.sample
meeting_guy_2 = Meeting.create!(user: guy, boardgame: boardgame2, start_date: 20220611,
  start_time: Time.new(2022, 6, 11, 18, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame2.name} night", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Porto, Avenida dos Aliados"
)

boardgame3 = Boardgame.all.sample
meeting_guy_3 = Meeting.create!(user: guy, boardgame: boardgame3, start_date: 20220616,
  start_time: Time.new(2022, 6, 16, 16, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame3.name}", chatroom: Chatroom.create!, players_wanted: 3,
  address: "Évora, Praça do Giraldo"
)
boardgame4 = Boardgame.all.sample
meeting_guy_4 = Meeting.create!(user: guy, boardgame: boardgame4, start_date: 20220619,
  start_time: Time.new(2022, 6, 19, 16, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame4.name}", chatroom: Chatroom.create!, players_wanted: 3,
  address: "Portimão, Infante D. Henrique"
)

boardgame5 = Boardgame.all.sample
meeting_jose_1 = Meeting.create!(user: jose, boardgame: boardgame5, start_date: 20220610,
  start_time: Time.new(2022, 6, 10, 16, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "Afternoon of #{boardgame5.name}", chatroom: Chatroom.create!, players_wanted: 3,
  address: "Lisboa, Rua do Conde Redondo"
)

boardgame6 = Boardgame.all.sample
meeting_jose_2 = Meeting.create!(user: jose, boardgame: boardgame6, start_date: 20220612,
  start_time: Time.new(2022, 6, 12, 20, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "Evening of #{boardgame6.name}", chatroom: Chatroom.create!, players_wanted: 3,
  address: "Porto, Rua Passos Manuel"
)

boardgame7 = Boardgame.all.sample
meeting_jose_3 = Meeting.create!(user: jose, boardgame: boardgame7, start_date: 20220620,
  start_time: Time.new(2022, 6, 20, 14, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame7.name}", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Coimbra, Universidade de Coimbra"
)

boardgame8 = Boardgame.all.sample
meeting_jose_4 = Meeting.create!(user: jose, boardgame: boardgame8, start_date: 20220621,
  start_time: Time.new(2022, 6, 21, 14, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame8.name}", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Lisboa, Alameda da Universidade"
)

boardgame9 = Boardgame.all.sample
meeting_raimundo_1 = Meeting.create!(user: raimundo, boardgame: boardgame9, start_date: 20220613,
  start_time: Time.new(2022, 6, 13, 16, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "Join me at #{boardgame9.name}", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Lisboa, Rua do Conde Redondo"
)

boardgame10 = Boardgame.all.sample
meeting_raimundo_2 = Meeting.create!(user: raimundo, boardgame: boardgame10, start_date: 20220614,
  start_time: Time.new(2022, 6, 14, 16, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame10.name}", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Lisboa, Avenida 5 de Outubro"
)

boardgame11 = Boardgame.all.sample
meeting_raimundo_3 = Meeting.create!(user: raimundo, boardgame: boardgame11, start_date: 20220621,
  start_time: Time.new(2022, 6, 21, 14, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame11.name}", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Lisboa, Rua do Conde Redondo"
)

boardgame12 = Boardgame.all.sample
meeting_raimundo_4 = Meeting.create!(user: raimundo, boardgame: boardgame12, start_date: 20220623,
  start_time: Time.new(2022, 6, 23, 18, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame12.name}", chatroom: Chatroom.create!, players_wanted: 3,
  address: "Porto, Rua das Flores"
)

boardgame13 = Boardgame.all.sample
meeting_ricardo_1 = Meeting.create!(user: ricardo, boardgame: boardgame13, start_date: 20220614,
  start_time: Time.new(2022, 6, 14, 20, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame13.name} night", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Porto, Avenida da Boavista"
)

boardgame14 = Boardgame.all.sample
meeting_ricardo_2 = Meeting.create!(user: ricardo, boardgame: boardgame14, start_date: 20220621,
  start_time: Time.new(2022, 6, 21, 14, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame14.name} evening", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Berlin, Kudamm"
)

boardgame15 = Boardgame.all.sample
meeting_ricardo_3 = Meeting.create!(user: ricardo, boardgame: boardgame15, start_date: 20220625,
  start_time: Time.new(2022, 6, 25, 18, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame15.name} evening", chatroom: Chatroom.create!, players_wanted: 4,
  address: "Lisboa, Rua do Conde Redondo"
)

boardgame16 = Boardgame.all.sample
meeting_ricardo_4 = Meeting.create!(user: ricardo, boardgame: boardgame16, start_date: 20220701,
  start_time: Time.new(2022, 7, 1, 16, 00, 0),
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  name: "#{boardgame16.name}", chatroom: Chatroom.create!, players_wanted: 2,
  address: "Lisboa, Rossio"
)

UserMeeting.create!(user: guy, meeting: meeting_jose_2)
UserMeeting.create!(user: guy, meeting: meeting_raimundo_3)
UserMeeting.create!(user: guy, meeting: meeting_ricardo_3)
UserMeeting.create!(user: guy, meeting: meeting_ricardo_4)

UserMeeting.create!(user: jose, meeting: meeting_guy_3)
UserMeeting.create!(user: jose, meeting: meeting_guy_2)
UserMeeting.create!(user: jose, meeting: meeting_raimundo_4)
UserMeeting.create!(user: jose, meeting: meeting_ricardo_3)

UserMeeting.create!(user: raimundo, meeting: meeting_guy_4)
UserMeeting.create!(user: raimundo, meeting: meeting_jose_1)
UserMeeting.create!(user: raimundo, meeting: meeting_jose_2)
UserMeeting.create!(user: raimundo, meeting: meeting_ricardo_3)

UserMeeting.create!(user: ricardo, meeting: meeting_guy_1)
UserMeeting.create!(user: ricardo, meeting: meeting_jose_3)
UserMeeting.create!(user: ricardo, meeting: meeting_raimundo_1)
UserMeeting.create!(user: ricardo, meeting: meeting_raimundo_2)
