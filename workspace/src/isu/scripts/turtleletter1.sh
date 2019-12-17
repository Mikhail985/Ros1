#2
rosservice call turtle1/teleport_absolute 1 8 1.57
rosservice call clear
rosservice call kill /turtle2
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rosservice call turtle1/teleport_absolute 1 6 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1, 0.0, 0.0]' '[0.0, 0.0, 0]'
#5
rosservice call spawn 4 8.5 3.14 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1, 0.0, 0.0]' '[0.0, 0.0, 0]'
rosservice call turtle2/teleport_absolute 3 7.75 0
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[3, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rosservice call kill /turtle2
#7
rosservice call spawn 4.5 8.5 0 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1, 0.0, 0.0]' '[0.0, 0.0, 0]'
rosservice call turtle2/teleport_absolute 4.5 6 0
rosservice call kill /turtle2
#3
rosservice call spawn 6 8.5 0 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[-2, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rosservice call kill /turtle2
#8
rosservice call spawn 7 8 1.57 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rosservice call turtle2/teleport_absolute 7 6.5 4.7
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, 3.14]'
rosservice call turtle2/teleport_absolute 7 8 4.7
rosservice call kill /turtle2
#9
rosservice call spawn 8.5 8 1.57 /turtle2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[6, 0.0, 0.0]' '[0.0, 0.0, -9.42]'
rosservice call turtle2/teleport_absolute 9.5 6 0
rosservice call turtle2/teleport_absolute 8.5 6 0


