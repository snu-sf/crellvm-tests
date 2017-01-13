	.text
	.file	"gsimage.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.globl	gs_image_begin_typed
	.align	16, 0x90
	.type	gs_image_begin_typed,@function
gs_image_begin_typed:                   # @gs_image_begin_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$824, %rsp              # imm = 0x338
.Ltmp6:
	.cfi_def_cfa_offset 880
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	%rax, %r12
	leaq	696(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_effective_clip_path
	movl	%eax, %ebp
	movq	%r12, 688(%rsp)
	testl	%ebp, %ebp
	js	.LBB0_30
# BB#1:                                 # %if.end
	movq	1760(%rbx), %r13
	movq	1872(%rbx), %rdi
	movl	$2, %esi
	callq	*1688(%rdi)
	testl	%r14d, %r14d
	je	.LBB0_6
# BB#2:                                 # %if.then.3
	movq	1760(%rbx), %rdi
	movq	(%rdi), %rbp
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, %rbp
	jne	.LBB0_5
# BB#3:                                 # %cond.end
	movq	%rbx, %rdi
	callq	gx_remap_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_30
# BB#4:                                 # %cond.end.if.end.11_crit_edge
	movq	1760(%rbx), %rdi
	movq	(%rdi), %rbp
.LBB0_5:                                # %if.end.11
	movq	1872(%rbx), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	*32(%rbp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_30
.LBB0_6:                                # %if.end.24
	movq	(%r15), %rax
	movl	$gx_begin_image1, %ecx
	cmpq	%rcx, 8(%rax)
	je	.LBB0_8
# BB#7:                                 # %if.end.24.if.end.42_crit_edge
	movq	688(%rsp), %r12
	jmp	.LBB0_12
.LBB0_8:                                # %if.then.27
	cmpl	$0, 584(%r15)
	je	.LBB0_10
# BB#9:                                 # %if.then.29
	movq	1760(%rbx), %rsi
	movq	696(%rsp), %rdx
	movq	8(%rbx), %rcx
	leaq	688(%rsp), %r8
	movq	%r12, %rdi
	callq	gx_image_fill_masked_start
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_30
.LBB0_10:                               # %if.end.37
	movq	688(%rsp), %rax
	cmpq	%r12, %rax
	je	.LBB0_12
# BB#11:                                # %if.then.39
	movq	$1, 40(%rsp)
	movq	$gx_dc_type_data_pure, 32(%rsp)
	movl	$0, 392(%rsp)
	leaq	32(%rsp), %r13
	movq	%rax, %r12
.LBB0_12:                               # %if.end.42
	movq	696(%rsp), %rax
	movq	8(%rbx), %rcx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r13, %r9
	callq	*1440(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_30
# BB#13:                                # %if.end.50
	movq	(%r15), %rax
	movl	$gx_begin_image1, %ecx
	cmpq	%rcx, 8(%rax)
	jne	.LBB0_29
# BB#14:                                # %if.then.i
	movq	696(%rsp), %r12
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 784(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%r15), %xmm0
	movsd	%xmm0, 800(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%r15), %xmm0
	movsd	%xmm0, 808(%rsp)
	movss	8(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	132(%rbx), %xmm0
	jne	.LBB0_21
	jp	.LBB0_21
# BB#15:                                # %land.lhs.true.i
	movss	12(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	136(%rbx), %xmm0
	jne	.LBB0_21
	jp	.LBB0_21
# BB#16:                                # %land.lhs.true.11.i
	movss	16(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	140(%rbx), %xmm0
	jne	.LBB0_21
	jp	.LBB0_21
# BB#17:                                # %land.lhs.true.17.i
	movss	20(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	144(%rbx), %xmm0
	jne	.LBB0_21
	jp	.LBB0_21
# BB#18:                                # %if.then.23.i
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	movaps	%xmm0, 704(%rsp)
	movss	148(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	24(%r15), %xmm0
	movss	%xmm0, 720(%rsp)
	movss	152(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	28(%r15), %xmm0
	movss	%xmm0, 724(%rsp)
	jmp	.LBB0_19
.LBB0_21:                               # %if.else.i
	addq	$8, %r15
	leaq	704(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_matrix_invert
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_22
# BB#23:                                # %if.end.i
	addq	$132, %rbx
	leaq	704(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rdi, %rdx
	callq	gs_matrix_multiply
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_24
.LBB0_19:                               # %if.end.47.i
	leaq	784(%rsp), %rdi
	leaq	704(%rsp), %rsi
	leaq	752(%rsp), %rdx
	callq	gs_bbox_transform
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB0_20
# BB#25:                                # %if.end.52.i
	movsd	752(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 736(%rsp)
	movsd	760(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 740(%rsp)
	movsd	768(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 744(%rsp)
	movsd	776(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 748(%rsp)
	leaq	736(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_cpath_rect_visible
	testl	%eax, %eax
	setne	%cl
	jmp	.LBB0_26
.LBB0_22:
	xorl	%ecx, %ecx
	jmp	.LBB0_26
.LBB0_24:
	xorl	%ecx, %ecx
	jmp	.LBB0_26
.LBB0_20:
	xorl	%ecx, %ecx
	movl	%eax, %ebp
.LBB0_26:                               # %cleanup.i
	testb	%cl, %cl
	jne	.LBB0_29
# BB#27:                                # %is_image_visible.exit
	testl	%ebp, %ebp
	js	.LBB0_30
# BB#28:                                # %if.then.56
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movl	$1, 40(%rax)
.LBB0_29:                               # %cleanup.58
	xorl	%ebp, %ebp
.LBB0_30:                               # %cleanup.58
	movl	%ebp, %eax
	addq	$824, %rsp              # imm = 0x338
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_image_begin_typed, .Lfunc_end0-gs_image_begin_typed
	.cfi_endproc

	.globl	gs_image_enum_alloc
	.align	16, 0x90
	.type	gs_image_enum_alloc,@function
gs_image_enum_alloc:                    # @gs_image_enum_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$st_gs_image_enum, %esi
	movq	%rax, %rdx
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	%rbx, (%rax)
	movq	$0, 16(%rax)
	movq	$0, 8(%rax)
	movl	$0, 36(%rax)
	movl	$0, 24(%rax)
.LBB1_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gs_image_enum_alloc, .Lfunc_end1-gs_image_enum_alloc
	.cfi_endproc

	.globl	gs_image_init
	.align	16, 0x90
	.type	gs_image_init,@function
gs_image_init:                          # @gs_image_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 32
	subq	$608, %rsp              # imm = 0x260
.Ltmp18:
	.cfi_def_cfa_offset 640
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	movl	$600, %edx              # imm = 0x258
	callq	memcpy
	movl	592(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB2_3
# BB#1:                                 # %if.then
	movq	$0, 584(%rsp)
	cmpl	$1, 1848(%rbx)
	ja	.LBB2_6
# BB#2:                                 # %if.then.1
	movl	$0, 596(%rsp)
	jmp	.LBB2_6
.LBB2_3:                                # %if.else
	movl	$-21, %eax
	cmpl	$0, 1848(%rbx)
	jne	.LBB2_10
# BB#4:                                 # %if.end.5
	cmpq	$0, 584(%rsp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.8
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 584(%rsp)
.LBB2_6:                                # %if.end.11
	orl	580(%rsp), %ebp
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	gs_image_begin_typed
	testl	%eax, %eax
	js	.LBB2_10
# BB#7:                                 # %if.end.16
	movq	(%rsp), %rsi
	movq	1872(%rbx), %rcx
	movl	$0, 984(%rcx)
	cmpl	$0, 1852(%rbx)
	je	.LBB2_9
# BB#8:                                 # %select.mid
	xorl	%ecx, %ecx
.LBB2_9:                                # %select.end
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	callq	gs_image_common_init
.LBB2_10:                               # %cleanup
	addq	$608, %rsp              # imm = 0x260
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_image_init, .Lfunc_end2-gs_image_init
	.cfi_endproc

	.globl	gs_image_enum_init
	.align	16, 0x90
	.type	gs_image_enum_init,@function
gs_image_enum_init:                     # @gs_image_enum_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %rax
	movq	1872(%rax), %rcx
	movl	$0, 984(%rcx)
	cmpl	$0, 1852(%rax)
	je	.LBB3_2
# BB#1:                                 # %select.mid
	xorl	%ecx, %ecx
.LBB3_2:                                # %select.end
	jmp	gs_image_common_init    # TAILCALL
.Lfunc_end3:
	.size	gs_image_enum_init, .Lfunc_end3-gs_image_enum_init
	.cfi_endproc

	.globl	gs_image_bytes_per_plane_row
	.align	16, 0x90
	.type	gs_image_bytes_per_plane_row,@function
gs_image_bytes_per_plane_row:           # @gs_image_bytes_per_plane_row
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rcx
	movslq	%esi, %rdx
	movl	48(%rcx,%rdx,4), %eax
	imull	308(%rcx,%rdx,4), %eax
	addl	$7, %eax
	sarl	$3, %eax
	retq
.Lfunc_end4:
	.size	gs_image_bytes_per_plane_row, .Lfunc_end4-gs_image_bytes_per_plane_row
	.cfi_endproc

	.globl	gs_image_common_init
	.align	16, 0x90
	.type	gs_image_common_init,@function
gs_image_common_init:                   # @gs_image_common_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	cmpl	$0, 32(%rdx)
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	movl	36(%rdx), %edx
	testl	%edx, %edx
	je	.LBB5_2
# BB#3:                                 # %if.end
	movl	$0, 36(%rbx)
	movq	%rcx, 8(%rbx)
	movq	%rax, 16(%rbx)
	movslq	44(%rax), %rcx
	testq	%rcx, %rcx
	movl	%ecx, 24(%rbx)
	movl	%edx, 28(%rbx)
	jle	.LBB5_10
# BB#4:                                 # %for.body.lr.ph
	xorl	%eax, %eax
	testb	$1, %cl
	je	.LBB5_6
# BB#5:                                 # %for.body.prol
	movl	$0, 200(%rbx)
	movl	$0, 216(%rbx)
	movq	$0, 208(%rbx)
	movq	$0, 184(%rbx)
	movl	$0, 192(%rbx)
	movl	$0, 2792(%rbx)
	movl	$1, %eax
.LBB5_6:                                # %for.body.lr.ph.split
	cmpl	$1, %ecx
	je	.LBB5_9
# BB#7:                                 # %for.body.lr.ph.split.split
	leaq	(%rax,%rax,4), %rdx
	leaq	256(%rbx,%rdx,8), %rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	leaq	2808(%rsi,%rbx), %rsi
	.align	16, 0x90
.LBB5_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -56(%rdx)
	movl	$0, -40(%rdx)
	movq	$0, -48(%rdx)
	movq	$0, -72(%rdx)
	movl	$0, -64(%rdx)
	movl	$0, -16(%rsi)
	movl	$0, -16(%rdx)
	movl	$0, (%rdx)
	movq	$0, -8(%rdx)
	movq	$0, -32(%rdx)
	movl	$0, -24(%rdx)
	movl	$0, (%rsi)
	addq	$2, %rax
	addq	$80, %rdx
	addq	$32, %rsi
	cmpq	%rcx, %rax
	jl	.LBB5_8
.LBB5_9:                                # %for.cond.if.then.i.i_crit_edge
	movq	16(%rbx), %rax
.LBB5_10:                               # %if.then.i.i
	movl	$0, 40(%rbx)
	movl	$0, 44(%rbx)
	movl	$1, 32(%rbx)
	leaq	48(%rbx), %rsi
	movq	%rax, %rdi
	callq	gx_image_planes_wanted
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 32(%rbx)
	movslq	24(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB5_16
# BB#11:                                # %for.body.preheader.i.i
	leaq	2784(%rbx), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB5_12:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 48(%rbx,%rdx)
	je	.LBB5_14
# BB#13:                                # %if.then.5.i.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	16(%rbx), %rsi
	movl	48(%rsi,%rdx,4), %edi
	imull	308(%rsi,%rdx,4), %edi
	addl	$7, %edi
	sarl	$3, %edi
	movl	%edi, 12(%rcx)
	jmp	.LBB5_15
	.align	16, 0x90
.LBB5_14:                               # %if.else.i.i
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	$0, (%rcx)
.LBB5_15:                               # %for.inc.i.i
                                        #   in Loop: Header=BB5_12 Depth=1
	incq	%rdx
	addq	$16, %rcx
	cmpq	%rdx, %rax
	jne	.LBB5_12
.LBB5_16:                               # %cache_planes.exit.i
	movl	$-1, 36(%rbx)
	movl	$-1, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB5_17:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	cmpl	%eax, %ecx
	cmovel	%edx, %ecx
	movslq	%ecx, %rsi
	cmpb	$0, 48(%rbx,%rsi)
	je	.LBB5_17
# BB#18:                                # %begin_planes.exit
	movl	%ecx, 36(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB5_2:                                # %if.then
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gx_image_end
	movl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	gs_image_common_init, .Lfunc_end5-gs_image_common_init
	.cfi_endproc

	.globl	gs_image_planes_wanted
	.align	16, 0x90
	.type	gs_image_planes_wanted,@function
gs_image_planes_wanted:                 # @gs_image_planes_wanted
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 24(%rdi)
	jle	.LBB6_6
# BB#1:                                 # %for.body.preheader
	leaq	216(%rdi), %rax
	leaq	2796(%rdi), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 48(%rdi,%rdx)
	je	.LBB6_3
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	(%rax), %esi
	addl	-16(%rax), %esi
	cmpl	(%rcx), %esi
	setb	%sil
	jmp	.LBB6_5
	.align	16, 0x90
.LBB6_3:                                #   in Loop: Header=BB6_2 Depth=1
	xorl	%esi, %esi
.LBB6_5:                                # %land.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	%sil, 113(%rdi,%rdx)
	incq	%rdx
	movslq	24(%rdi), %rsi
	addq	$40, %rax
	addq	$16, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB6_2
.LBB6_6:                                # %for.end
	addq	$113, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end6:
	.size	gs_image_planes_wanted, .Lfunc_end6-gs_image_planes_wanted
	.cfi_endproc

	.globl	gs_image_next
	.align	16, 0x90
	.type	gs_image_next,@function
gs_image_next:                          # @gs_image_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 40
	subq	$1304, %rsp             # imm = 0x518
.Ltmp28:
	.cfi_def_cfa_offset 1344
.Ltmp29:
	.cfi_offset %rbx, -40
.Ltmp30:
	.cfi_offset %r12, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r12
	movslq	36(%r12), %r15
	leaq	(%r15,%r15,4), %rcx
	movl	$-15, %eax
	cmpl	$0, 216(%r12,%rcx,8)
	jne	.LBB7_14
# BB#1:                                 # %for.cond.preheader
	movl	24(%r12), %eax
	testl	%eax, %eax
	jle	.LBB7_8
# BB#2:                                 # %for.body.preheader
	leal	-1(%rax), %r8d
	xorl	%ecx, %ecx
	testb	$7, %al
	je	.LBB7_5
# BB#3:                                 # %for.body.prol.preheader
	leaq	8(%rsp), %rdi
	movl	%eax, %ebx
	andl	$7, %ebx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB7_4:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	incq	%rcx
	addq	$16, %rdi
	cmpl	%ecx, %ebx
	jne	.LBB7_4
.LBB7_5:                                # %for.body.preheader.split
	cmpl	$7, %r8d
	jb	.LBB7_8
# BB#6:                                 # %for.body.preheader.split.split
	subl	%ecx, %eax
	shlq	$4, %rcx
	leaq	(%rsp), %rdi
	leaq	120(%rcx,%rdi), %rcx
	.align	16, 0x90
.LBB7_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -112(%rcx)
	movl	$0, -96(%rcx)
	movl	$0, -80(%rcx)
	movl	$0, -64(%rcx)
	movl	$0, -48(%rcx)
	movl	$0, -32(%rcx)
	movl	$0, -16(%rcx)
	movl	$0, (%rcx)
	subq	$-128, %rcx
	addl	$-8, %eax
	jne	.LBB7_7
.LBB7_8:                                # %for.end
	movq	%r15, %rax
	shlq	$4, %rax
	movq	%rsi, (%rsp,%rax)
	movl	%edx, 8(%rsp,%rax)
	movl	$0, 44(%r12)
	leaq	(%rsp), %rsi
	leaq	1040(%rsp), %rdx
	movq	%r12, %rdi
	callq	gs_image_next_planes
	movl	1040(%rsp,%r15,4), %ecx
	movl	%ecx, (%r14)
	testl	%eax, %eax
	js	.LBB7_14
# BB#9:                                 # %if.then.15
	movl	24(%r12), %ecx
	movl	36(%r12), %edx
	.align	16, 0x90
.LBB7_10:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	incl	%esi
	xorl	%edx, %edx
	cmpl	%ecx, %esi
	je	.LBB7_12
# BB#11:                                # %select.mid
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	%esi, %edx
.LBB7_12:                               # %select.end
                                        #   in Loop: Header=BB7_10 Depth=1
	movslq	%edx, %rsi
	cmpb	$0, 48(%r12,%rsi)
	je	.LBB7_10
# BB#13:                                # %next_plane.exit
	movl	%edx, 36(%r12)
.LBB7_14:                               # %cleanup
	addq	$1304, %rsp             # imm = 0x518
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gs_image_next, .Lfunc_end7-gs_image_next
	.cfi_endproc

	.globl	gs_image_next_planes
	.align	16, 0x90
	.type	gs_image_next_planes,@function
gs_image_next_planes:                   # @gs_image_next_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 144
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r9
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movslq	24(%r9), %r8
	movq	%r8, 72(%rsp)           # 8-byte Spill
	testq	%r8, %r8
	jle	.LBB8_6
# BB#1:                                 # %for.body.preheader
	leaq	48(%r9), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	8(%rcx), %rcx
	leaq	216(%r9), %rdx
	movl	%r8d, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	cmpb	$0, (%rax)
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	(%rcx), %ebp
	testl	%ebp, %ebp
	je	.LBB8_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%ebp, (%rdx)
	movq	-8(%rcx), %rbp
	movq	%rbp, -8(%rdx)
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	addq	$4, %rdi
	incq	%rax
	addq	$16, %rcx
	addq	$40, %rdx
	decl	%esi
	jne	.LBB8_2
.LBB8_6:                                # %for.cond.21.preheader
	leaq	48(%r9), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	2784(%r9), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	216(%r9), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	2796(%r9), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB8_7:                                # %for.cond.21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_11 Depth 2
                                        #     Child Loop BB8_47 Depth 2
                                        #     Child Loop BB8_55 Depth 2
	movq	%r14, 40(%rsp)          # 8-byte Spill
	cmpl	$0, 32(%r9)
	movl	$1, %eax
	jne	.LBB8_9
# BB#8:                                 # %select.mid
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
.LBB8_9:                                # %select.end
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	%eax, 84(%rsp)
	testl	%r8d, %r8d
	jle	.LBB8_38
# BB#10:                                #   in Loop: Header=BB8_7 Depth=1
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	%eax, %ecx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_11:                               # %for.body.26
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 48(%r9,%r12)
	je	.LBB8_12
# BB#13:                                # %if.end.33
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	-16(%rbx), %r13d
	movl	(%rbx), %r14d
	movl	12(%r15), %esi
	testl	%r14d, %r14d
	jle	.LBB8_30
# BB#14:                                # %if.end.33
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	%esi, %ebp
	subl	%r13d, %ebp
	jbe	.LBB8_30
# BB#15:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB8_11 Depth=2
	testl	%r13d, %r13d
	jne	.LBB8_18
# BB#16:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB8_11 Depth=2
	cmpl	%esi, %r14d
	jb	.LBB8_18
# BB#17:                                #   in Loop: Header=BB8_11 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB8_30
	.align	16, 0x90
.LBB8_12:                               #   in Loop: Header=BB8_11 Depth=2
	movl	%ecx, %edx
	jmp	.LBB8_37
.LBB8_18:                               # %if.then.56
                                        #   in Loop: Header=BB8_11 Depth=2
	cmpl	%ebp, %r14d
	cmovbl	%r14d, %ebp
	movl	-24(%rbx), %eax
	cmpl	%eax, %esi
	jbe	.LBB8_19
# BB#20:                                # %if.then.67
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movq	(%r9), %rdi
	callq	*32(%rdi)
	movq	-32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_21
# BB#22:                                # %cond.false.78
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	$.L.str, %r8d
	movq	%rax, %rdi
	movl	52(%rsp), %edx          # 4-byte Reload
	movl	80(%rsp), %ecx          # 4-byte Reload
	callq	*152(%rax)
	jmp	.LBB8_23
.LBB8_19:                               # %if.then.56.cleanup.132.thread_crit_edge
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movq	-32(%rbx), %rax
	jmp	.LBB8_29
.LBB8_21:                               # %cond.true.76
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	$.L.str, %edx
	movq	%rax, %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	callq	*136(%rax)
.LBB8_23:                               # %cond.end.81
                                        #   in Loop: Header=BB8_11 Depth=2
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	testq	%rax, %rax
	je	.LBB8_24
# BB#28:                                # %cleanup
                                        #   in Loop: Header=BB8_11 Depth=2
	movq	%rax, -32(%rbx)
	movl	80(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, -24(%rbx)
.LBB8_29:                               # %cleanup.132.thread
                                        #   in Loop: Header=BB8_11 Depth=2
	movslq	%r13d, %rdi
	addq	%rax, %rdi
	movq	-8(%rbx), %rsi
	movslq	%ebp, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, -8(%rbx)
	subl	%ebp, %r14d
	movl	%r14d, (%rbx)
	leal	(%r13,%rbp), %r13d
	movl	%r13d, -16(%rbx)
	movq	56(%rsp), %rax          # 8-byte Reload
	addl	%ebp, (%rax,%r12,4)
	movl	84(%rsp), %eax
	movl	%eax, %ecx
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	movl	80(%rsp), %esi          # 4-byte Reload
.LBB8_30:                               # %if.end.137
                                        #   in Loop: Header=BB8_11 Depth=2
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.LBB8_37
# BB#31:                                # %if.end.141
                                        #   in Loop: Header=BB8_11 Depth=2
	cmpl	%esi, %r13d
	jne	.LBB8_33
# BB#32:                                # %if.then.144
                                        #   in Loop: Header=BB8_11 Depth=2
	cmpl	$2, %ecx
	movl	$1, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 84(%rsp)
	movq	-32(%rbx), %rax
	movq	%rax, (%r15)
	movl	%ecx, %eax
	movl	%ecx, %edx
	jmp	.LBB8_37
.LBB8_33:                               # %if.else
                                        #   in Loop: Header=BB8_11 Depth=2
	cmpl	%esi, %r14d
	jb	.LBB8_36
# BB#34:                                # %if.else
                                        #   in Loop: Header=BB8_11 Depth=2
	testl	%r13d, %r13d
	jne	.LBB8_36
# BB#35:                                # %if.then.165
                                        #   in Loop: Header=BB8_11 Depth=2
	xorl	%edx, %edx
	movl	%r14d, %eax
	divl	%esi
	cmpl	%eax, %ecx
	cmovbl	%ecx, %eax
	movl	%eax, 84(%rsp)
	movq	-8(%rbx), %rcx
	movq	%rcx, (%r15)
	movl	%eax, %edx
	jmp	.LBB8_37
.LBB8_36:                               # %if.else.182
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	$0, 84(%rsp)
	xorl	%eax, %eax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB8_37:                               # %for.inc.190
                                        #   in Loop: Header=BB8_11 Depth=2
	incq	%r12
	addq	$40, %rbx
	addq	$16, %r15
	cmpq	%r8, %r12
	movl	%edx, %ecx
	jl	.LBB8_11
.LBB8_38:                               # %for.end.192
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	40(%rsp), %r14          # 8-byte Reload
	testl	%r14d, %r14d
	jne	.LBB8_60
# BB#39:                                # %for.end.192
                                        #   in Loop: Header=BB8_7 Depth=1
	testl	%eax, %eax
	je	.LBB8_60
# BB#40:                                # %if.end.199
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	%r8, %rbx
	cmpq	$0, 8(%r9)
	je	.LBB8_41
# BB#43:                                # %if.else.212
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	16(%r9), %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	%eax, %edx
	leaq	84(%rsp), %rcx
	movq	%r9, %rbp
	callq	gx_image_plane_data_rows
	movq	%rbp, %r9
	movl	%eax, %r14d
	shrl	$31, %eax
	movl	%eax, 44(%r9)
	movl	84(%rsp), %eax
	movl	40(%r9), %ecx
	movq	%rbx, %r8
	jmp	.LBB8_44
	.align	16, 0x90
.LBB8_41:                               # %if.then.202
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	28(%r9), %edx
	movl	40(%r9), %ecx
	leal	(%rcx,%rax), %esi
	xorl	%r14d, %r14d
	cmpl	%edx, %esi
	movq	%rbx, %r8
	jl	.LBB8_44
# BB#42:                                # %if.else.207
                                        #   in Loop: Header=BB8_7 Depth=1
	subl	%ecx, %edx
	movl	%edx, 84(%rsp)
	movl	$1, %r14d
	movl	%edx, %eax
	.align	16, 0x90
.LBB8_44:                               # %if.end.220
                                        #   in Loop: Header=BB8_7 Depth=1
	addl	%eax, %ecx
	movl	%ecx, 40(%r9)
	testl	%eax, %eax
	je	.LBB8_60
# BB#45:                                # %for.cond.227.preheader
                                        #   in Loop: Header=BB8_7 Depth=1
	testl	%r8d, %r8d
	jle	.LBB8_52
# BB#46:                                #   in Loop: Header=BB8_7 Depth=1
	movl	%r8d, %ecx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB8_47:                               # %for.body.230
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rdi)
	je	.LBB8_51
# BB#48:                                # %if.end.236
                                        #   in Loop: Header=BB8_47 Depth=2
	cmpl	$0, -16(%rdx)
	je	.LBB8_50
# BB#49:                                # %if.then.246
                                        #   in Loop: Header=BB8_47 Depth=2
	movl	$0, -16(%rdx)
	jmp	.LBB8_51
	.align	16, 0x90
.LBB8_50:                               # %if.else.251
                                        #   in Loop: Header=BB8_47 Depth=2
	movl	(%rsi), %ebx
	imull	%eax, %ebx
	movslq	%ebx, %rbx
	addq	%rbx, -8(%rdx)
	subl	%ebx, (%rdx)
	addl	%ebx, (%rbp)
.LBB8_51:                               # %cleanup.269
                                        #   in Loop: Header=BB8_47 Depth=2
	addq	$4, %rbp
	incq	%rdi
	addq	$16, %rsi
	addq	$40, %rdx
	decl	%ecx
	jne	.LBB8_47
.LBB8_52:                               # %for.end.274
                                        #   in Loop: Header=BB8_7 Depth=1
	cmpl	$0, 32(%r9)
	je	.LBB8_59
# BB#53:                                # %if.then.i
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	16(%r9), %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r8, %rbx
	movq	%r9, %rbp
	callq	gx_image_planes_wanted
	movq	%rbp, %r9
	movq	%rbx, %r8
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 32(%r9)
	movslq	24(%r9), %rax
	testq	%rax, %rax
	jle	.LBB8_59
# BB#54:                                # %for.body.preheader.i
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	xorl	%edx, %edx
	.align	16, 0x90
.LBB8_55:                               # %for.body.i
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 48(%r9,%rdx)
	je	.LBB8_57
# BB#56:                                # %if.then.5.i
                                        #   in Loop: Header=BB8_55 Depth=2
	movq	16(%r9), %rsi
	movl	48(%rsi,%rdx,4), %edi
	imull	308(%rsi,%rdx,4), %edi
	addl	$7, %edi
	sarl	$3, %edi
	movl	%edi, 12(%rcx)
	jmp	.LBB8_58
	.align	16, 0x90
.LBB8_57:                               # %if.else.i
                                        #   in Loop: Header=BB8_55 Depth=2
	movq	$0, (%rcx)
.LBB8_58:                               # %for.inc.i
                                        #   in Loop: Header=BB8_55 Depth=2
	incq	%rdx
	addq	$16, %rcx
	cmpq	%rdx, %rax
	jne	.LBB8_55
.LBB8_59:                               # %cleanup.279
                                        #   in Loop: Header=BB8_7 Depth=1
	testl	%r14d, %r14d
	jle	.LBB8_7
	jmp	.LBB8_60
.LBB8_24:                               # %if.then.85
	movl	$-25, %r14d
	testl	%r12d, %r12d
	jle	.LBB8_60
# BB#25:                                # %do.end.i.preheader
	movq	%r8, %r15
	leaq	(%r12,%r12,4), %rax
	leaq	1(%r12), %rbx
	leaq	152(%r9,%rax,8), %rbp
	.align	16, 0x90
.LBB8_26:                               # %do.end.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r9), %rdi
	movq	%r9, %r12
	callq	*32(%rdi)
	movq	160(%rax), %r14
	movq	(%r12), %rdi
	callq	*32(%rdi)
	movq	-8(%rbp), %rsi
	movl	(%rbp), %edx
	movl	$.L.str, %ecx
	movq	%rax, %rdi
	callq	*%r14
	movq	%r12, %r9
	movq	$0, -8(%rbp)
	movl	$0, (%rbp)
	decq	%rbx
	addq	$-40, %rbp
	cmpq	$1, %rbx
	jg	.LBB8_26
# BB#27:
	movq	%r15, %r8
	movl	$-25, %r14d
.LBB8_60:                               # %for.cond.283.preheader
	testl	%r8d, %r8d
	jle	.LBB8_67
# BB#61:                                # %for.body.286.preheader
	leal	-1(%r8), %ecx
	xorl	%eax, %eax
	testb	$3, %r8b
	je	.LBB8_64
# BB#62:                                # %for.body.286.prol.preheader
	leaq	208(%r9), %rdx
	movl	%r8d, %esi
	andl	$3, %esi
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	.align	16, 0x90
.LBB8_63:                               # %for.body.286.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rdi)
	incq	%rax
	addq	$40, %rdx
	addq	$16, %rdi
	cmpl	%eax, %esi
	jne	.LBB8_63
.LBB8_64:                               # %for.body.286.preheader.split
	cmpl	$3, %ecx
	jb	.LBB8_67
# BB#65:                                # %for.body.286.preheader.split.split
	subl	%eax, %r8d
	leaq	(%rax,%rax,4), %rcx
	leaq	328(%r9,%rcx,8), %rcx
	shlq	$4, %rax
	movq	(%rsp), %rdx            # 8-byte Reload
	leaq	48(%rax,%rdx), %rax
	.align	16, 0x90
.LBB8_66:                               # %for.body.286
                                        # =>This Inner Loop Header: Depth=1
	movups	-120(%rcx), %xmm0
	movups	%xmm0, -48(%rax)
	movups	-80(%rcx), %xmm0
	movups	%xmm0, -32(%rax)
	movups	-40(%rcx), %xmm0
	movups	%xmm0, -16(%rax)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	addq	$160, %rcx
	addq	$64, %rax
	addl	$-4, %r8d
	jne	.LBB8_66
.LBB8_67:                               # %do.end.298
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gs_image_next_planes, .Lfunc_end8-gs_image_next_planes
	.cfi_endproc

	.globl	gs_image_cleanup
	.align	16, 0x90
	.type	gs_image_cleanup,@function
gs_image_cleanup:                       # @gs_image_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 48
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movslq	24(%r12), %rax
	testq	%rax, %rax
	jle	.LBB9_3
# BB#1:                                 # %do.end.lr.ph.i
	leaq	(%rax,%rax,4), %rcx
	leaq	1(%rax), %rbp
	leaq	152(%r12,%rcx,8), %rbx
	.align	16, 0x90
.LBB9_2:                                # %do.end.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	callq	*32(%rdi)
	movq	160(%rax), %r15
	movq	(%r12), %rdi
	callq	*32(%rdi)
	movq	-8(%rbx), %rsi
	movl	(%rbx), %edx
	movl	$.L.str.1, %ecx
	movq	%rax, %rdi
	callq	*%r15
	movq	$0, -8(%rbx)
	movl	$0, (%rbx)
	decq	%rbp
	addq	$-40, %rbx
	cmpq	$1, %rbp
	jg	.LBB9_2
.LBB9_3:                                # %free_row_buffers.exit
	movq	16(%r12), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB9_6
# BB#4:                                 # %if.then
	movq	16(%rcx), %rdi
	movl	$5, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
	testl	%eax, %eax
	movq	16(%r12), %rdi
	movl	44(%r12), %eax
	je	.LBB9_7
# BB#5:                                 # %if.then.4
	movq	16(%rdi), %r15
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %esi
	callq	gx_image_end
	movl	%eax, %ebp
	movq	8(%r12), %rsi
	movq	1760(%r14), %rdx
	movq	%r15, %rdi
	callq	gx_image_fill_masked_end
	testl	%ebp, %ebp
	cmovnel	%ebp, %eax
.LBB9_6:                                # %if.end.21
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_7:                                # %if.else
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %esi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_image_end            # TAILCALL
.Lfunc_end9:
	.size	gs_image_cleanup, .Lfunc_end9-gs_image_cleanup
	.cfi_endproc

	.globl	gs_image_cleanup_and_free_enum
	.align	16, 0x90
	.type	gs_image_cleanup_and_free_enum,@function
gs_image_cleanup_and_free_enum:         # @gs_image_cleanup_and_free_enum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %rbx, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	gs_image_cleanup
	movl	%eax, %ebp
	movq	(%rbx), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_image_cleanup_and_free_enum, .Lfunc_end10-gs_image_cleanup_and_free_enum
	.cfi_endproc

	.align	16, 0x90
	.type	gs_image_enum_enum_ptrs,@function
gs_image_enum_enum_ptrs:                # @gs_image_enum_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jne	.LBB11_1
# BB#7:                                 # %sw.bb
	movq	8(%rsi), %rax
	jmp	.LBB11_9
.LBB11_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB11_2
# BB#8:                                 # %sw.bb.25
	movq	16(%rsi), %rax
.LBB11_9:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB11_10:                              # %cleanup
	retq
.LBB11_2:                               # %sw.default
	addl	$-2, %ecx
	movl	24(%rsi), %edi
	movl	%ecx, %edx
	subl	%edi, %edx
	jge	.LBB11_5
# BB#3:                                 # %if.then
	movslq	%ecx, %rax
	leaq	(%rax,%rax,4), %rax
	movq	208(%rsi,%rax,8), %rcx
	movq	%rcx, (%r8)
	movl	216(%rsi,%rax,8), %eax
	jmp	.LBB11_4
.LBB11_5:                               # %if.end
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jge	.LBB11_10
# BB#6:                                 # %if.then.11
	movslq	%edx, %rax
	leaq	(%rax,%rax,4), %rax
	movq	184(%rsi,%rax,8), %rcx
	movq	%rcx, (%r8)
	movl	192(%rsi,%rax,8), %eax
.LBB11_4:                               # %cleanup
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	retq
.Lfunc_end11:
	.size	gs_image_enum_enum_ptrs, .Lfunc_end11-gs_image_enum_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_image_enum_reloc_ptrs,@function
gs_image_enum_reloc_ptrs:               # @gs_image_enum_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 48
.Ltmp66:
	.cfi_offset %rbx, -40
.Ltmp67:
	.cfi_offset %r12, -32
.Ltmp68:
	.cfi_offset %r14, -24
.Ltmp69:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdi, %r14
	movq	(%r15), %rax
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 8(%r14)
	movq	(%r15), %rax
	movq	16(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 16(%r14)
	cmpl	$0, 24(%r14)
	jle	.LBB12_6
# BB#1:                                 # %for.body.lr.ph
	leaq	208(%r14), %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*16(%rax)
	incq	%rbx
	movslq	24(%r14), %rax
	addq	$40, %r12
	cmpq	%rax, %rbx
	jl	.LBB12_2
# BB#3:                                 # %for.cond.5.preheader
	testl	%eax, %eax
	jle	.LBB12_6
# BB#4:                                 # %for.body.8.lr.ph
	leaq	184(%r14), %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB12_5:                               # %for.body.8
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*8(%rax)
	incq	%rbx
	movslq	24(%r14), %rax
	addq	$40, %r12
	cmpq	%rax, %rbx
	jl	.LBB12_5
.LBB12_6:                               # %for.end.14
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	gs_image_enum_reloc_ptrs, .Lfunc_end12-gs_image_enum_reloc_ptrs
	.cfi_endproc

	.type	st_gs_image_enum,@object # @st_gs_image_enum
	.section	.rodata,"a",@progbits
	.align	8
st_gs_image_enum:
	.long	3824                    # 0xef0
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	gs_image_enum_enum_ptrs
	.quad	gs_image_enum_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_image_enum, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_image_next(row)"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_image_cleanup(row)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_image_cleanup_and_free_enum"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_image_enum"
	.size	.L.str.3, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
