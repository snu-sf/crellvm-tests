	.text
	.file	"iconfig.bc"
	.type	gs_main_instance_init_values,@object # @gs_main_instance_init_values
	.section	.rodata,"a",@progbits
	.globl	gs_main_instance_init_values
	.align	8
gs_main_instance_init_values:
	.quad	0
	.long	20000                   # 0x4e20
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.zero	56
	.zero	16
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gs_main_instance_init_values, 184

	.type	gs_init_files,@object   # @gs_init_files
	.globl	gs_init_files
	.align	16
gs_init_files:
	.asciz	"gs_btokn.ps\000gs_dps1.ps\000gs_dps2.ps\000gs_type1.ps\000gs_lev2.ps\000gs_res.ps\000gs_typ42.ps\000gs_cidfn.ps\000gs_cidcm.ps\000gs_fntem.ps\000gs_cidtt.ps\000gs_cidfm.ps\000gs_cmap.ps\000gs_setpd.ps\000gs_fapi.ps\000gs_typ32.ps\000gs_frsd.ps\000gs_ll3.ps\000gs_mex_e.ps\000gs_mro_e.ps\000gs_pdf_e.ps\000gs_wan_e.ps\000pdf_ops.ps\000gs_l2img.ps\000pdf_rbld.ps\000pdf_base.ps\000pdf_draw.ps\000pdf_font.ps\000pdf_main.ps\000pdf_sec.ps\000gs_css_e.ps\000gs_cff.ps\000gs_mgl_e.ps\000gs_agl.ps\000gs_ttf.ps\000gs_icc.ps\000gs_dps.ps\000gs_dpnxt.ps\000gs_epsf.ps\000gs_pdfwr.ps\000"
	.size	gs_init_files, 458

	.type	gs_init_files_sizeof,@object # @gs_init_files_sizeof
	.globl	gs_init_files_sizeof
	.align	4
gs_init_files_sizeof:
	.long	458                     # 0x1ca
	.size	gs_init_files_sizeof, 4

	.type	gs_emulators,@object    # @gs_emulators
	.globl	gs_emulators
	.align	16
gs_emulators:
	.asciz	"PostScript\000PostScriptLevel1\000PostScriptLevel2\000PostScriptLevel3\000PDF\000"
	.size	gs_emulators, 67

	.type	gs_emulators_sizeof,@object # @gs_emulators_sizeof
	.globl	gs_emulators_sizeof
	.align	4
gs_emulators_sizeof:
	.long	67                      # 0x43
	.size	gs_emulators_sizeof, 4

	.type	build_function_type_table,@object # @build_function_type_table
	.globl	build_function_type_table
	.align	16
build_function_type_table:
	.long	4                       # 0x4
	.zero	4
	.quad	gs_build_function_4
	.long	0                       # 0x0
	.zero	4
	.quad	gs_build_function_0
	.long	2                       # 0x2
	.zero	4
	.quad	gs_build_function_2
	.long	3                       # 0x3
	.zero	4
	.quad	gs_build_function_3
	.zero	16
	.size	build_function_type_table, 80

	.type	build_function_type_table_count,@object # @build_function_type_table_count
	.globl	build_function_type_table_count
	.align	4
build_function_type_table_count:
	.long	4                       # 0x4
	.size	build_function_type_table_count, 4

	.type	op_defs_all,@object     # @op_defs_all
	.globl	op_defs_all
	.align	16
