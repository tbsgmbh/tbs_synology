#!/bin/bash

sys=`cat /etc/os-release | grep NAME`
ubuntu=`echo $sys | grep Ubuntu`
centos=`echo $sys | grep CentOS`
debian=`echo $sys | grep Debian`
fedora=`echo $sys | grep Fedora`

if [ "$centos" ] || [ "$fedora" ]; then
	yum -y install perl-devel perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker patchutils patch
	xx=`which gcc`
	xx=`echo $xx | grep gcc`
	if [ ! $xx ]; then
			yum install gcc
	fi	
	xx=`which make`
  xx=`echo $xx | grep make`
  if [ ! $xx ]; then
			yum install make
  fi		
  xx=`which unzip`
	xx=`echo $xx | grep unzip`
	if [ ! $xx ]; then
			yum install unzip
	fi	
 
elif [ "$ubuntu" ] || [ "$debian" ]; then
	apt-get install libproc-processtable-perl
	apt-get install libelf-dev
	xx=`which patch`
  xx=`echo $xx | grep patch`
  if [ ! $xx ]; then
			apt-get install patchutils patch 
  fi	
	
	xx=`which gcc`
  xx=`echo $xx | grep gcc`
  if [ ! $xx ]; then
			apt-get install gcc
  fi
  
  xx=`which make`
  xx=`echo $xx | grep make`
  if [ ! $xx ]; then
			apt-get install make
  fi

fi

kernelv5=(
"v5.1_devm_i2c_new_dummy_device.patch"
"v5.1_vm_map_pages.patch"
"v5.0_ipu3-cio2.patch"
)

kernelv4=(
"v4.20_access_ok.patch"
"v4.18_add_map_atomic.patch"
"v4.18_fwnode_args_args.patch"	
"v4.17_i2c_check_num_msgs.patch"
"v4.17_proc_create_single.patch"
"v4.15_pmdown_time.patch"
"v4.14_fwnode_handle_get.patch"
"v4.14_saa7146_timer_cast.patch"
"v4.14_module_param_call.patch"
"v4.13_remove_nospec_h.patch"
"v4.13_drmP.patch"
"v4.12_revert_solo6x10_copykerneluser.patch"
"v4.11_drop_drm_file.patch"
"v4.10_fault_page.patch"
"v4.10_refcount.patch"
"v4.10_sched_signal.patch"
"v4.9_probe_new.patch"
"v4.9_dvb_net_max_mtu.patch"
"v4.9_mm_address.patch"
"v4.8_user_pages_flag.patch"
"v4.8_em28xx_bitfield.patch"
"v4.8_drm_crtc.patch"
"v4.8_dma_map_resource.patch"
"v4.7_dma_attrs.patch"
"v4.7_pci_alloc_irq_vectors.patch"
"v4.7_objtool_warning.patch"
"v4.7_copy_to_user_warning.patch"
"v4.6_i2c_mux.patch"
"v4.5_gpiochip_data_pointer.patch"
"v4.5_uvc_super_plus.patch"
"v4.5_copy_to_user_warning.patch"
"v4.4_gpio_chip_parent.patch"
"v4.3_bt87x_const_fix.patch"
"v4.2_atomic64.patch"
"v4.2_frame_vector.patch"
"v4.1_pat_enabled.patch"
"v4.1_drop_fwnode.patch"
"v4.0_dma_buf_export.patch"
"v4.0_drop_trace.patch"
"v4.0_fwnode.patch"
)   

kernelv3=(
"v3.19_get_user_pages_locked.patch"
"v3.19_get_user_pages_unlocked.patch"
"v3.18_drop_property_h.patch"
"v3.18_ktime_get_real_seconds.patch"
"v3.17_fix_clamp.patch"
"v3.17_remove_bpf_h.patch"
"v3.16_netdev.patch"
"v3.16_wait_on_bit.patch"
"v3.16_void_gpiochip_remove.patch"
"v3.13_ddbridge_pcimsi.patch"
"v3.12_kfifo_in.patch"
"v3.11_dev_groups.patch"
"v3.10_fw_driver_probe.patch"
"v3.10_ir_hix5hd2.patch"
"v3.10_const_snd_pcm_ops.patch"
"v3.9_drxj_warnings.patch"
"v3.8_config_of.patch"
"v3.6_pci_error_handlers.patch"
"v3.6_i2c_add_mux_adapter.patch"
"v3.4_i2c_add_mux_adapter.patch"
"v3.4_stk_webcam.patch"
"v3.3_eprobe_defer.patch"
"v3.2_devnode_uses_mode_t.patch"
"v3.2_alloc_ordered_workqueue.patch"
"v3.1_no_export_h.patch"
"v3.1_no_dma_buf_h.patch"
"v3.1_no_pm_qos.patch"
"v3.0_ida2bit.patch"
"v3.0_remove_ida_lird_dev.patch"
)

