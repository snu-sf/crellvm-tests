	.text
	.file	"gfig-poly.bc"
	.globl	tool_options_poly
	.align	16, 0x90
	.type	tool_options_poly,@function
tool_options_poly:                      # @tool_options_poly
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
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$poly_num_sides, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$3, %ecx
	movl	$200, %r8d
	movq	%rax, %rdi
	callq	num_sides_widget
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tool_options_poly, .Lfunc_end0-tool_options_poly
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	d_paint_poly
	.align	16, 0x90
	.type	d_paint_poly,@function
d_paint_poly:                           # @d_paint_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-104(%rbp), %rsi
	leaq	-96(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movl	$0, -24(%rbp)
	movq	%r8, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	memset
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$1, -108(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$166, %edx
	movabsq	$.L__func__.d_paint_poly, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_8
# BB#6:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	je	.LBB1_8
# BB#7:                                 # %lor.lhs.false.2
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_9
.LBB1_8:                                # %if.then.4
	jmp	.LBB1_41
.LBB1_9:                                # %if.end.5
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	leal	1(%rcx,%rcx), %eax
	movslq	%eax, %rdi
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movl	$4, %edx
	movl	%edx, %edi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	8(%rax), %r8d
	subl	%r8d, %edx
	movw	%dx, %r9w
	movw	%r9w, -42(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %r8d
	subl	%r8d, %edx
	movw	%dx, %r9w
	movw	%r9w, -44(%rbp)
	movswl	-42(%rbp), %edx
	imull	%edx, %edx
	movswl	-44(%rbp), %r8d
	imull	%r8d, %r8d
	addl	%r8d, %edx
	cvtsi2sdl	%edx, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movswl	-44(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movswl	-42(%rbp), %edx
	movw	%dx, %r9w
	cvtsi2sdl	%edx, %xmm1
	movw	%r9w, -178(%rbp)        # 2-byte Spill
	callq	atan2
	movsd	%xmm0, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB1_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB1_33
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB1_10 Depth=1
	cvtsi2sdl	-84(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -140(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB1_16
# BB#12:                                # %if.then.56
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-144(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB1_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-140(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.LBB1_15
# BB#14:                                # %if.then.65
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_32
.LBB1_15:                               # %if.end.66
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.67
                                        #   in Loop: Header=BB1_10 Depth=1
	cvtsi2sdl	-144(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cvtsi2sdl	-140(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	movq	-144(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.76
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -108(%rbp)
	cvtsi2sdl	-144(%rbp), %xmm0
	movq	-120(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-120(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-140(%rbp), %xmm0
	movq	-120(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-120(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB1_31
.LBB1_18:                               # %if.else.85
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-144(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB1_21
.LBB1_20:                               # %cond.false
                                        #   in Loop: Header=BB1_10 Depth=1
	cvtsi2sdl	-144(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB1_21:                               # %cond.end
                                        #   in Loop: Header=BB1_10 Depth=1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-120(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-140(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_23
# BB#22:                                # %cond.true.100
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-120(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB1_24
.LBB1_23:                               # %cond.false.102
                                        #   in Loop: Header=BB1_10 Depth=1
	cvtsi2sdl	-140(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB1_24:                               # %cond.end.105
                                        #   in Loop: Header=BB1_10 Depth=1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-120(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-144(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_26
# BB#25:                                # %cond.true.113
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-120(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB1_27
.LBB1_26:                               # %cond.false.115
                                        #   in Loop: Header=BB1_10 Depth=1
	cvtsi2sdl	-144(%rbp), %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB1_27:                               # %cond.end.118
                                        #   in Loop: Header=BB1_10 Depth=1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-120(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-140(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_29
# BB#28:                                # %cond.true.126
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-120(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB1_30
.LBB1_29:                               # %cond.false.128
                                        #   in Loop: Header=BB1_10 Depth=1
	cvtsi2sdl	-140(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB1_30:                               # %cond.end.131
                                        #   in Loop: Header=BB1_10 Depth=1
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB1_31:                               # %if.end.134
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_32
.LBB1_32:                               # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB1_10
.LBB1_33:                               # %for.end
	cvtsi2sdl	-96(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cvtsi2sdl	-92(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cmpl	$0, selvals+120
	je	.LBB1_35
# BB#34:                                # %if.then.147
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-236(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_original_xy
	movl	$2, %esi
	movq	-120(%rbp), %rdi
	callq	scale_to_original_xy
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.150
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-240(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_xy
	movl	$2, %esi
	movq	-120(%rbp), %rdi
	callq	scale_to_xy
.LBB1_36:                               # %if.end.153
	callq	gfig_context_get_current_style
	cmpl	$0, 56(%rax)
	je	.LBB1_38
# BB#37:                                # %if.then.157
	callq	gimp_context_push
	movl	selopt+4, %edi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_context_set_antialias
	movl	selopt+8, %edi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_context_set_feather
	movsd	selopt+16, %xmm0        # xmm0 = mem[0],zero
	movsd	selopt+16, %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_context_set_feather_radius
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	movl	selopt, %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_image_select_polygon
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_context_pop
	movq	-120(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-120(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	-120(%rbp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	-120(%rbp), %rcx
	movsd	24(%rcx), %xmm3         # xmm3 = mem[0],zero
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	paint_layer_fill
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	callq	gimp_selection_none
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB1_38:                               # %if.end.170
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB1_40
# BB#39:                                # %if.then.173
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gfig_paint
.LBB1_40:                               # %if.end.174
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB1_41:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end1:
	.size	d_paint_poly, .Lfunc_end1-d_paint_poly
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	d_poly2lines
	.align	16, 0x90
	.type	d_poly2lines,@function
d_poly2lines:                           # @d_poly2lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%r8, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	memset
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$1, -92(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$291, %edx              # imm = 0x123
	movabsq	$.L__func__.d_poly2lines, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_7
# BB#6:                                 # %if.then.1
	jmp	.LBB2_19
.LBB2_7:                                # %if.end.2
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -26(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -28(%rbp)
	movswl	-26(%rbp), %ecx
	imull	%ecx, %ecx
	movswl	-28(%rbp), %edx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movswl	-28(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movswl	-26(%rbp), %ecx
	movw	%cx, %si
	cvtsi2sdl	%ecx, %xmm1
	movw	%si, -142(%rbp)         # 2-byte Spill
	callq	atan2
	movsd	%xmm0, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB2_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB2_18
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB2_8 Depth=1
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB2_14
# BB#10:                                # %if.then.46
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-120(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB2_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-116(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB2_13
# BB#12:                                # %if.then.55
                                        #   in Loop: Header=BB2_8 Depth=1
	jmp	.LBB2_17
.LBB2_13:                               # %if.end.56
                                        #   in Loop: Header=BB2_8 Depth=1
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.57
                                        #   in Loop: Header=BB2_8 Depth=1
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-120(%rbp), %esi
	movl	-116(%rbp), %edx
	callq	d_pnt_add_line
	movq	-120(%rbp), %rdi
	movq	%rdi, -88(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB2_16
# BB#15:                                # %if.then.61
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -92(%rbp)
.LBB2_16:                               # %if.end.62
                                        #   in Loop: Header=BB2_8 Depth=1
	jmp	.LBB2_17
.LBB2_17:                               # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB2_8
.LBB2_18:                               # %for.end
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-80(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	d_pnt_add_line
	movq	-16(%rbp), %rdi
	callq	d_delete_dobjpoints
	movabsq	$dobj_class, %rdi
	addq	$48, %rdi
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 8(%rax)
.LBB2_19:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_poly2lines, .Lfunc_end2-d_poly2lines
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	d_star2lines
	.align	16, 0x90
	.type	d_star2lines,@function
d_star2lines:                           # @d_star2lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-104(%rbp), %rsi
	leaq	-96(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%r8, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	memset
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$1, -108(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$376, %edx              # imm = 0x178
	movabsq	$.L__func__.d_star2lines, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.1
	jmp	.LBB3_26
.LBB3_7:                                # %if.end.2
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_9
# BB#8:                                 # %if.then.5
	jmp	.LBB3_26
.LBB3_9:                                # %if.end.6
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.9
	jmp	.LBB3_26
.LBB3_11:                               # %if.end.10
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -34(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -36(%rbp)
	movswl	-34(%rbp), %ecx
	imull	%ecx, %ecx
	movswl	-36(%rbp), %edx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movswl	-36(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movswl	-34(%rbp), %ecx
	movw	%cx, %si
	cvtsi2sdl	%ecx, %xmm1
	movw	%si, -158(%rbp)         # 2-byte Spill
	callq	atan2
	movsd	%xmm0, -80(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	8(%rax), %ecx
	movw	%cx, %si
	movw	%si, -34(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	12(%rax), %ecx
	movw	%cx, %si
	movw	%si, -36(%rbp)
	movswl	-34(%rbp), %ecx
	movswl	-34(%rbp), %edx
	imull	%edx, %ecx
	movswl	-36(%rbp), %edx
	movswl	-36(%rbp), %edi
	imull	%edi, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB3_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %edx
	shll	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB3_25
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$2, %eax
	cvtsi2sdl	-84(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-84(%rbp), %ecx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-164(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB3_15
# BB#14:                                # %if.then.58
                                        #   in Loop: Header=BB3_12 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.63
                                        #   in Loop: Header=BB3_12 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
.LBB3_16:                               # %if.end.68
                                        #   in Loop: Header=BB3_12 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -132(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB3_21
# BB#17:                                # %if.then.84
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	-136(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB3_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	-132(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.LBB3_20
# BB#19:                                # %if.then.93
                                        #   in Loop: Header=BB3_12 Depth=1
	jmp	.LBB3_24
.LBB3_20:                               # %if.end.94
                                        #   in Loop: Header=BB3_12 Depth=1
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.95
                                        #   in Loop: Header=BB3_12 Depth=1
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-136(%rbp), %esi
	movl	-132(%rbp), %edx
	callq	d_pnt_add_line
	movq	-136(%rbp), %rdi
	movq	%rdi, -104(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB3_23
# BB#22:                                # %if.then.99
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -108(%rbp)
.LBB3_23:                               # %if.end.100
                                        #   in Loop: Header=BB3_12 Depth=1
	jmp	.LBB3_24
.LBB3_24:                               # %for.inc
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_12
.LBB3_25:                               # %for.end
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-96(%rbp), %esi
	movl	-92(%rbp), %edx
	callq	d_pnt_add_line
	movq	-16(%rbp), %rdi
	callq	d_delete_dobjpoints
	movabsq	$dobj_class, %rdi
	addq	$48, %rdi
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 8(%rax)
.LBB3_26:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	d_star2lines, .Lfunc_end3-d_star2lines
	.cfi_endproc

	.globl	d_poly_object_class_init
	.align	16, 0x90
	.type	d_poly_object_class_init,@function
d_poly_object_class_init:               # @d_poly_object_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movabsq	$d_update_poly, %rax
	movabsq	$d_copy_poly, %rcx
	movabsq	$d_paint_poly, %rdx
	movabsq	$d_draw_poly, %rsi
	movabsq	$.L.str.3, %rdi
	movabsq	$dobj_class, %r8
	addq	$288, %r8               # imm = 0x120
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$6, (%r8)
	movq	-8(%rbp), %r8
	movq	%rdi, 8(%r8)
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	d_poly_object_class_init, .Lfunc_end4-d_poly_object_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	d_draw_poly,@function
d_draw_poly:                            # @d_draw_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %r8
	leaq	-88(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%r8, -152(%rbp)         # 8-byte Spill
	callq	memset
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$0, -100(%rbp)
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_18
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.2
	jmp	.LBB5_18
.LBB5_4:                                # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	obj_creating, %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.6
	movl	$1, %esi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_circle
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
.LBB5_7:                                # %if.end.12
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -34(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -36(%rbp)
	movswl	-34(%rbp), %ecx
	imull	%ecx, %ecx
	movswl	-36(%rbp), %edx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movswl	-36(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movswl	-34(%rbp), %ecx
	movw	%cx, %si
	cvtsi2sdl	%ecx, %xmm1
	movw	%si, -154(%rbp)         # 2-byte Spill
	callq	atan2
	movsd	%xmm0, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB5_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB5_17
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB5_8 Depth=1
	cvtsi2sdl	-76(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -124(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB5_14
# BB#10:                                # %if.then.57
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB5_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-124(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB5_13
# BB#12:                                # %if.then.66
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_16
.LBB5_13:                               # %if.end.67
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-128(%rbp), %edi
	movl	-124(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	gfig_draw_line
	jmp	.LBB5_15
.LBB5_14:                               # %if.else.72
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	$1, -100(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB5_15:                               # %if.end.73
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB5_16:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_8
.LBB5_17:                               # %for.end
	movl	-96(%rbp), %edi
	movl	-92(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	gfig_draw_line
.LBB5_18:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	d_draw_poly, .Lfunc_end5-d_draw_poly
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_poly,@function
d_copy_poly:                            # @d_copy_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$6, (%rax)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$476, %edx              # imm = 0x1DC
	movabsq	$.L__func__.d_copy_poly, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movl	$6, %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %edx
	callq	d_new_object
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	callq	d_copy_dobjpoints
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_copy_poly, .Lfunc_end6-d_copy_poly
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_poly,@function
d_update_poly:                          # @d_update_poly
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB7_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	obj_creating, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_pnt_add_line
.LBB7_5:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	d_update_poly, .Lfunc_end7-d_update_poly
	.cfi_endproc

	.globl	d_poly_start
	.align	16, 0x90
	.type	d_poly_start,@function
d_poly_start:                           # @d_poly_start
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
	subq	$16, %rsp
	movl	$6, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edx
	movl	%eax, %edi
	callq	d_new_object
	movq	%rax, obj_creating
	movl	poly_num_sides, %edx
	movq	obj_creating, %rax
	movl	%edx, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	d_poly_start, .Lfunc_end8-d_poly_start
	.cfi_endproc

	.globl	d_poly_end
	.align	16, 0x90
	.type	d_poly_end,@function
d_poly_end:                             # @d_poly_end
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	gfig_context, %rdi
	movq	16(%rdi), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
	movq	$0, obj_creating
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	d_poly_end, .Lfunc_end9-d_poly_end
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Regular Polygon Number of Sides"
	.size	.L.str, 32

	.type	poly_num_sides,@object  # @poly_num_sides
	.data
	.align	4
poly_num_sides:
	.long	3                       # 0x3
	.size	poly_num_sides, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gfig-poly.c"
	.size	.L.str.1, 12

	.type	.L__func__.d_paint_poly,@object # @__func__.d_paint_poly
.L__func__.d_paint_poly:
	.asciz	"d_paint_poly"
	.size	.L__func__.d_paint_poly, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"obj != NULL"
	.size	.L.str.2, 12

	.type	.L__func__.d_poly2lines,@object # @__func__.d_poly2lines
.L__func__.d_poly2lines:
	.asciz	"d_poly2lines"
	.size	.L__func__.d_poly2lines, 13

	.type	.L__func__.d_star2lines,@object # @__func__.d_star2lines
.L__func__.d_star2lines:
	.asciz	"d_star2lines"
	.size	.L__func__.d_star2lines, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"POLY"
	.size	.L.str.3, 5

	.type	.L__func__.d_copy_poly,@object # @__func__.d_copy_poly
.L__func__.d_copy_poly:
	.asciz	"d_copy_poly"
	.size	.L__func__.d_copy_poly, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"obj->type == POLY"
	.size	.L.str.4, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