op_defs_all:
	.quad	interp1_op_defs
	.quad	interp2_op_defs
	.quad	zbseq_l2_op_defs
	.quad	zcolor1_op_defs
	.quad	zht1_op_defs
	.quad	zupath_l2_op_defs
	.quad	zvmem2_op_defs
	.quad	zdps1_l2_op_defs
	.quad	ireclaim_l2_op_defs
	.quad	zcharx_op_defs
	.quad	zchar1_op_defs
	.quad	zfont1_op_defs
	.quad	zmisc1_op_defs
	.quad	zusparam_op_defs
	.quad	zmisc2_op_defs
	.quad	zchar2_op_defs
	.quad	zfont2_op_defs
	.quad	zchar42_op_defs
	.quad	zfont42_op_defs
	.quad	zfrsd_op_defs
	.quad	zfcid0_op_defs
	.quad	zfcid1_op_defs
	.quad	zcrd_l2_op_defs
	.quad	zfcmap_op_defs
	.quad	zcfont_op_defs
	.quad	zfont0_op_defs
	.quad	zfdcte_op_defs
	.quad	zfdctd_op_defs
	.quad	zfdecode_op_defs
	.quad	zfilter2_op_defs
	.quad	ziodev2_l2_op_defs
	.quad	zdevice2_l2_op_defs
	.quad	zmedia2_l2_op_defs
	.quad	zpcolor_l2_op_defs
	.quad	zarith_op_defs
	.quad	zarray_op_defs
	.quad	zcontrol1_op_defs
	.quad	zcontrol2_op_defs
	.quad	zcontrol3_op_defs
	.quad	zdict1_op_defs
	.quad	zdict2_op_defs
	.quad	zfile_op_defs
	.quad	zfile1_op_defs
	.quad	zfileio1_op_defs
	.quad	zfileio2_op_defs
	.quad	zfilter_op_defs
	.quad	zfproc_op_defs
	.quad	zgeneric_op_defs
	.quad	ziodev_op_defs
	.quad	zmath_op_defs
	.quad	zalg_op_defs
	.quad	zmisc_op_defs
	.quad	zpacked_op_defs
	.quad	zrelbit_op_defs
	.quad	zstack_op_defs
	.quad	zstring_op_defs
	.quad	zsysvm_op_defs
	.quad	ztoken_op_defs
	.quad	ztype_op_defs
	.quad	zvmem_op_defs
	.quad	zbfont_op_defs
	.quad	zchar_a_op_defs
	.quad	zchar_b_op_defs
	.quad	zcolor_op_defs
	.quad	zcolor_ext_op_defs
	.quad	zdevice_op_defs
	.quad	zfont_op_defs
	.quad	zfontenum_op_defs
	.quad	zgstate1_op_defs
	.quad	zgstate2_op_defs
	.quad	zgstate3_op_defs
	.quad	zdfilter_op_defs
	.quad	zht_op_defs
	.quad	zimage_op_defs
	.quad	zmatrix_op_defs
	.quad	zmatrix2_op_defs
	.quad	zpaint_op_defs
	.quad	zpath_op_defs
	.quad	pantone_op_defs
	.quad	zdscpars_op_defs
	.quad	zfapi_op_defs
	.quad	zfbcp_op_defs
	.quad	zpath1_op_defs
	.quad	zht2_l2_op_defs
	.quad	zcssepr_l2_op_defs
	.quad	zfsample_op_defs
	.quad	zfunc_op_defs
	.quad	zchar32_op_defs
	.quad	zfont32_op_defs
	.quad	zfimscale_op_defs
	.quad	zform_op_defs
	.quad	zimage3_op_defs
	.quad	zmisc3_op_defs
	.quad	zcolor3_l3_op_defs
	.quad	zshade_op_defs
	.quad	zfzlib_op_defs
	.quad	ztrans1_op_defs
	.quad	ztrans2_op_defs
	.quad	zfmd5_op_defs
	.quad	zfsha2_op_defs
	.quad	zfarc4_op_defs
	.quad	zfaes_op_defs
	.quad	zicc_ll3_op_defs
	.quad	zpdfops_op_defs
	.quad	zcontext1_op_defs
	.quad	zcontext2_op_defs
	.quad	zdps_op_defs
	.quad	zdpnext_op_defs
	.quad	zfjbig2_op_defs
	.quad	zfjpx_op_defs
	.quad	0
	.size	op_defs_all, 888

	.type	op_def_count,@object    # @op_def_count
	.globl	op_def_count
	.align	4
op_def_count:
	.long	1760                    # 0x6e0
	.size	op_def_count, 4

	.type	i_plugin_table,@object  # @i_plugin_table
	.globl	i_plugin_table
	.align	8
i_plugin_table:
	.zero	8
	.size	i_plugin_table, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
