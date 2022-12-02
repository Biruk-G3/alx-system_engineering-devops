# Failure Due To High Traffic Report
![503](https://user-images.githubusercontent.com/56379934/205360965-3cf20822-3c8d-420f-85f4-dea93aa975ac.gif)

Last month, it was reported that our website was returning 503 Error on all requests made on our website routes, 
all the services were busy and so many of our users were affected. 
The root cause for the failure was unexpectedly high incoming  traffic to our master server web-01.

# Timeline
The error was realized on Saturday 2nd May 10:00 hours (East Africa Time) when our Site Accessibility Engineer, Mr Yossef saw the master server lagging in speed and not responding to the request it received from users. Our engineers added a new server and configured a load balancer that will improve the efficient work of our site by distributing a balanced request to both servers web-01 and web-02. The problem was solved by the team on Saturday 2nd May 03:00 hours (East Africa Time).
# Root cause and resolution
Our website used to be served by 1 Ubuntu cloud server. And that server (web-01) was connected to serve all requests, and it stopped functioning due to unexpectedly high traffic as a result of so many requests because of huge marketing advertisements that have been made on so many social platforms we expected it to be good but not this match requests to come at once.

The issue was fixed when we configured a new server and a load balancer that would work when such high amount of requests are coming by channeling even number of requests to both servers.And both servers are connected back to the load balancer and round-robin algorithm was configured so that both the master(web-01) and client(web-02) servers can handle equal amount of reques

# Measures against such problem in future
1) Choose the best load balancing algorithm for your programs
2) Always keep an eye on your servers to ensure they are running properly
3) Have extra back-up servers to prevent your program fro completely going offline during an issue
