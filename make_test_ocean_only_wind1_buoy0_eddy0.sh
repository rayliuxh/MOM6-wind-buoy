mkdir -p build/intel/ocean_only/wind1_buoy0_1/
(cd build/intel/ocean_only/wind1_buoy0_1/; rm -f path_names; \
../../../../src/mkmf/bin/list_paths -l ./ ../../../../src/MOM6/{config_src/dynamic,config_src/solo_driver,src/{*,*/*}}/ ; \
../../../../src/mkmf/bin/mkmf -t ../../../../src/mkmf/templates/linux-intel-eddy.mk -o '-I../../shared/repro' -p MOM6 -l '-L../../shared/repro -lfms' -c '-Duse_libMPI -Duse_netCDF -DSPMD' path_names /data/mathlib/netcdf/intel/4.3.2/include )
