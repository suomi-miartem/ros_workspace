#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>

ros::NodeHandle nh;

void messageCb( const std_msgs::Empty& toggle_msg) {
  digitalWrite(13, HIGH - digitalRead(13)); // blink the led
}

std_msgs::Empty empty_msg;
ros::Publisher chatter("toggle_led", &empty_msg);
ros::Subscriber<std_msgs::Empty> sub("toggle_led", &messageCb );

void setup()
{
  nh.initNode();
  nh.advertise(chatter);
  pinMode(13, OUTPUT);
  nh.subscribe(sub);
}

void loop()
{
  chatter.publish( &empty_msg );
  nh.spinOnce();
  delay(1000);
}
