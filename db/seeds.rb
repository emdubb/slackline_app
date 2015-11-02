# clean out all current data
User.delete_all

slacker1 = User.create(
  email: "1@slack.com",
  #password: "abc123",
  #password_confirmation: "abc123",
  profile_img: "https://raw.githubusercontent.com/ga-students/WDI_DTLA_6/master/work/w05/d04/instructor/mumblr_ah/assets/default-profile-image.jpg?token=ANZuhGSIFyp-nT0Zosb1XxOzyA09kz0mks5WQO-iwA%3D%3D",
  lines: "Jib Line",
  skill: "Intermediate",
  location: "DTLA"
)

slacker2 = User.create(
  email: "2@slack.com",
  #password: "abc123",
  #password_confirmation: "abc123",
  profile_img: "https://raw.githubusercontent.com/ga-students/WDI_DTLA_6/master/work/w05/d04/instructor/mumblr_ah/assets/default-profile-image.jpg?token=ANZuhGSIFyp-nT0Zosb1XxOzyA09kz0mks5WQO-iwA%3D%3D",
  lines: "Classic Line",
  skill: "Beginner",
  location: "Pomona"
)

slacker3 = User.create(
  email: "3@slack.com",
  #password: "abc123",
  #password_confirmation: "abc123",
  profile_img: "https://raw.githubusercontent.com/ga-students/WDI_DTLA_6/master/work/w05/d04/instructor/mumblr_ah/assets/default-profile-image.jpg?token=ANZuhGSIFyp-nT0Zosb1XxOzyA09kz0mks5WQO-iwA%3D%3D",
  lines: "Surf Line",
  skill: "Advanced",
  location: "Santa Monica"
)

slacker4 = User.create(
  email: "4@slack.com",
  #password: "abc123",
  #password_confirmation: "abc123",
  profile_img: "https://raw.githubusercontent.com/ga-students/WDI_DTLA_6/master/work/w05/d04/instructor/mumblr_ah/assets/default-profile-image.jpg?token=ANZuhGSIFyp-nT0Zosb1XxOzyA09kz0mks5WQO-iwA%3D%3D",
  lines: "Classic Line",
  skill: "Beginner",
  location: "Venice"
)

slacker5 = User.create(
  email: "5@slack.com",
  #password: "abc123",
  #password_confirmation: "abc123",
  profile_img: "https://raw.githubusercontent.com/ga-students/WDI_DTLA_6/master/work/w05/d04/instructor/mumblr_ah/assets/default-profile-image.jpg?token=ANZuhGSIFyp-nT0Zosb1XxOzyA09kz0mks5WQO-iwA%3D%3D",
  lines: "Rodeo Line",
  skill: "Advanced",
  location: "Santa Monica"
)
