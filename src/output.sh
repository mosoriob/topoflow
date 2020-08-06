#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f topoflow_run/out/Test1_0D-Q_1.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-Q_1.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-Q_1.txt"
    mv topoflow_run/out/Test1_0D-Q_1.txt ${OUTPUTS1}
fi
if [ ! -f topoflow_run/out/Test1_2D-u_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-u_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-u_1.nc"
    mv topoflow_run/out/Test1_2D-u_1.nc ${OUTPUTS2}
fi
if [ ! -f topoflow_run/out/Test1_0D-u_1.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-u_1.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-u_1.txt"
    mv topoflow_run/out/Test1_0D-u_1.txt ${OUTPUTS3}
fi
if [ ! -f topoflow_run/out/Test1.log ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1.log"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1.log"
    mv topoflow_run/out/Test1.log ${OUTPUTS4}
fi
if [ ! -f topoflow_run/out/Test1_2D-d_1.rti ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-d_1.rti"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-d_1.rti"
    mv topoflow_run/out/Test1_2D-d_1.rti ${OUTPUTS5}
fi
if [ ! -f topoflow_run/out/Test1_2D-d_1.rts ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-d_1.rts"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-d_1.rts"
    mv topoflow_run/out/Test1_2D-d_1.rts ${OUTPUTS6}
fi
if [ ! -f topoflow_run/out/Test1_2D-Q_1.rti ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-Q_1.rti"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-Q_1.rti"
    mv topoflow_run/out/Test1_2D-Q_1.rti ${OUTPUTS7}
fi
if [ ! -f topoflow_run/out/Test1_0D-u_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-u_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-u_1.nc"
    mv topoflow_run/out/Test1_0D-u_1.nc ${OUTPUTS8}
fi
if [ ! -f topoflow_run/out/Test1_2D-Q_1.bov ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-Q_1.bov"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-Q_1.bov"
    mv topoflow_run/out/Test1_2D-Q_1.bov ${OUTPUTS9}
fi
if [ ! -f topoflow_run/out/Test1_0D-ETrate_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-ETrate_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-ETrate_1.nc"
    mv topoflow_run/out/Test1_0D-ETrate_1.nc ${OUTPUTS10}
fi
if [ ! -f topoflow_run/out/Test1_2D-ETrate_1.bov ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-ETrate_1.bov"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-ETrate_1.bov"
    mv topoflow_run/out/Test1_2D-ETrate_1.bov ${OUTPUTS11}
fi
if [ ! -f topoflow_run/out/Test1_2D-Q_1.rts ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-Q_1.rts"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-Q_1.rts"
    mv topoflow_run/out/Test1_2D-Q_1.rts ${OUTPUTS12}
fi
if [ ! -f topoflow_run/out/Test1_2D-ETrate_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-ETrate_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-ETrate_1.nc"
    mv topoflow_run/out/Test1_2D-ETrate_1.nc ${OUTPUTS13}
fi
if [ ! -f topoflow_run/out/Test1_2D-u_1.rts ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-u_1.rts"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-u_1.rts"
    mv topoflow_run/out/Test1_2D-u_1.rts ${OUTPUTS14}
fi
if [ ! -f topoflow_run/out/Test1_0D-ETrate_1.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-ETrate_1.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-ETrate_1.txt"
    mv topoflow_run/out/Test1_0D-ETrate_1.txt ${OUTPUTS15}
fi
if [ ! -f topoflow_run/out/Test1_2D-u_1.rti ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-u_1.rti"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-u_1.rti"
    mv topoflow_run/out/Test1_2D-u_1.rti ${OUTPUTS16}
fi
if [ ! -f topoflow_run/out/Test1_0D-Q_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-Q_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-Q_1.nc"
    mv topoflow_run/out/Test1_0D-Q_1.nc ${OUTPUTS17}
fi
if [ ! -f topoflow_run/out/Test1_2D-ETrate_1.rts ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-ETrate_1.rts"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-ETrate_1.rts"
    mv topoflow_run/out/Test1_2D-ETrate_1.rts ${OUTPUTS18}
fi
if [ ! -f topoflow_run/__topo/Baro-Gam_60sec_DEM.rtg ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/__topo/Baro-Gam_60sec_DEM.rtg"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/__topo/Baro-Gam_60sec_DEM.rtg"
    mv topoflow_run/__topo/Baro-Gam_60sec_DEM.rtg ${OUTPUTS19}
fi
if [ ! -f topoflow_run/out/Test1_2D-d_1.bov ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-d_1.bov"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-d_1.bov"
    mv topoflow_run/out/Test1_2D-d_1.bov ${OUTPUTS20}
fi
if [ ! -f topoflow_run/out/Test1_2D-u_1.bov ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-u_1.bov"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-u_1.bov"
    mv topoflow_run/out/Test1_2D-u_1.bov ${OUTPUTS21}
fi
if [ ! -f topoflow_run/out/Test1_0D-d_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-d_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-d_1.nc"
    mv topoflow_run/out/Test1_0D-d_1.nc ${OUTPUTS22}
fi
if [ ! -f topoflow_run/out/Test1_2D-ETrate_1.rti ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-ETrate_1.rti"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-ETrate_1.rti"
    mv topoflow_run/out/Test1_2D-ETrate_1.rti ${OUTPUTS23}
fi
if [ ! -f topoflow_run/out/Test1_2D-Q_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-Q_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-Q_1.nc"
    mv topoflow_run/out/Test1_2D-Q_1.nc ${OUTPUTS24}
fi
if [ ! -f topoflow_run/out/Test1_0D-d_1.txt ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_0D-d_1.txt"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_0D-d_1.txt"
    mv topoflow_run/out/Test1_0D-d_1.txt ${OUTPUTS25}
fi
if [ ! -f topoflow_run/out/Test1_2D-d_1.nc ]; then
    echo -e "$(c R)[error] The model has not generated the output topoflow_run/out/Test1_2D-d_1.nc"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output topoflow_run/out/Test1_2D-d_1.nc"
    mv topoflow_run/out/Test1_2D-d_1.nc ${OUTPUTS26}
fi
