steps to Run Traffic Dataset Collector

1. Install ryu controller by "pip install ryu".
2. Install mininet from its github (Mininet is a Network Emulator).
3. Run controller.py on ryu by "ryu-manager controller.py"
4. Run mininet Topology with "sudo mn --mac --topo tree,2,2 --controller remote"
    The topology created by this command is tree topology with fanout = 2. Topology Tree looks like following.
    
                   s1
                 /    \
               s2       s3
             /  \     /   \
            h1   h2  h3   h4
            
5. start xterm for all nodes using "xterm h1" on mininet console for each h1,h2,h3,h4
6. Run script on each xterm
    example:  on Node: h1 run "./script1.sh"
              on Node: h2 run "./script2.sh"
              on Node: h3 run "./script3.sh"
              on Node: h4 run "./script4.sh"
7. After Process is completed files as name "h1file.txt" and "h2file.txt" are generated for each h1,h2,h3,h4 containing data about traffic at each node.

We can change status the links of Network topology by "link h1 s2 down" or "link h2 s2 up" in order to provide variance to the data collected.

We can scale this thing at a very large scale and can collect data of a very complex Network topology.
The Large data collected can be very useful to increase efficiency of network by creatin a Machine Learning Model and training through that large data.
