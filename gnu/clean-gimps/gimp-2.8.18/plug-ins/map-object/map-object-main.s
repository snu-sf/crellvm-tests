	.text
	.file	"map-object-main.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.86, %rdi
	movabsq	$.L.str.87, %rsi
	movabsq	$.L.str.88, %rdx
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.90, %r9
	movabsq	$.L.str.91, %rcx
	movabsq	$.L.str.92, %r8
	movl	$1, %r10d
	movl	$49, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$49, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.86, %rdi
	movabsq	$.L.str.93, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.94, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.94, %rdi
	movabsq	$.L.str.95, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.94, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8(%rip)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	$run.values, (%rcx)
	callq	set_default_settings
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, image_id(%rip)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %edi
	testl	%edi, %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_22
.LBB1_22:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_19
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.86, %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	check_drawables
	movq	-48(%rbp), %rdi
	callq	main_dialog
	cmpl	$0, %eax
	je	.LBB1_5
# BB#4:                                 # %if.then
	callq	compute_image
	movabsq	$.L.str.86, %rdi
	movabsq	$mapvals, %rax
	movl	$528, %edx              # imm = 0x210
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_5:                                # %if.end
	jmp	.LBB1_19
.LBB1_6:                                # %sw.bb.13
	movabsq	$.L.str.86, %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	check_drawables
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	image_setup
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	compute_image
	jmp	.LBB1_19
