#!/bin/bash
#echo "#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
#NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=1000 --nodes=20 --CSVfileName=bsm_20node_cvgauss.output.csv --CSVfileName2=bsm_20node_cvgauss.output2.csv --CSVfileName3=bsm_20node_cvgauss.output3.csv" > trace_20n.log 2> bsm_20n.log
#echo "//#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
#NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=1000 --nodes=20 --pcap=0 --CSVfileName=bsm_control_20node_cvgauss.output.csv --CSVfileName2=bsm_control_20node_cvgauss.output2.csv --CSVfileName3=bsm_control_20node_cvgauss.output3.csv" > trace_c20n.log 2> bsm_c20n.log
#./waf --run "scratch/wave-bsm-risk --protocol=0 --totaltime=60 --nodes=20 --CSVfileName=bsm_20node_cvgauss.output.csv --CSVfileName2=bsm_20node_cvgauss.output.csv"
#echo "#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
#NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=1000 --nodes=40 --CSVfileName=bsm_40node_cvgauss.output.csv --CSVfileName2=bsm_40node_cvgauss.output2.csv --CSVfileName3=bsm_40node_cvgauss.output3.csv" > trace_40n.log 2> bsm_40n.log
#echo "//#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
#NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=1000 --nodes=40 --pcap=0 --CSVfileName=bsm_control_40node_cvgauss.output.csv --CSVfileName2=bsm_control_40node_cvgauss.output2.csv --CSVfileName3=bsm_control_40node_cvgauss.output3.csv" > trace_c40n.log 2> bsm_c40n.log
#echo "#define MODE_SPEED 30" >> "src/wave/model/adaptive_priotag.h"
#echo "#define SPEED_STD_DEV 6" >> "src/wave/model/adaptive_priotag.h"

echo "about to go into 80 node adaptive"
echo "#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
echo "#define MODE_SPEED 25" >> "src/wave/model/adaptive_priotag.h"
echo "#define SPEED_STD_DEV 1" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH 5.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH_UPPER 20.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define CRASH_THRESHOLD 4.6" >> "src/wave/model/adaptive_priotag.h"
echo "#define PRIO_MANUEVER_THRESHOLD 4.96" >> "src/wave/model/adaptive_priotag.h"
cat "src/wave/model/adaptive_priotag.h"
NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=100 --nodes=80 --CSVfileName=bsm_80node_cvgauss.output.csv --CSVfileName2=bsm_80node_cvgauss.output2.csv --CSVfileName3=bsm_80node_cvgauss.output3.csv" > trace_80n.log 2> bsm_80n.log
grep "crash occ"  trace_80n.log | wc
echo
echo

echo "about to go into 80 node control"
echo "//#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
echo "#define MODE_SPEED 25" >> "src/wave/model/adaptive_priotag.h"
echo "#define SPEED_STD_DEV 1" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH 5.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH_UPPER 20.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define CRASH_THRESHOLD 4.6" >> "src/wave/model/adaptive_priotag.h"
echo "#define PRIO_MANUEVER_THRESHOLD 4.96" >> "src/wave/model/adaptive_priotag.h"
cat "src/wave/model/adaptive_priotag.h"
NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=100 --nodes=80 --pcap=0 --CSVfileName=bsm_control_80node_cvgauss.output.csv --CSVfileName2=bsm_control_80node_cvgauss.output2.csv --CSVfileName3=bsm_control_80node_cvgauss.output3.csv"> trace_c80n.log 2> bsm_c80n.log
grep "crash occ"  trace_c80n.log | wc
echo
echo

echo "about to go into 120 node adaptive"
echo "#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
echo "#define MODE_SPEED 25" >> "src/wave/model/adaptive_priotag.h"
echo "#define SPEED_STD_DEV 1" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH 5.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH_UPPER 20.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define CRASH_THRESHOLD 4.6" >> "src/wave/model/adaptive_priotag.h"
echo "#define PRIO_MANUEVER_THRESHOLD 4.96" >> "src/wave/model/adaptive_priotag.h"
cat "src/wave/model/adaptive_priotag.h"
NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=100 --nodes=120 --CSVfileName=bsm_120node_cvgauss.output.csv --CSVfileName2=bsm_120node_cvgauss.output2.csv --CSVfileName3=bsm_120node_cvgauss.output3.csv" > trace_120n.log 2> bsm_120n.log
grep "crash occ"  trace_120n.log | wc
echo
echo

echo "about to go into 120 node control"
cat "src/wave/model/adaptive_priotag.h"
echo "//#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
echo "#define MODE_SPEED 25" >> "src/wave/model/adaptive_priotag.h"
echo "#define SPEED_STD_DEV 1" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH 5.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH_UPPER 20.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define CRASH_THRESHOLD 4.6" >> "src/wave/model/adaptive_priotag.h"
echo "#define PRIO_MANUEVER_THRESHOLD 4.96" >> "src/wave/model/adaptive_priotag.h"
NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=100 --nodes=120 --pcap=0 --CSVfileName=bsm_control_120node_cvgauss.output.csv --CSVfileName2=bsm_control_120node_cvgauss.output2.csv --CSVfileName3=bsm_control_120node_cvgauss.output3.csv" > trace_c120n.log 2> bsm_c120n.log
grep "crash occ"  trace_c120n.log | wc
echo
echo

echo "about to go into 160 node adaptive"
echo "#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
echo "#define MODE_SPEED 25" >> "src/wave/model/adaptive_priotag.h"
echo "#define SPEED_STD_DEV 1" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH 5.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH_UPPER 20.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define CRASH_THRESHOLD 4.6" >> "src/wave/model/adaptive_priotag.h"
echo "#define PRIO_MANUEVER_THRESHOLD 4.96" >> "src/wave/model/adaptive_priotag.h"
cat "src/wave/model/adaptive_priotag.h"
NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=100 --nodes=160 --CSVfileName=bsm_160node_cvgauss.output.csv --CSVfileName2=bsm_160node_cvgauss.output2.csv --CSVfileName3=bsm_160node_cvgauss.output3.csv" > trace_160n.log 2> bsm_160n.log
grep "crash occ"  trace_160n.log | wc
echo
echo

echo "about to go into 160 node control"
echo "//#define ADAPTIVE_PRIO" > "src/wave/model/adaptive_priotag.h"
echo "#define MODE_SPEED 25" >> "src/wave/model/adaptive_priotag.h"
echo "#define SPEED_STD_DEV 1" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH 5.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define TTC_THRESH_UPPER 20.0" >> "src/wave/model/adaptive_priotag.h"
echo "#define CRASH_THRESHOLD 4.6" >> "src/wave/model/adaptive_priotag.h"
echo "#define PRIO_MANUEVER_THRESHOLD 4.96" >> "src/wave/model/adaptive_priotag.h"
cat "src/wave/model/adaptive_priotag.h"
NS_GLOBAL_VALUE="RngRun=$5" ./waf --run "scratch/wave-bsm-risk_cvgauss --protocol=0 --totaltime=100 --nodes=160 --pcap=0 --CSVfileName=bsm_control_160node_cvgauss.output.csv --CSVfileName2=bsm_control_160node_cvgauss.output2.csv --CSVfileName3=bsm_control_160node_cvgauss.output3.csv"> trace_c160n.log 2> bsm_c160n.log
grep "crash occ"  trace_c160n.log | wc
echo
echo
