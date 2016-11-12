	.text
	.file	"fractal-explorer.bc"
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
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	movabsq	$.L.str.55, %rax
	movabsq	$.L.str.56, %r9
	movabsq	$.L.str.57, %rcx
	movabsq	$.L.str.58, %r8
	movl	$1, %r10d
	movl	$22, %r11d
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
	movl	$22, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.59, %rsi
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
	subq	$160, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movl	$21, run.values
	movl	-56(%rbp), %esi
	movl	%esi, run.values+8
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.60, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.60, %rdi
	movabsq	$.L.str.61, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.60, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movabsq	$sel_x, %rsi
	movabsq	$sel_y, %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	%rax, drawable
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_45
.LBB1_4:                                # %if.end
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB1_9
# BB#5:                                 # %if.then.8
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jge	.LBB1_7
# BB#6:                                 # %cond.true
	movl	-60(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	imull	-48(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -52(%rbp)
	jmp	.LBB1_13
.LBB1_9:                                # %if.else
	cmpl	$256, -64(%rbp)         # imm = 0x100
	jge	.LBB1_11
# BB#10:                                # %cond.true.11
	movl	-64(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.12
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_12:                               # %cond.end.13
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	imull	-52(%rbp), %eax
	cltd
	idivl	-64(%rbp)
	movl	%eax, -48(%rbp)
.LBB1_13:                               # %if.end.17
	cmpl	$2, -48(%rbp)
	jle	.LBB1_15
# BB#14:                                # %cond.true.19
	movl	-48(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.20
	movl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_16:                               # %cond.end.21
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, preview_width
	cmpl	$2, -52(%rbp)
	jle	.LBB1_18
# BB#17:                                # %cond.true.24
	movl	-52(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.25
	movl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_19:                               # %cond.end.26
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, preview_height(%rip)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_20
	jmp	.LBB1_46
.LBB1_46:                               # %cond.end.26
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_47
.LBB1_47:                               # %cond.end.26
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_33
	jmp	.LBB1_34
.LBB1_20:                               # %sw.bb
	movabsq	$.L.str.62, %rdi
	movabsq	$wvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	explorer_dialog
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#21:                                # %if.then.31
	jmp	.LBB1_45
.LBB1_22:                               # %if.end.32
	jmp	.LBB1_35
.LBB1_23:                               # %sw.bb.33
	cmpl	$22, -12(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.35
	movl	$1, -56(%rbp)
	jmp	.LBB1_32
.LBB1_25:                               # %if.else.36
	movq	-24(%rbp), %rax
	movzbl	128(%rax), %ecx
	movl	%ecx, wvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+16
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+24
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+32
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+40
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+48
	movq	-24(%rbp), %rax
	movsd	408(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+56
	movq	-24(%rbp), %rax
	movzbl	448(%rax), %ecx
	movl	%ecx, wvals+64
	movq	-24(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+72
	movq	-24(%rbp), %rax
	movsd	528(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+80
	movq	-24(%rbp), %rax
	movsd	568(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+88
	movq	-24(%rbp), %rax
	movzbl	608(%rax), %ecx
	movl	%ecx, wvals+96
	movq	-24(%rbp), %rax
	movzbl	648(%rax), %ecx
	movl	%ecx, wvals+100
	movq	-24(%rbp), %rax
	movzbl	688(%rax), %ecx
	movl	%ecx, wvals+104
	movq	-24(%rbp), %rax
	movzbl	728(%rax), %ecx
	movl	%ecx, wvals+108
	movq	-24(%rbp), %rax
	movzbl	768(%rax), %ecx
	movl	%ecx, wvals+112
	movq	-24(%rbp), %rax
	movzbl	808(%rax), %ecx
	movl	%ecx, wvals+116
	movq	-24(%rbp), %rax
	cmpl	$8192, 848(%rax)        # imm = 0x2000
	jle	.LBB1_27
# BB#26:                                # %cond.true.101
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_31
.LBB1_27:                               # %cond.false.102
	movq	-24(%rbp), %rax
	cmpl	$2, 848(%rax)
	jge	.LBB1_29
# BB#28:                                # %cond.true.108
	movl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_30
.LBB1_29:                               # %cond.false.109
	movq	-24(%rbp), %rax
	movl	848(%rax), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB1_30:                               # %cond.end.113
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_31:                               # %cond.end.115
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, wvals+124
.LBB1_32:                               # %if.end.117
	callq	make_color_map
	jmp	.LBB1_35
.LBB1_33:                               # %sw.bb.118
	movabsq	$.L.str.62, %rdi
	movabsq	$wvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	make_color_map
	jmp	.LBB1_35
.LBB1_34:                               # %sw.default
	jmp	.LBB1_35
.LBB1_35:                               # %sw.epilog
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, xmin
	movsd	wvals+16, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, xmax
	movsd	wvals+24, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, ymin
	movsd	wvals+32, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, ymax
	cvtsd2ss	wvals+48, %xmm0
	movss	%xmm0, cx
	cvtsd2ss	wvals+56, %xmm0
	movss	%xmm0, cy
	cmpl	$3, -56(%rbp)
	jne	.LBB1_44
# BB#36:                                # %if.then.124
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB1_42
# BB#37:                                # %if.then.128
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	drawable, %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-144(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	drawable, %rdi
	callq	explorer
	cmpl	$1, -44(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.137
	callq	gimp_displays_flush
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB1_39:                               # %if.end.139
	cmpl	$0, -44(%rbp)
	jne	.LBB1_41
# BB#40:                                # %if.then.142
	movabsq	$.L.str.62, %rdi
	movabsq	$wvals, %rax
	movl	$136, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB1_41:                               # %if.end.144
	jmp	.LBB1_43
.LBB1_42:                               # %if.else.145
	movl	$0, -56(%rbp)
.LBB1_43:                               # %if.end.146
	jmp	.LBB1_44
.LBB1_44:                               # %if.end.147
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB1_45:                               # %return
	addq	$160, %rsp
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
	.quad	4611686018427387904     # double 2
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4616189618054758400     # double 4
.LCPI3_4:
	.quad	4620005356000828845     # double 7.3890560989306495
	.text
	.globl	explorer_render_row
	.align	16, 0x90
	.type	explorer_render_row,@function
explorer_render_row:                    # @explorer_render_row
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
	subq	$240, %rsp
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movsd	%xmm1, -104(%rbp)
	movsd	%xmm1, -112(%rbp)
	movsd	%xmm1, -152(%rbp)
	movsd	wvals+48, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -168(%rbp)
	movsd	wvals+56, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -176(%rbp)
	movl	wvals+132, %ecx
	movl	%ecx, -192(%rbp)
	cvttsd2si	wvals+40, %ecx
	movl	%ecx, -188(%rbp)
	callq	log
	movsd	%xmm0, -200(%rbp)
	movl	$0, -32(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB3_49
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	xmin, %xmm0             # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	xdiff, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	ymin, %xmm0             # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	ydiff, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, wvals
	je	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -180(%rbp)
.LBB3_6:                                # %for.cond.8
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB3_36
# BB#7:                                 # %for.body.11
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movl	wvals(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$8, %rdx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	ja	.LBB3_31
# BB#50:                                # %for.body.11
                                        #   in Loop: Header=BB3_6 Depth=2
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_8:                                # %sw.bb
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	addsd	-40(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	mulsd	-56(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB3_32
.LBB3_9:                                # %sw.bb.18
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	addsd	-168(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	mulsd	-56(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB3_32
.LBB3_10:                               # %sw.bb.26
                                        #   in Loop: Header=BB3_6 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-176(%rbp), %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-176(%rbp), %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_12
# BB#11:                                # %if.then.33
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-176(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.38
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-168(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-176(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB3_13:                               # %if.end.43
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_32
.LBB3_14:                               # %sw.bb.44
                                        #   in Loop: Header=BB3_6 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-176(%rbp), %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-176(%rbp), %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-136(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_16
# BB#15:                                # %if.then.52
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-176(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.57
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-168(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-176(%rbp), %xmm0
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB3_17:                               # %if.end.62
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_32
.LBB3_18:                               # %sw.bb.63
                                        #   in Loop: Header=BB3_6 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_20
# BB#19:                                # %if.then.69
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-144(%rbp), %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -152(%rbp)
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.73
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-144(%rbp), %xmm2
	subsd	%xmm1, %xmm2
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -152(%rbp)
	mulsd	-128(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB3_21:                               # %if.end.81
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_32
.LBB3_22:                               # %sw.bb.82
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	addsd	-104(%rbp), %xmm1
	addsd	-168(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	mulsd	-80(%rbp), %xmm1
	addsd	-112(%rbp), %xmm1
	addsd	-176(%rbp), %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	-152(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	-64(%rbp), %xmm1
	movsd	%xmm1, -112(%rbp)
	jmp	.LBB3_32
.LBB3_23:                               # %sw.bb.95
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	addsd	-104(%rbp), %xmm1
	addsd	-168(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	mulsd	-56(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB3_32
.LBB3_24:                               # %sw.bb.105
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB3_32
.LBB3_25:                               # %sw.bb.120
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-72(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-80(%rbp), %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_27
# BB#26:                                # %if.then.125
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	jmp	.LBB3_30
.LBB3_27:                               # %if.else.127
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_29
# BB#28:                                # %if.then.130
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
.LBB3_29:                               # %if.end.132
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_30
.LBB3_30:                               # %if.end.133
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_32
.LBB3_31:                               # %sw.default
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_32
.LBB3_32:                               # %sw.epilog
                                        #   in Loop: Header=BB3_6 Depth=2
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_34
# BB#33:                                # %if.then.139
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_36
.LBB3_34:                               # %if.end.140
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_35
.LBB3_35:                               # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB3_6
.LBB3_36:                               # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -192(%rbp)
	je	.LBB3_41
# BB#37:                                # %if.then.141
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	.LCPI3_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -208(%rbp)
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_39
# BB#38:                                # %if.then.147
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	log
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	log
	divsd	-200(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.152
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBB3_40:                               # %if.end.153
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_42
.LBB3_41:                               # %if.else.154
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBB3_42:                               # %if.end.155
                                        #   in Loop: Header=BB3_1 Depth=1
	cvtsi2sdl	-180(%rbp), %xmm0
	subsd	-160(%rbp), %xmm0
	movl	wvals+124, %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-188(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -184(%rbp)
	cmpl	$3, -28(%rbp)
	jl	.LBB3_44
# BB#43:                                # %if.then.166
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$colormap, %rax
	movslq	-184(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	(%rdx), %sil
	movl	-32(%rbp), %edi
	imull	-28(%rbp), %edi
	addl	$0, %edi
	movslq	%edi, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movslq	-184(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	1(%rdx), %sil
	movl	-32(%rbp), %edi
	imull	-28(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movslq	-184(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movb	2(%rax), %sil
	movl	-32(%rbp), %edi
	imull	-28(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rax
	movq	-16(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
	jmp	.LBB3_45
.LBB3_44:                               # %if.else.184
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-184(%rbp), %rax
	movb	valuemap(,%rax), %cl
	movl	-32(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rax
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
.LBB3_45:                               # %if.end.191
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-228(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_47
# BB#46:                                # %if.then.193
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
.LBB3_47:                               # %if.end.199
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_48
.LBB3_48:                               # %for.inc.200
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_1
.LBB3_49:                               # %for.end.202
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	explorer_render_row, .Lfunc_end3-explorer_render_row
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_8
	.quad	.LBB3_9
	.quad	.LBB3_10
	.quad	.LBB3_14
	.quad	.LBB3_18
	.quad	.LBB3_22
	.quad	.LBB3_23
	.quad	.LBB3_24
	.quad	.LBB3_25

	.text
	.globl	add_objects_list
	.align	16, 0x90
	.type	add_objects_list,@function
add_objects_list:                       # @add_objects_list
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
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp20:
	.cfi_offset %rbx, -24
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_scrolled_window_set_policy
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r9d
	movl	$5, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -128(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_tree_view_new
	movq	%rax, -48(%rbp)
	callq	gtk_tree_view_column_new
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str, %rdx
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_view_column_add_attribute
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$.L.str.1, %rsi
	movabsq	$activate_fractal_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	fractalexplorer_path, %rdi
	callq	fractalexplorer_list_load_all
	movl	$2, %edi
	movl	$64, %r9d
	movl	%r9d, %esi
	movl	$68, %r9d
	movl	%r9d, %edx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	fill_list_store
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_set_model
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.2, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %r10d
	movl	$6, %r11d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -220(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.4, %rsi
	movabsq	$fractalexplorer_rescan_list, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %r10d
	movl	$6, %r11d
	xorl	%ebx, %ebx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -260(%rbp)        # 4-byte Spill
	movl	%r11d, -264(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.4, %rsi
	movabsq	$apply_fractal_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$6, %r10d
	xorl	%r11d, %r11d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -300(%rbp)       # 4-byte Spill
	movl	%r10d, -304(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.4, %rsi
	movabsq	$delete_fractal_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	add_objects_list, .Lfunc_end4-add_objects_list
	.cfi_endproc

	.align	16, 0x90
	.type	activate_fractal_callback,@function
activate_fractal_callback:              # @activate_fractal_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_tree_view_get_model
	leaq	-72(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-80(%rbp), %rdi
	callq	activate_fractal
.LBB5_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	activate_fractal_callback, .Lfunc_end5-activate_fractal_callback
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_list_load_all,@function
fractalexplorer_list_load_all:          # @fractalexplorer_list_load_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, current_obj
	callq	fractalexplorer_list_free_all
	movl	$1, %esi
	movabsq	$fractalexplorer_list_load_one, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_datafiles_read_directories
	cmpq	$0, fractalexplorer_list
	jne	.LBB6_2
# BB#1:                                 # %if.then
	callq	fractalexplorer_new
	movabsq	$.L.str.64, %rdi
	movq	%rax, -16(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	fractalexplorer_list_insert
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB6_2:                                # %if.end
	movq	fractalexplorer_list, %rax
	movq	(%rax), %rax
	movq	%rax, current_obj
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fractalexplorer_list_load_all, .Lfunc_end6-fractalexplorer_list_load_all
	.cfi_endproc

	.align	16, 0x90
	.type	fill_list_store,@function
fill_list_store:                        # @fill_list_store
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	fractalexplorer_list, %rdi
	movq	%rdi, -16(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %r9
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fill_list_store, .Lfunc_end7-fill_list_store
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_rescan_list,@function
fractalexplorer_rescan_list:            # @fractalexplorer_rescan_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	cmpq	$0, fractalexplorer_rescan_list.dlg
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	fractalexplorer_rescan_list.dlg, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB8_9
.LBB8_2:                                # %if.end
	movabsq	$.L.str.78, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.79, %rsi
	movl	$3, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.52, %r9
	movabsq	$.L.str.76, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.80, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -144(%rbp)       # 4-byte Spill
	movq	%r14, -152(%rbp)        # 8-byte Spill
	callq	gimp_dialog_new
	movq	%rax, fractalexplorer_rescan_list.dlg
	movq	fractalexplorer_rescan_list.dlg, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.77, %rsi
	movabsq	$gtk_widget_destroyed, %rdi
	movabsq	$fractalexplorer_rescan_list.dlg, %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
	movq	fractalexplorer_rescan_list.dlg, %r10
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	%r9, %r8
	movl	-172(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.81, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	fractalexplorer_path, %rsi
	movq	%rax, %rdi
	callq	gimp_path_editor_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	fractalexplorer_rescan_list.dlg, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	fractalexplorer_rescan_list.dlg, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB8_8
# BB#3:                                 # %if.then.20
	movq	fractalexplorer_path, %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_path_editor_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_path_editor_get_path
	movq	%rax, fractalexplorer_path
	cmpq	$0, fractalexplorer_path
	je	.LBB8_7
# BB#4:                                 # %if.then.25
	movq	fractalexplorer_path, %rdi
	callq	fractalexplorer_list_load_all
	movq	-48(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_list_store_clear
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	fill_list_store
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-112(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.38
	leaq	-112(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
	leaq	-112(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -80(%rbp)
	movq	fractalexplorer_list, %rax
	movq	(%rax), %rax
	movq	%rax, current_obj
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movss	%xmm0, -268(%rbp)       # 4-byte Spill
	movss	-268(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_tree_view_scroll_to_cell
	movq	-80(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB8_6:                                # %if.end.43
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.44
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.45
	movq	fractalexplorer_rescan_list.dlg, %rdi
	callq	gtk_widget_destroy
.LBB8_9:                                # %return
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fractalexplorer_rescan_list, .Lfunc_end8-fractalexplorer_rescan_list
	.cfi_endproc

	.align	16, 0x90
	.type	apply_fractal_callback,@function
apply_fractal_callback:                 # @apply_fractal_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-40(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-80(%rbp), %rdi
	callq	activate_fractal
.LBB9_2:                                # %if.end
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	apply_fractal_callback, .Lfunc_end9-apply_fractal_callback
	.cfi_endproc

	.align	16, 0x90
	.type	delete_fractal_callback,@function
delete_fractal_callback:                # @delete_fractal_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	cmpq	$0, delete_dialog
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-96(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then.5
	leaq	-128(%rbp), %rsi
	movl	$1, %edx
	leaq	-136(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.73, %rdi
	callq	gettext
	movq	-136(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.74, %rdi
	movq	%rax, -72(%rbp)
	callq	gettext
	movq	-80(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movl	$80, %edx
	movl	%edx, %esi
	movq	-72(%rbp), %r9
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r9, -168(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movabsq	$.L.str.75, %r8
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %r9
	movabsq	$delete_dialog_callback, %r10
	movq	-64(%rbp), %r11
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-184(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	-176(%rbp), %r13        # 8-byte Reload
	movq	%r13, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	gimp_query_boolean_box
	movq	%rax, delete_dialog
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	delete_dialog, %rdi
	callq	gtk_widget_show
.LBB10_4:                               # %if.end.12
	movl	$0, -44(%rbp)
.LBB10_5:                               # %return
	movl	-44(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	delete_fractal_callback, .Lfunc_end10-delete_fractal_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI11_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI11_3:
	.quad	4589866978952703325     # double 0.0722
	.text
	.align	16, 0x90
	.type	explorer,@function
explorer:                               # @explorer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	movl	$1, %edi
	movl	%edi, %esi
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edi
	movl	%edi, -108(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%edi, -112(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edi
	movl	%edi, -116(%rbp)
	movl	-116(%rbp), %edi
	movl	-132(%rbp), %r9d
	subl	-124(%rbp), %r9d
	imull	%r9d, %edi
	movslq	%edi, %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%rax, -144(%rbp)
	movl	-116(%rbp), %r9d
	movl	-132(%rbp), %r10d
	subl	-124(%rbp), %r10d
	imull	%r10d, %r9d
	movslq	%r9d, %rdi
	callq	g_malloc_n
	leaq	-56(%rbp), %rdi
	xorl	%r9d, %r9d
	movq	%rax, -152(%rbp)
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r10d
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cvtsi2sdl	-108(%rbp), %xmm0
	movsd	%xmm0, xbild
	cvtsi2sdl	-112(%rbp), %xmm0
	movsd	%xmm0, ybild
	movsd	xmax, %xmm0             # xmm0 = mem[0],zero
	subsd	xmin, %xmm0
	divsd	xbild, %xmm0
	movsd	%xmm0, xdiff
	movsd	ymax, %xmm0             # xmm0 = mem[0],zero
	subsd	ymin, %xmm0
	divsd	ybild, %xmm0
	movsd	%xmm0, ydiff
	cmpl	$3, -116(%rbp)
	jge	.LBB11_6
# BB#1:                                 # %if.then
	movl	$0, -156(%rbp)
.LBB11_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8192, -156(%rbp)       # imm = 0x2000
	jge	.LBB11_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movslq	-156(%rbp), %rax
	movzbl	colormap(%rax,%rax,2), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI11_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	colormap+1(%rax,%rax,2), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI11_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	colormap+2(%rax,%rax,2), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI11_3(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movslq	-156(%rbp), %rax
	movb	%dl, valuemap(,%rax)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB11_2
.LBB11_5:                               # %for.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end
	movl	-128(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB11_7:                               # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB11_12
# BB#8:                                 # %for.body.37
                                        #   in Loop: Header=BB11_7 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-120(%rbp), %ecx
	movl	-132(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_row
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-120(%rbp), %edx
	movl	-132(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	-116(%rbp), %r8d
	movl	%eax, %ecx
	callq	explorer_render_row
	leaq	-104(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-120(%rbp), %ecx
	movl	-132(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$10, %eax
	movl	-120(%rbp), %ecx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-168(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB11_10
# BB#9:                                 # %if.then.43
                                        #   in Loop: Header=BB11_7 Depth=1
	cvtsi2sdl	-120(%rbp), %xmm0
	movl	-136(%rbp), %eax
	subl	-128(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB11_10:                              # %if.end.49
                                        #   in Loop: Header=BB11_7 Depth=1
	jmp	.LBB11_11
.LBB11_11:                              # %for.inc.50
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB11_7
.LBB11_12:                              # %for.end.52
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %r8d
	subl	-124(%rbp), %r8d
	movl	-136(%rbp), %r9d
	subl	-128(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-144(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	explorer, .Lfunc_end11-explorer
	.cfi_endproc

	.align	16, 0x90
	.type	activate_fractal,@function
activate_fractal:                       # @activate_fractal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$wvals, %rax
	movl	$136, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, current_obj
	movq	current_obj, %rdi
	addq	$24, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	callq	dialog_change_scale
	callq	set_cmap_preview
	callq	dialog_update_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	activate_fractal, .Lfunc_end12-activate_fractal
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_list_free_all,@function
fractalexplorer_list_free_all:          # @fractalexplorer_list_free_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	movabsq	$fractalexplorer_free, %rax
	movq	fractalexplorer_list, %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	$0, fractalexplorer_list
	popq	%rbp
	retq
.Lfunc_end13:
	.size	fractalexplorer_list_free_all, .Lfunc_end13-fractalexplorer_list_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_list_load_one,@function
fractalexplorer_list_load_one:          # @fractalexplorer_list_load_one
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	callq	fractalexplorer_load
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	fractalexplorer_list_insert
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	fractalexplorer_list_load_one, .Lfunc_end14-fractalexplorer_list_load_one
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_new,@function
fractalexplorer_new:                    # @fractalexplorer_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movl	%eax, %edi
	movl	$192, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	popq	%rbp
	retq
.Lfunc_end15:
	.size	fractalexplorer_new, .Lfunc_end15-fractalexplorer_new
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_list_insert,@function
fractalexplorer_list_insert:            # @fractalexplorer_list_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fractalexplorer_list_pos
	movl	%eax, -12(%rbp)
	movq	fractalexplorer_list, %rdi
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	%rcx, %rsi
	callq	g_list_insert
	movq	%rax, fractalexplorer_list
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	fractalexplorer_list_insert, .Lfunc_end16-fractalexplorer_list_insert
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_free,@function
fractalexplorer_free:                   # @fractalexplorer_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.65, %rsi
	movl	$884, %edx              # imm = 0x374
	movabsq	$.L__func__.fractalexplorer_free, %rcx
	movabsq	$.L.str.66, %r8
	callq	g_assertion_message_expr
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	fractalexplorer_free, .Lfunc_end17-fractalexplorer_free
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_load,@function
fractalexplorer_load:                   # @fractalexplorer_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.65, %rsi
	movl	$918, %edx              # imm = 0x396
	movabsq	$.L__func__.fractalexplorer_load, %rcx
	movabsq	$.L.str.67, %r8
	callq	g_assertion_message_expr
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	movabsq	$.L.str.68, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.69, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	$0, -8(%rbp)
	jmp	.LBB18_12
.LBB18_7:                               # %if.end.6
	callq	fractalexplorer_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movl	$256, %esi              # imm = 0x100
	movl	$1, %ecx
	leaq	-304(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.70, %rdi
	leaq	-304(%rbp), %rdx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB18_9
# BB#8:                                 # %if.then.19
	movabsq	$.L.str.71, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	fractalexplorer_free
	movq	$0, -8(%rbp)
	jmp	.LBB18_12
.LBB18_9:                               # %if.end.23
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	load_options
	cmpl	$0, %eax
	je	.LBB18_11
# BB#10:                                # %if.then.26
	movabsq	$.L.str.72, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	line_no, %edx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	fractalexplorer_free
	movq	$0, -8(%rbp)
	jmp	.LBB18_12
.LBB18_11:                              # %if.end.30
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	$0, 184(%rdi)
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB18_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end18:
	.size	fractalexplorer_load, .Lfunc_end18-fractalexplorer_load
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB19_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB19_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_message, .Lfunc_end19-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_list_pos,@function
fractalexplorer_list_pos:               # @fractalexplorer_list_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	fractalexplorer_list, %rdi
	movq	%rdi, -32(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jg	.LBB20_4
# BB#3:                                 # %if.then
	jmp	.LBB20_9
.LBB20_4:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB20_8
.LBB20_8:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB20_1
.LBB20_9:                               # %for.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	fractalexplorer_list_pos, .Lfunc_end20-fractalexplorer_list_pos
	.cfi_endproc

	.align	16, 0x90
	.type	delete_dialog_callback,@function
delete_dialog_callback:                 # @delete_dialog_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB21_6
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	leaq	-96(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-48(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then.8
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -84(%rbp)
.LBB21_3:                               # %if.end
	movq	fractalexplorer_list, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	%rax, fractalexplorer_list
	movq	-96(%rbp), %rdi
	callq	fractalexplorer_free_everything
	cmpl	$0, -84(%rbp)
	je	.LBB21_5
# BB#4:                                 # %if.then.12
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	movabsq	$current_obj, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB21_5:                               # %if.end.13
	jmp	.LBB21_6
.LBB21_6:                               # %if.end.14
	movq	$0, delete_dialog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	delete_dialog_callback, .Lfunc_end21-delete_dialog_callback
	.cfi_endproc

	.align	16, 0x90
	.type	fractalexplorer_free_everything,@function
fractalexplorer_free_everything:        # @fractalexplorer_free_everything
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.65, %rsi
	movl	$895, %edx              # imm = 0x37F
	movabsq	$.L__func__.fractalexplorer_free_everything, %rcx
	movabsq	$.L.str.66, %r8
	callq	g_assertion_message_expr
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB22_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB22_7:                               # %if.end.3
	movq	-8(%rbp), %rdi
	callq	fractalexplorer_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	fractalexplorer_free_everything, .Lfunc_end22-fractalexplorer_free_everything
	.cfi_endproc

	.type	xmin,@object            # @xmin
	.data
	.globl	xmin
	.align	8
xmin:
	.quad	-4611686018427387904    # double -2
	.size	xmin, 8

	.type	xmax,@object            # @xmax
	.globl	xmax
	.align	8
xmax:
	.quad	4607182418800017408     # double 1
	.size	xmax, 8

	.type	ymin,@object            # @ymin
	.globl	ymin
	.align	8
ymin:
	.quad	-4613937818241073152    # double -1.5
	.size	ymin, 8

	.type	ymax,@object            # @ymax
	.globl	ymax
	.align	8
ymax:
	.quad	4609434218613702656     # double 1.5
	.size	ymax, 8

	.type	fractalexplorer_path,@object # @fractalexplorer_path
	.bss
	.globl	fractalexplorer_path
	.align	8
fractalexplorer_path:
	.quad	0
	.size	fractalexplorer_path, 8

	.type	wint,@object            # @wint
	.globl	wint
	.align	8
wint:
	.zero	24
	.size	wint, 24

	.type	wvals,@object           # @wvals
	.data
	.globl	wvals
	.align	8
wvals:
	.long	0                       # 0x0
	.zero	4
	.quad	-4611686018427387904    # double -2
	.quad	4611686018427387904     # double 2
	.quad	-4613937818241073152    # double -1.5
	.quad	4609434218613702656     # double 1.5
	.quad	4632233691727265792     # double 50
	.quad	-4618441417868443648    # double -0.75
	.quad	-4626998257160447590    # double -0.20000000000000001
	.long	0                       # 0x0
	.zero	4
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	wvals, 136

	.type	current_obj,@object     # @current_obj
	.bss
	.globl	current_obj
	.align	8
current_obj:
	.quad	0
	.size	current_obj, 8

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

	.type	xdiff,@object           # @xdiff
	.bss
	.globl	xdiff
	.align	8
xdiff:
	.quad	0                       # double 0
	.size	xdiff, 8

	.type	ydiff,@object           # @ydiff
	.globl	ydiff
	.align	8
ydiff:
	.quad	0                       # double 0
	.size	ydiff, 8

	.type	colormap,@object        # @colormap
	.globl	colormap
	.align	16
colormap:
	.zero	24576
	.size	colormap, 24576

	.type	valuemap,@object        # @valuemap
	.globl	valuemap
	.align	16
valuemap:
	.zero	8192
	.size	valuemap, 8192

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"text"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"row-activated"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-refresh"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Select folder and rescan collection"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clicked"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-apply"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Apply currently selected fractal"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-delete"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Delete currently selected fractal"
	.size	.L.str.8, 34

	.type	xbild,@object           # @xbild
	.bss
	.globl	xbild
	.align	8
xbild:
	.quad	0                       # double 0
	.size	xbild, 8

	.type	ybild,@object           # @ybild
	.globl	ybild
	.align	8
ybild:
	.quad	0                       # double 0
	.size	ybild, 8

	.type	sel_x,@object           # @sel_x
	.globl	sel_x
	.align	4
sel_x:
	.long	0                       # 0x0
	.size	sel_x, 4

	.type	sel_y,@object           # @sel_y
	.globl	sel_y
	.align	4
sel_y:
	.long	0                       # 0x0
	.size	sel_y, 4

	.type	preview_width,@object   # @preview_width
	.globl	preview_width
	.align	4
preview_width:
	.long	0                       # 0x0
	.size	preview_width, 4

	.type	preview_height,@object  # @preview_height
	.globl	preview_height
	.align	4
preview_height:
	.long	0                       # 0x0
	.size	preview_height, 4

	.type	gg,@object              # @gg
	.globl	gg
	.align	8
gg:
	.quad	0
	.size	gg, 8

	.type	line_no,@object         # @line_no
	.globl	line_no
	.align	4
line_no:
	.long	0                       # 0x0
	.size	line_no, 4

	.type	filename,@object        # @filename
	.globl	filename
	.align	8
filename:
	.quad	0
	.size	filename, 8

	.type	drawable,@object        # @drawable
	.globl	drawable
	.align	8
drawable:
	.quad	0
	.size	drawable, 8

	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.24
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.29
	.quad	.L.str.30
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.31
	.quad	.L.str.32
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.34
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.35
	.quad	.L.str.36
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.37
	.quad	.L.str.38
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.39
	.quad	.L.str.40
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.41
	.quad	.L.str.42
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.43
	.quad	.L.str.44
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.45
	.quad	.L.str.46
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.47
	.quad	.L.str.48
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.49
	.quad	.L.str.48
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.50
	.quad	.L.str.51
	.size	query.args, 528

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"run-mode"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.10, 61

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"image"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Input image"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"drawable"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Input drawable"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"fractaltype"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"0: Mandelbrot; 1: Julia; 2: Barnsley 1; 3: Barnsley 2; 4: Barnsley 3; 5: Spider; 6: ManOWar; 7: Lambda; 8: Sierpinski"
	.size	.L.str.16, 118

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"xmin"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"xmin fractal image delimiter"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"xmax"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"xmax fractal image delimiter"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ymin"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ymin fractal image delimiter"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"ymax"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"ymax fractal image delimiter"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"iter"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Iteration value"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"cx"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"cx value ( only Julia)"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"cy"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"cy value ( only Julia)"
	.size	.L.str.30, 23

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"colormode"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"0: Apply colormap as specified by the parameters below; 1: Apply active gradient to final image"
	.size	.L.str.32, 96

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"redstretch"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Red stretching factor"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"greenstretch"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Green stretching factor"
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"bluestretch"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Blue stretching factor"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"redmode"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Red application mode (0:SIN;1:COS;2:NONE)"
	.size	.L.str.40, 42

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"greenmode"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Green application mode (0:SIN;1:COS;2:NONE)"
	.size	.L.str.42, 44

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"bluemode"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Blue application mode (0:SIN;1:COS;2:NONE)"
	.size	.L.str.44, 43

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"redinvert"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Red inversion mode (1: enabled; 0: disabled)"
	.size	.L.str.46, 45

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"greeninvert"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Green inversion mode (1: enabled; 0: disabled)"
	.size	.L.str.48, 47

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"blueinvert"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"ncolors"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Number of Colors for mapping (2<=ncolors<=8192)"
	.size	.L.str.51, 48

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"plug-in-fractalexplorer"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Render fractal art"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"No help yet."
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Daniel Cotting (cotting@multimania.com, www.multimania.com/cotting)"
	.size	.L.str.55, 68

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"December, 1998"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"_Fractal Explorer..."
	.size	.L.str.57, 21

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"<Image>/Filters/Render"
	.size	.L.str.59, 23

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.60, 20

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"UTF-8"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"plug_in_fractalexplorer"
	.size	.L.str.62, 24

	.type	cx,@object              # @cx
	.data
	.align	4
cx:
	.long	3208642560              # float -0.75
	.size	cx, 4

	.type	cy,@object              # @cy
	.align	4
cy:
	.long	3192704205              # float -0.200000003
	.size	cy, 4

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"Rendering fractal"
	.size	.L.str.63, 18

	.type	fractalexplorer_list,@object # @fractalexplorer_list
	.local	fractalexplorer_list
	.comm	fractalexplorer_list,8,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"My first fractal"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"fractal-explorer.c"
	.size	.L.str.65, 19

	.type	.L__func__.fractalexplorer_free,@object # @__func__.fractalexplorer_free
.L__func__.fractalexplorer_free:
	.asciz	"fractalexplorer_free"
	.size	.L__func__.fractalexplorer_free, 21

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"fractalexplorer != NULL"
	.size	.L.str.66, 24

	.type	.L__func__.fractalexplorer_load,@object # @__func__.fractalexplorer_load
.L__func__.fractalexplorer_load:
	.asciz	"fractalexplorer_load"
	.size	.L__func__.fractalexplorer_load, 21

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"filename != NULL"
	.size	.L.str.67, 17

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"rt"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.69, 36

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Fractal Explorer Plug-In Version 2 - (c) 1997 <cotting@mygale.org>\n"
	.size	.L.str.70, 68

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"File '%s' is not a FractalExplorer file"
	.size	.L.str.71, 40

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"File '%s' is corrupt.\nLine %d Option section incorrect"
	.size	.L.str.72, 55

	.type	delete_dialog,@object   # @delete_dialog
	.local	delete_dialog
	.comm	delete_dialog,8,8
	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Are you sure you want to delete \"%s\" from the list and from disk?"
	.size	.L.str.73, 66

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Delete Fractal"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gtk-dialog-question"
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gtk-cancel"
	.size	.L.str.76, 11

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"destroy"
	.size	.L.str.77, 8

	.type	.L__func__.fractalexplorer_free_everything,@object # @__func__.fractalexplorer_free_everything
.L__func__.fractalexplorer_free_everything:
	.asciz	"fractalexplorer_free_everything"
	.size	.L__func__.fractalexplorer_free_everything, 32

	.type	fractalexplorer_rescan_list.dlg,@object # @fractalexplorer_rescan_list.dlg
	.local	fractalexplorer_rescan_list.dlg
	.comm	fractalexplorer_rescan_list.dlg,8,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Rescan for Fractals"
	.size	.L.str.78, 20

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-fractal-explorer"
	.size	.L.str.79, 22

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gtk-ok"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Add FractalExplorer Path"
	.size	.L.str.81, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
