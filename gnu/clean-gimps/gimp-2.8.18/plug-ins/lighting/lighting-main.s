	.text
	.file	"lighting-main.bc"
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
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.48, %r9
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.50, %r8
	movl	$1, %r10d
	movl	$24, %r11d
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
	movl	$24, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.51, %rsi
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
	movabsq	$.L.str.52, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.52, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	callq	set_default_settings
	movabsq	$.L.str.44, %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, mapvals
	callq	check_drawables
	cmpl	$3, -56(%rbp)
	jne	.LBB1_17
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_15
# BB#4:                                 # %if.then.10
	movl	$16, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_18
.LBB1_18:                               # %if.then.10
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_19
.LBB1_19:                               # %if.then.10
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_13
.LBB1_5:                                # %sw.bb
	movq	-48(%rbp), %rdi
	callq	main_dialog
	cmpl	$0, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then.13
	callq	compute_image
	movabsq	$.L.str.44, %rdi
	movabsq	$mapvals, %rax
	movl	$944, %edx              # imm = 0x3B0
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_7:                                # %if.end
	jmp	.LBB1_14
.LBB1_8:                                # %sw.bb.16
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	image_setup
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	compute_image
	callq	gimp_displays_flush
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_9:                                # %sw.bb.19
	cmpl	$24, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.21
	movl	$1, -56(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, mapvals+4
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, mapvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, mapvals+892
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, mapvals+896
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, mapvals+876
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, mapvals+64
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdx
	movq	%rdx, mapvals+120
	movq	376(%rax), %rdx
	movq	%rdx, mapvals+128
	movq	384(%rax), %rdx
	movq	%rdx, mapvals+136
	movq	392(%rax), %rax
	movq	%rax, mapvals+144
	movq	-24(%rbp), %rax
	movsd	408(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+72
	movq	-24(%rbp), %rax
	movsd	448(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+80
	movq	-24(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+88
	movq	-24(%rbp), %rax
	movsd	528(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+96
	movq	-24(%rbp), %rax
	movsd	568(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+104
	movq	-24(%rbp), %rax
	movsd	608(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+112
	movq	-24(%rbp), %rax
	movsd	648(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+688
	movq	-24(%rbp), %rax
	movsd	688(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+696
	movq	-24(%rbp), %rax
	movsd	728(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+704
	movq	-24(%rbp), %rax
	movsd	768(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+712
	movq	-24(%rbp), %rax
	movsd	808(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+720
	movq	-24(%rbp), %rax
	movl	848(%rax), %ecx
	movl	%ecx, mapvals+880
	movq	-24(%rbp), %rax
	movl	888(%rax), %ecx
	movl	%ecx, mapvals+884
	movq	-24(%rbp), %rax
	movl	928(%rax), %ecx
	movl	%ecx, mapvals+888
	callq	check_drawables
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	image_setup
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	compute_image
.LBB1_12:                               # %if.end.84
	jmp	.LBB1_13
.LBB1_13:                               # %sw.default
	jmp	.LBB1_14
.LBB1_14:                               # %sw.epilog
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.85
	movl	$0, -56(%rbp)
.LBB1_16:                               # %if.end.86
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.87
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	xpostab, %rdi
	callq	g_free
	movq	ypostab, %rdi
	callq	g_free
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
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4611686018427387904     # double 2
.LCPI3_2:
	.quad	-4616189618054758400    # double -1
.LCPI3_3:
	.quad	4602678819172646912     # double 0.5
.LCPI3_4:
	.quad	4598175219545276416     # double 0.25
.LCPI3_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_6:
	.quad	4628293042053316608     # double 27
.LCPI3_7:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI3_8:
	.quad	4596373779694328218     # double 0.20000000000000001
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
	subq	$96, %rsp
	movabsq	$mapvals, %rax
	addq	$16, %rax
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movl	$1, mapvals+920
	movl	$0, mapvals+924
	movl	$0, mapvals+928
	movq	%rax, %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$40, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$72, %rax
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$96, %rax
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$120, %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$mapvals, %rax
	addq	$176, %rax
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, mapvals+152
	movl	$0, mapvals+64
	movl	$1, mapvals+160
	movq	%rax, %rdi
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$200, %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$280, %rax              # imm = 0x118
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movabsq	$mapvals, %rax
	addq	$304, %rax              # imm = 0x130
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movl	$3, -4(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -4(%rbp)
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-4(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-4(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movl	$1, -4(%rbp)
.LBB3_5:                                # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -4(%rbp)
	jge	.LBB3_8
# BB#6:                                 # %for.body.5
                                        #   in Loop: Header=BB3_5 Depth=1
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-4(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$56, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movsd	%xmm0, 88(%rdi)
	movslq	-4(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movl	$3, (%rdi)
	movslq	-4(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 96(%rax)
# BB#7:                                 # %for.inc.14
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end.16
	movsd	.LCPI3_5, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_3, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI3_7, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI3_8, %xmm7         # xmm7 = mem[0],zero
	movsd	%xmm7, mapvals+688
	movsd	%xmm5, mapvals+696
	movsd	%xmm6, mapvals+704
	movsd	%xmm5, mapvals+712
	movsd	%xmm4, mapvals+720
	movl	$0, mapvals+728
	movsd	%xmm3, mapvals+848
	movl	$3, mapvals+872
	movsd	%xmm2, mapvals+936
	movl	$0, mapvals+876
	movsd	%xmm1, mapvals+864
	movsd	%xmm0, mapvals+856
	movl	$0, mapvals+880
	movl	$0, mapvals+884
	movl	$0, mapvals+888
	movl	$0, mapvals+892
	movl	$0, mapvals+896
	movl	$0, mapvals+900
	movl	$0, mapvals+908
	movl	$1, mapvals+916
	movl	$-1, mapvals+4
	movl	$-1, mapvals+8
	addq	$96, %rsp
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
	cmpl	$0, mapvals+892
	je	.LBB4_9
# BB#1:                                 # %if.then
	cmpl	$-1, mapvals+4
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true
	movl	mapvals+4, %edi
	callq	gimp_item_get_image
	cmpl	$-1, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	movl	$0, mapvals+892
	movl	$-1, mapvals+4
.LBB4_4:                                # %if.end
	movl	mapvals+4, %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB4_7
# BB#5:                                 # %lor.lhs.false
	movl	mapvals, %edi
	callq	gimp_drawable_width
	movl	mapvals+4, %edi
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	gimp_drawable_width
	movl	-4(%rbp), %edi          # 4-byte Reload
	cmpl	%eax, %edi
	jne	.LBB4_7
# BB#6:                                 # %lor.lhs.false.8
	movl	mapvals, %edi
	callq	gimp_drawable_height
	movl	mapvals+4, %edi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	gimp_drawable_height
	movl	-8(%rbp), %edi          # 4-byte Reload
	cmpl	%eax, %edi
	je	.LBB4_8
.LBB4_7:                                # %if.then.12
	movl	$0, mapvals+892
	movl	$-1, mapvals+4
.LBB4_8:                                # %if.end.13
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.14
	cmpl	$0, mapvals+896
	je	.LBB4_17
# BB#10:                                # %if.then.16
	cmpl	$-1, mapvals+8
	je	.LBB4_13
# BB#11:                                # %land.lhs.true.18
	movl	mapvals+8, %edi
	callq	gimp_item_get_image
	cmpl	$-1, %eax
	jne	.LBB4_13
# BB#12:                                # %if.then.21
	movl	$0, mapvals+896
	movl	$-1, mapvals+8
.LBB4_13:                               # %if.end.22
	movl	mapvals+8, %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB4_15
# BB#14:                                # %lor.lhs.false.25
	movl	mapvals+8, %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB4_16
.LBB4_15:                               # %if.then.28
	movl	$0, mapvals+896
	movl	$-1, mapvals+8
.LBB4_16:                               # %if.end.29
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.30
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
	.zero	944
	.size	mapvals, 944

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
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
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
	.quad	.L.str.25
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.25
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.long	3                       # 0x3
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
	.quad	.L.str.37
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.size	query.args, 576

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
	.asciz	"bumpdrawable"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Bumpmap drawable (set to 0 if disabled)"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"envdrawable"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Environmentmap drawable (set to 0 if disabled)"
	.size	.L.str.9, 47

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dobumpmap"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Enable bumpmapping (TRUE/FALSE)"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"doenvmap"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Enable envmapping (TRUE/FALSE)"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"bumpmaptype"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Type of mapping (0=linear,1=log, 2=sinusoidal, 3=spherical)"
	.size	.L.str.15, 60

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"lighttype"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Type of lightsource (0=point,1=directional,3=spot,4=none)"
	.size	.L.str.17, 58

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"lightcolor"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Lightsource color (r,g,b)"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"lightposition-x"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Lightsource position (x,y,z)"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"lightposition-y"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"lightposition-z"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"lightdirection-x"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Lightsource direction [x,y,z]"
	.size	.L.str.25, 30

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"lightdirection-y"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"lightdirection-z"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ambient-intensity"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Material ambient intensity (0..1)"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"diffuse-intensity"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Material diffuse intensity (0..1)"
	.size	.L.str.31, 34

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"diffuse-reflectivity"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Material diffuse reflectivity (0..1)"
	.size	.L.str.33, 37

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"specular-reflectivity"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Material specular reflectivity (0..1)"
	.size	.L.str.35, 38

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"highlight"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Material highlight (0..->), note: it's expotential"
	.size	.L.str.37, 51

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"antialiasing"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Apply antialiasing (TRUE/FALSE)"
	.size	.L.str.39, 32

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"newimage"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Create a new image (TRUE/FALSE)"
	.size	.L.str.41, 32

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"transparentbackground"
	.size	.L.str.42, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Make background transparent (TRUE/FALSE)"
	.size	.L.str.43, 41

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"plug-in-lighting"
	.size	.L.str.44, 17

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Apply various lighting effects to an image"
	.size	.L.str.45, 43

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"No help yet"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Tom Bech & Federico Mena Quintero"
	.size	.L.str.47, 34

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Version 0.2.0, March 15 1998"
	.size	.L.str.48, 29

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_Lighting Effects..."
	.size	.L.str.49, 21

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"RGB*"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"<Image>/Filters/Light and Shadow/Light"
	.size	.L.str.51, 39

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.52, 20

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"UTF-8"
	.size	.L.str.53, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
