# cloudtest
cloudtest

# This Project detail a Cloud Infra with a LB front

<img width="899" alt="Screenshot 2021-12-18 at 22 44 20" src="https://user-images.githubusercontent.com/71703731/146816255-37335731-ae02-4ae4-861a-6fda82afba01.png">

#Intro
This  design outline a simple scaling infra design hosting a simple piece of text on the servers on a public subnet

The instances are launch from a launch configuration template scaled by an ASG to scale at the event of any traffic (up or down)