kernelv2=(
"v2.6.39_const_rc_main.patch"
"v2.6.38_use_getkeycode_new_setkeycode_new.patch"
"v2.6.38_config_of_for_of_node.patch"
"v2.6.37_dont_use_alloc_ordered_workqueue.patch"
"v2.6.36_input_getkeycode.patch"
"v2.6.36_dvb_usb_input_getkeycode.patch"
"v2.6.36_kmap_atomic.patch"
"v2.6.36_fence.patch"
"v2.6.35_firedtv_handle_fcp.patch"
"v2.6.35_i2c_new_probed_device.patch"
"v2.6.35_work_handler.patch"
"v2.6.35_kfifo.patch"
"v2.6.34_dvb_net.patch"
"v2.6.34_fix_define_warnings.patch"
"v2.6.34_usb_ss_ep_comp.patch"
"v2.6.33_input_handlers_are_int.patch"
"v2.6.33_pvrusb2_sysfs.patch"
"v2.6.33_no_gpio_request_one.patch"
"v2.6.32_dvb_net.patch"
"v2.6.32_kfifo.patch"
"v2.6.32_request_firmware_nowait.patch"
"v2.6.31_nodename.patch"
"v2.6.31_vm_ops.patch"
"v2.6.31_rc.patch"
)                        

cd linux
patch -s -f -N -p1 -i ../backports/api_version.patch
patch -s -f -N -p1 -i ../backports/pr_fmt.patch
patch -s -f -N -p1 -i ../backports/debug.patch
patch -s -f -N -p1 -i ../backports/drx39xxj.patch
patch -s -f -N -p1 -i ../backports/no_atomic_include.patch

ver=`uname -r`
echo "Applying patches for kernel $ver"

