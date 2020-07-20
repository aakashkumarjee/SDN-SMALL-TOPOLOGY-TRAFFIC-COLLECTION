steps to Run Traffic Dataset Collector

1. Install ryu by "pip install ryu".
2. Install mininet from its github.
3. Run controller.py on ryu by "ryu-manager controller.py"
4. Run mininet Topology with "sudo mn --mac --topo tree,2,2 --controller remote"
5. start xterm for all nodes using "xterm h1" on mininet console for each h1,h2,h3,h4
6. Run script on each xterm
    example:  on Node: h1 run "./script1.sh"
              on Node: h2 run "./script2.sh"
              on Node: h3 run "./script3.sh"
              on Node: h4 run "./script4.sh"
7. After Process is completed files as name "h1file.txt" and "h2file.txt" are generated for each h1,h2,h3,h4 containing data about traffic at each node.