.LBB1_7:                                # %sw.bb.16
	cmpl	$49, -12(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.17
	movl	$1, -56(%rbp)
	jmp	.LBB1_18
.LBB1_9:                                # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, mapvals+384
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+8
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+16
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+96
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+104
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+112
	movq	-24(%rbp), %rax
	movsd	408(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+24
	movq	-24(%rbp), %rax
	movsd	448(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+32
	movq	-24(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+40
	movq	-24(%rbp), %rax
	movsd	528(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+48
	movq	-24(%rbp), %rax
	movsd	568(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+56
	movq	-24(%rbp), %rax
	movsd	608(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+64
	movq	-24(%rbp), %rax
	movsd	648(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+432
	movq	-24(%rbp), %rax
	movsd	688(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+440
	movq	-24(%rbp), %rax
	movsd	728(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+448
	movq	-24(%rbp), %rax
	movl	768(%rax), %ecx
	movl	%ecx, mapvals+144
	movq	-24(%rbp), %rax
	movq	808(%rax), %rdx
	movq	%rdx, mapvals+200
	movq	816(%rax), %rdx
	movq	%rdx, mapvals+208
	movq	824(%rax), %rdx
	movq	%rdx, mapvals+216
	movq	832(%rax), %rax
	movq	%rax, mapvals+224
	movq	-24(%rbp), %rax
	movsd	848(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+152
	movq	-24(%rbp), %rax
	movsd	888(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+160
	movq	-24(%rbp), %rax
	movsd	928(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+168
	movq	-24(%rbp), %rax
	movsd	968(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+176
	movq	-24(%rbp), %rax
	movsd	1008(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+184
	movq	-24(%rbp), %rax
	movsd	1048(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+192
	movq	-24(%rbp), %rax
	movsd	1088(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+240
	movq	-24(%rbp), %rax
	movsd	1128(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+248
	movq	-24(%rbp), %rax
	movsd	1168(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+256
	movq	-24(%rbp), %rax
	movsd	1208(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+264
	movq	-24(%rbp), %rax
	movsd	1248(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+272
	movq	-24(%rbp), %rax
	movl	1288(%rax), %ecx
	movl	%ecx, mapvals+388
	movq	-24(%rbp), %rax
	movl	1328(%rax), %ecx
	movl	%ecx, mapvals+404
	movq	-24(%rbp), %rax
	movl	1368(%rax), %ecx
	movl	%ecx, mapvals+392
	movq	-24(%rbp), %rax
	movl	1408(%rax), %ecx
	movl	%ecx, mapvals+400
	movq	-24(%rbp), %rax
	movsd	1448(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+472
	movq	-24(%rbp), %rax
	movsd	1448(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+480
	movq	-24(%rbp), %rax
	movsd	1488(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+120
	movq	-24(%rbp), %rax
	movsd	1528(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+128
	movq	-24(%rbp), %rax
	movsd	1568(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+136
	movq	-24(%rbp), %rax
	movsd	1608(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+488
	movl	$0, -60(%rbp)
.LBB1_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -60(%rbp)
	jge	.LBB1_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-60(%rbp), %eax
	addl	$41, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movslq	-60(%rbp), %rcx
	movl	%eax, mapvals+496(,%rcx,4)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_10
.LBB1_13:                               # %for.end
	movl	$0, -60(%rbp)
.LBB1_14:                               # %for.cond.139
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -60(%rbp)
	jge	.LBB1_17
# BB#15:                                # %for.body.141
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	-60(%rbp), %eax
	addl	$47, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movslq	-60(%rbp), %rcx
	movl	%eax, mapvals+520(,%rcx,4)
# BB#16:                                # %for.inc.149
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_14
.LBB1_17:                               # %for.end.151
	movq	-48(%rbp), %rdi
	callq	check_drawables
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	image_setup
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	compute_image
.LBB1_18:                               # %if.end.153
	jmp	.LBB1_19
.LBB1_19:                               # %sw.epilog
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	cmpl	$1, -52(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.155
	callq	gimp_displays_flush
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.157
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4628293042053316608     # double 27
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI3_4:
	.quad	4598175219545276416     # double 0.25
.LCPI3_5:
	.quad	4613937818241073152     # double 3
.LCPI3_6:
	.quad	-4616189618054758400    # double -1
.LCPI3_7:
	.quad	-4620693217682128896    # double -0.5
.LCPI3_8:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	set_default_settings,@function
set_default_settings:                   # @set_default_settings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$mapvals, %rdi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_8, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$24, %rdi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$48, %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$72, %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$96, %rdi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$152, %rdi
	movsd	.LCPI3_7, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_8, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$176, %rdi
	movsd	.LCPI3_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$120, %rdi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rdi
	addq	$200, %rdi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movl	$0, mapvals+384
	movsd	%xmm1, mapvals+464
	movsd	%xmm3, mapvals+432
	movsd	%xmm3, mapvals+440
	movsd	%xmm3, mapvals+448
	movsd	%xmm2, mapvals+456
	movsd	%xmm1, mapvals+472
	movsd	%xmm1, mapvals+480
	movsd	%xmm0, mapvals+488
	movsd	%xmm0, mapvals+424
	movl	$0, mapvals+144
	movl	$1, mapvals+388
	movl	$0, mapvals+392
	movl	$0, mapvals+396
	movl	$0, mapvals+400
	movl	$0, mapvals+404
	movl	$0, mapvals+408
	movl	$1, mapvals+412
	movsd	%xmm0, mapvals+232
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm3, mapvals+240
	movsd	%xmm2, mapvals+248
	movsd	%xmm1, mapvals+256
	movsd	%xmm1, mapvals+264
	movsd	%xmm0, mapvals+272
	movl	$0, -4(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -4(%rbp)
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-4(%rbp), %rax
	movl	$-1, mapvals+496(,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movl	$0, -4(%rbp)
.LBB3_5:                                # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -4(%rbp)
	jge	.LBB3_8
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB3_5 Depth=1
	movslq	-4(%rbp), %rax
	movl	$-1, mapvals+520(,%rax,4)
# BB#7:                                 # %for.inc.6
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end.8
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_default_settings, .Lfunc_end3-set_default_settings
	.cfi_endproc

	.align	16, 0x90
	.type	check_drawables,@function
check_drawables:                        # @check_drawables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -12(%rbp)
	jge	.LBB4_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-12(%rbp), %rax
	cmpl	$-1, mapvals+496(,%rax,4)
	je	.LBB4_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	mapvals+496(,%rax,4), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	je	.LBB4_5
# BB#4:                                 # %lor.lhs.false.4
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	mapvals+496(,%rax,4), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB4_6
.LBB4_5:                                # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-12(%rbp), %rax
	movl	%ecx, mapvals+496(,%rax,4)
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB4_1
.LBB4_8:                                # %for.end
	movl	$0, -12(%rbp)
.LBB4_9:                                # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -12(%rbp)
	jge	.LBB4_16
# BB#10:                                # %for.body.13
                                        #   in Loop: Header=BB4_9 Depth=1
	movslq	-12(%rbp), %rax
	cmpl	$-1, mapvals+520(,%rax,4)
	je	.LBB4_13
# BB#11:                                # %lor.lhs.false.17
                                        #   in Loop: Header=BB4_9 Depth=1
	movslq	-12(%rbp), %rax
	movl	mapvals+520(,%rax,4), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	je	.LBB4_13
# BB#12:                                # %lor.lhs.false.22
                                        #   in Loop: Header=BB4_9 Depth=1
	movslq	-12(%rbp), %rax
	movl	mapvals+520(,%rax,4), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB4_14
.LBB4_13:                               # %if.then.27
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-12(%rbp), %rax
	movl	%ecx, mapvals+520(,%rax,4)
.LBB4_14:                               # %if.end.31
                                        #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %for.inc.32
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB4_9
.LBB4_16:                               # %for.end.34
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	check_drawables, .Lfunc_end4-check_drawables
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	mapvals,@object         # @mapvals
	.bss
	.globl	mapvals
	.align	8
mapvals:
	.zero	528
	.size	mapvals, 528

	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.9
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.9
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.17
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.17
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.21
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.21
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.32
	.quad	.L.str.33
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.35
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.37
	.quad	.L.str.35
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.39
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.41
	.quad	.L.str.39
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.44
	.quad	.L.str.45
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.46
	.quad	.L.str.47
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.48
	.quad	.L.str.49
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.50
	.quad	.L.str.51
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.52
	.quad	.L.str.53
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.54
	.quad	.L.str.55
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.56
	.quad	.L.str.57
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.58
	.quad	.L.str.59
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.60
	.quad	.L.str.61
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.62
	.quad	.L.str.63
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.64
	.quad	.L.str.65
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.66
	.quad	.L.str.67
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.68
	.quad	.L.str.69
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.70
	.quad	.L.str.71
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.72
	.quad	.L.str.73
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.74
	.quad	.L.str.75
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.76
	.quad	.L.str.77
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.78
	.quad	.L.str.79
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.80
	.quad	.L.str.81
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.82
	.quad	.L.str.83
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.84
	.quad	.L.str.85
	.size	query.args, 1176

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"maptype"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Type of mapping (0=plane,1=sphere,2=box,3=cylinder)"
	.size	.L.str.7, 52

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"viewpoint-x"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Position of viewpoint (x,y,z)"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"viewpoint-y"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"viewpoint-z"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"position-x"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Object position (x,y,z)"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"position-y"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"position-z"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"firstaxis-x"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"First axis of object [x,y,z]"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"firstaxis-y"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"firstaxis-z"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"secondaxis-x"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Second axis of object [x,y,z]"
	.size	.L.str.21, 30

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"secondaxis-y"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"secondaxis-z"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"rotationangle-x"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Rotation about X axis in degrees"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"rotationangle-y"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Rotation about Y axis in degrees"
	.size	.L.str.27, 33

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"rotationangle-z"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Rotation about Z axis in degrees"
	.size	.L.str.29, 33

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"lighttype"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Type of lightsource (0=point,1=directional,2=none)"
	.size	.L.str.31, 51

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"lightcolor"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Lightsource color (r,g,b)"
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"lightposition-x"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Lightsource position (x,y,z)"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"lightposition-y"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"lightposition-z"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"lightdirection-x"
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Lightsource direction [x,y,z]"
	.size	.L.str.39, 30

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"lightdirection-y"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"lightdirection-z"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"ambient_intensity"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Material ambient intensity (0..1)"
	.size	.L.str.43, 34

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"diffuse_intensity"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Material diffuse intensity (0..1)"
	.size	.L.str.45, 34

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"diffuse_reflectivity"
	.size	.L.str.46, 21

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Material diffuse reflectivity (0..1)"
	.size	.L.str.47, 37

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"specular_reflectivity"
	.size	.L.str.48, 22

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Material specular reflectivity (0..1)"
	.size	.L.str.49, 38

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"highlight"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Material highlight (0..->), note: it's expotential"
	.size	.L.str.51, 51

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"antialiasing"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Apply antialiasing (TRUE/FALSE)"
	.size	.L.str.53, 32

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"tiled"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Tile source image (TRUE/FALSE)"
	.size	.L.str.55, 31

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"newimage"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Create a new image (TRUE/FALSE)"
	.size	.L.str.57, 32

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"transparentbackground"
	.size	.L.str.58, 22

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Make background transparent (TRUE/FALSE)"
	.size	.L.str.59, 41

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"radius"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Sphere/cylinder radius (only used when maptype=1 or 3)"
	.size	.L.str.61, 55

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"x-scale"
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Box x size (0..->)"
	.size	.L.str.63, 19

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"y-scale"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Box y size (0..->)"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"z-scale"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Box z size (0..->)"
	.size	.L.str.67, 19

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"cylinder-length"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Cylinder length (0..->)"
	.size	.L.str.69, 24

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"box-front-drawable"
	.size	.L.str.70, 19

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Box front face (set these to -1 if not used)"
	.size	.L.str.71, 45

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"box-back-drawable"
	.size	.L.str.72, 18

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Box back face"
	.size	.L.str.73, 14

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"box-top-drawable"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Box top face"
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"box-bottom-drawable"
	.size	.L.str.76, 20

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Box bottom face"
	.size	.L.str.77, 16

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"box-left-drawable"
	.size	.L.str.78, 18

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Box left face"
	.size	.L.str.79, 14

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"box-right-drawable"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Box right face"
	.size	.L.str.81, 15

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"cyl-top-drawable"
	.size	.L.str.82, 17

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Cylinder top face (set these to -1 if not used)"
	.size	.L.str.83, 48

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"cyl-bottom-drawable"
	.size	.L.str.84, 20

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Cylinder bottom face"
	.size	.L.str.85, 21

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"plug-in-map-object"
	.size	.L.str.86, 19

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Map the image to an object (plane, sphere, box or cylinder)"
	.size	.L.str.87, 60

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"No help yet"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Tom Bech & Federico Mena Quintero"
	.size	.L.str.89, 34

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Version 1.2.0, July 16 1998"
	.size	.L.str.90, 28

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Map _Object..."
	.size	.L.str.91, 15

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"RGB*"
	.size	.L.str.92, 5

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.93, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.94, 20

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"UTF-8"
	.size	.L.str.95, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
