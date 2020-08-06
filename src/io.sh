#!/bin/bash

# -----------------------------------------------
# Option Parsing function for:
# -i<1..n> [files.. ] -p<1..n> {values} -o<1..n> [files.. ]
# {-iX fileX} {-pX valueX} {-oX fileX}
#
#
# - Please pass 3 Arguments to this script
#   - Arg1: Number of Inputs expected
#   - Arg2: Number of Parameters expected
#   - Arg3: Number of Outputs expected
# -----------------------------------------------

INUM=$1; shift
PNUM=$1; shift
ONUM=$1; shift

set_variables()
{
    for ((i=1; i<=INUM; i++)); do typeset ICOUNT$i=0; done
    for ((i=1; i<=PNUM; i++)); do typeset PCOUNT$i=0; done
    for ((i=1; i<=ONUM; i++)); do typeset OCOUNT$i=0; done
}

IFLAG=();
PFLAG=();
OFLAG=();
reset_flags()
{
    for ((j=1; j<=INUM; j++)); do IFLAG[$j]='0'; done
    for ((j=1; j<=PNUM; j++)); do PFLAG[$j]='0'; done
    for ((k=1; k<=ONUM; k++)); do OFLAG[$k]='0'; done
}

set_variables
reset_flags

while [ $# -gt 0 ]
do
    case "$1" in
        -i*) in=$(echo $1 | cut -di -f2); reset_flags; IFLAG[$in]='1';;
        -p*) pa=$(echo $1 | cut -dp -f2); reset_flags; PFLAG[$pa]='1';;
        -o*) op=$(echo $1 | cut -do -f2); reset_flags; OFLAG[$op]='1';;
        --) shift; break;;
        *)  for((ind=1; ind<=INUM; ind++)); do
                if [ "${IFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${INPUTS[$ind]}" != "" ]; then x="|"; fi
                    INPUTS[$ind]="${INPUTS[$ind]}$x$1"
                fi
            done
            for((ind=1; ind<=PNUM; ind++)); do
                if [ "${PFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${PARAM[$ind]}" != "" ]; then x="|"; fi
                    PARAMS[$ind]="${PARAMS[$ind]}$x$1"
                fi
            done
            for((ind=1; ind<=ONUM; ind++)); do
                if [ "${OFLAG[$ind]}" = "1" ]
                then
                    x=""
                    if [ "${OUTPUTS[$ind]}" != "" ]; then x="|"; fi
                    OUTPUTS[$ind]="${OUTPUTS[$ind]}$x$1"
                fi
            done;;
    esac
    shift
done

IFS='|'
for ((i=1; i<=INUM; i++)); do typeset INPUTS$i=$(echo ${INPUTS[$i]}); done
for ((i=1; i<=PNUM; i++)); do typeset PARAMS$i=$(echo ${PARAMS[$i]}); done
for ((i=1; i<=ONUM; i++)); do typeset OUTPUTS$i=$(echo ${OUTPUTS[$i]}); done
IFS=' '

run_zip=${INPUTS1}
export run_zip
met_zip=${INPUTS2}
export met_zip



## PARAMETERS VARIABLES
start_date=${PARAMS1}
export  start_date
end_date=${PARAMS2}
export  end_date
dt_cfg=${PARAMS3}
export  dt_cfg
dt=${PARAMS4}
export  dt


umask 0000


CURDIR=`pwd`
RUNDIR=$CURDIR/topoflow_run
export RUNDIR

unzip $run_zip -d $RUNDIR


mkdir -p $CURDIR/tmp
unzip $met_zip -d $CURDIR/tmp

mkdir -p $RUNDIR/__met
find $CURDIR/tmp -iname '*.rts' -exec mv '{}' $RUNDIR/__met \;
find $CURDIR/tmp -iname '*.rti' -exec mv '{}' $RUNDIR/__met \;


## PARAMETERS VARIABLES
if [ ! -f topoflow_run/topoflow_cfg/Test1_channels_kinematic_wave.cfg.bk ]; then
  cp topoflow_run/topoflow_cfg/Test1_channels_kinematic_wave.cfg topoflow_run/topoflow_cfg/Test1_channels_kinematic_wave.cfg.bk
fi

envsubst < topoflow_run/topoflow_cfg/Test1_channels_kinematic_wave.cfg.bk> topoflow_run/topoflow_cfg/Test1_channels_kinematic_wave.cfg
rm topoflow_run/topoflow_cfg/Test1_channels_kinematic_wave.cfg.bk
if [ ! -f topoflow_run/topoflow_cfg/Test1_meteorology.cfg.bk ]; then
  cp topoflow_run/topoflow_cfg/Test1_meteorology.cfg topoflow_run/topoflow_cfg/Test1_meteorology.cfg.bk
fi

envsubst < topoflow_run/topoflow_cfg/Test1_meteorology.cfg.bk> topoflow_run/topoflow_cfg/Test1_meteorology.cfg
rm topoflow_run/topoflow_cfg/Test1_meteorology.cfg.bk
if [ ! -f topoflow_run/topoflow_cfg/Test1_path_info.cfg.bk ]; then
  cp topoflow_run/topoflow_cfg/Test1_path_info.cfg topoflow_run/topoflow_cfg/Test1_path_info.cfg.bk
fi

envsubst < topoflow_run/topoflow_cfg/Test1_path_info.cfg.bk> topoflow_run/topoflow_cfg/Test1_path_info.cfg
rm topoflow_run/topoflow_cfg/Test1_path_info.cfg.bk
if [ ! -f topoflow_run/topoflow_cfg/Test1_time_info.cfg.bk ]; then
  cp topoflow_run/topoflow_cfg/Test1_time_info.cfg topoflow_run/topoflow_cfg/Test1_time_info.cfg.bk
fi

envsubst < topoflow_run/topoflow_cfg/Test1_time_info.cfg.bk> topoflow_run/topoflow_cfg/Test1_time_info.cfg
rm topoflow_run/topoflow_cfg/Test1_time_info.cfg.bk
if [ ! -f topoflow_run/topoflow_cfg/Test1_topoflow.cfg.bk ]; then
  cp topoflow_run/topoflow_cfg/Test1_topoflow.cfg topoflow_run/topoflow_cfg/Test1_topoflow.cfg.bk
fi

envsubst < topoflow_run/topoflow_cfg/Test1_topoflow.cfg.bk> topoflow_run/topoflow_cfg/Test1_topoflow.cfg
rm topoflow_run/topoflow_cfg/Test1_topoflow.cfg.bk


