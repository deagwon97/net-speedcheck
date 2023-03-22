
# Check network bandwith by iperf and ssh

It is example scripts to check linux cluster's network bandwith by `iperf` and `ssh`. The names of nodes in the cluster increase regularly from n001 to n100.


### pre-requirements

1. Installed `iperf` ( v2.0.13 )
2. Open port `15122` in all nodes.
3. You should be able to connect to any node from the node running the command.


### How to run
```
./run.sh
```

### How to create report
```
./report.sh > total.log
```

### Result Example
```
cat total.log
```

```
[001]
25.9;
22.6;
17.6;
24.6;
28.3;
26.3;
24.9;
27.0;
21.2;
20.7;
.
.
.
```