v1=`echo $ver | cut -d "." -f 1`
v2=`echo $ver | cut -d "." -f 2`
v3=`echo $ver | cut -d "." -f 3 | cut -d "-" -f 1`
echo "$v1 $v2 $v3"
if [ $v1 -eq 5 ]; then
		len5=${#kernelv5[@]}
		#echo $len5
		index=0
		while(( $index<$len5 ))
		do
			v11=`echo ${kernelv5[$index]} | cut -d "." -f 1 |  tr -d "a-zA-Z" `
			v22=`echo ${kernelv5[$index]} | cut -d "." -f 2 |  cut -d "_" -f 1`		
						
			if [ $v1 -eq $v11 -a $v2 -le $v22 ]; then
					#echo "$v11  $v22"
					patch -s -f -N -p1 -i ../backports/${kernelv5[$index]}
					#echo "${kernelv4[$index]}"
			else
					break
			fi
			let "index++"
		done	
elif [ $v1 -eq 4 ]; then
		#V5.xx.xx
		len5=${#kernelv5[@]}
		index=0
		while(( $index<$len5 ))
		do
			patch -s -f -N -p1 -i ../backports/${kernelv5[$index]}
			let "index++"
		done

		len4=${#kernelv4[@]}
		#echo $len4
		index=0
		while(( $index<$len4 ))
		do
			#echo ${kernelv4[$index]}
			v11=`echo ${kernelv4[$index]} | cut -d "." -f 1 |  tr -d "a-zA-Z" `
			v22=`echo ${kernelv4[$index]} | cut -d "." -f 2 | cut -d "_" -f 1`		
						
			if [ $v1 -eq $v11 -a $v2 -le $v22 ]; then
					#echo "$v11  $v22"
					patch -s -f -N -p1 -i ../backports/${kernelv4[$index]}
					#echo "${kernelv4[$index]}"
			else
					break
			fi
			let "index++"
		done
		
		if [ $v2 -lt 4 ]; then
				echo "$v2  $v3"
				patch -s -f -N -p1 -i ../backports/v4.5_get_user_pages_1.patch
		fi		
		
		if [ $v2 -eq 4 -a $v3 -le 166 ]; then
				echo "=$v2  $v3"
				patch -s -f -N -p1 -i ../backports/v4.5_get_user_pages_1.patch
		else
				patch -s -f -N -p1 -i ../backports/v4.5_get_user_pages_2.patch
		fi		
		
elif [ $v1 -eq 3 ]; then
		#V5.xx.xx
		len5=${#kernelv5[@]}
		index=0
		while(( $index<$len5 ))
		do
			patch -s -f -N -p1 -i ../backports/${kernelv5[$index]}
			let "index++"
		done
				
		len4=${#kernelv4[@]}
		index=0
		while(( $index<$len4 ))
		do
			patch -s -f -N -p1 -i ../backports/${kernelv4[$index]}
			#echo "${kernelv4[$index]}"
			let "index++"
		done
		
		len3=${#kernelv3[@]}
		index=0
		flag=0
		while(( $index<$len3 ))
		do
			#echo ${kernelv3[$index]}
			v11=`echo ${kernelv3[$index]} | cut -d "." -f 1 |  tr -d "a-zA-Z" `
			v22=`echo ${kernelv3[$index]} | cut -d "." -f 2 | cut -d "_" -f 1`		
			if [ $v1 -eq 3 -a $v2 -eq 0 -a $flag -eq 0 ]; then
					#echo "$v11  $v22"
					patch -s -f -N -p1 -i ../backports/no_atomic_include.patch
					#echo "no_atomic_include.patch"	
					let "flag++"
					continue	
			fi
			
			if [ $v1 -eq $v11 -a $v2 -le $v22 ]; then
					#echo "$v11  $v22"
					patch -s -f -N -p1 -i ../backports/${kernelv3[$index]}
					#echo "${kernelv3[$index]}"
			else
					break
			fi
			let "index++"
		done
		patch -s -f -N -p1 -i ../backports/v4.5_get_user_pages_1.patch
elif [ $v1 -eq 2 ]; then
		#V5.xx.xx
		len5=${#kernelv5[@]}
		index=0
		while(( $index<$len5 ))
		do
			patch -s -f -N -p1 -i ../backports/${kernelv5[$index]}
			let "index++"
		done

		#V4.xx.xx
		len4=${#kernelv4[@]}
		index=0
		while(( $index<$len4 ))
		do
			patch -s -f -N -p1 -i ../backports/${kernelv4[$index]}
			#echo "${kernelv4[$index]}"
			let "index++"
		done
		
	  #V3.xx.xx
		len3=${#kernelv3[@]}
		index=0
		while(( $index<$len3 ))
		do
			patch -s -f -N -p1 -i ../backports/${kernelv3[$index]}
			#echo "${kernelv3[$index]}"
			let "index++"
		done
		patch -s -f -N -p1 -i ../backports/no_atomic_include.patch

		
		#V2.xx.xx
		len2=${#kernelv2[@]}
		index=0
		flag=0
		while(( $index<$len2 ))
		do
			#echo ${kernelv4[$index]}
			v11=`echo ${kernelv2[$index]} | cut -d "." -f 1 |  tr -d "a-zA-Z" `
			v22=`echo ${kernelv2[$index]} | cut -d "." -f 2 |  tr -d "a-zA-Z" `
			v33=`echo ${kernelv2[$index]} | cut -d "." -f 3 | cut -d "_" -f 1`		
			if [ $v2 -eq 6 -a $v3 -le 36 -a $flag -eq 0 ]; then
					if [ -f "../backports/v2.6.38_use_getkeycode_new_setkeycode_new.patch" ]; then
							mv ../backports/v2.6.38_use_getkeycode_new_setkeycode_new.patch ../backports/v2.6.38_use_getkeycode_new_setkeycode_new.patch-bkk	
					fi
					patch -s -f -N -p1 -i ../backports/v2.6_rc_main_bsearch_h.patch
					patch -s -f -N -p1 -i ../backports/tda18271_debug_fix.patch
					#echo "v2.6_rc_main_bsearch_h.patch"
					#echo "tda18271_debug_fix.patch"
					let "flag++"
			fi
			
			if [ $v2 -eq 6 -a $v3 -le 39 -a $flag -eq 0 ]; then
					#echo "$v22  $v33"
					patch -s -f -N -p1 -i ../backports/v2.6_rc_main_bsearch_h.patch
					#echo "v2.6_rc_main_bsearch_h.patch"
					let "flag++"
			fi
			
			if [ $v2 -eq $v22 -a $v3 -le $v33 ]; then
					#echo "$v22  $v33"
					patch -s -f -N -p1 -i ../backports/${kernelv2[$index]}
					#echo "${kernelv2[$index]}"
			else
					break
			fi
			let "index++"
		done
		patch -s -f -N -p1 -i ../backports/v4.5_get_user_pages_1.patch
fi

cd ../
if [ -f tbs-tuner-firmwares*.tar.bz2 ]; then
		tar jxvf tbs-tuner-firmwares*.tar.bz2 -C /lib/firmware/
else
		echo "firmware file not exist!!!"		
fi

