	.text
	.file	"gshtscr.bc"
	.globl	gs_setaccuratescreens
	.align	16, 0x90
	.type	gs_setaccuratescreens,@function
gs_setaccuratescreens:                  # @gs_setaccuratescreens
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	callq	gs_lib_ctx_get_interp_instance
	movl	%ebx, 144(%rax)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_setaccuratescreens, .Lfunc_end0-gs_setaccuratescreens
	.cfi_endproc

	.globl	gs_currentaccuratescreens
	.align	16, 0x90
	.type	gs_currentaccuratescreens,@function
gs_currentaccuratescreens:              # @gs_currentaccuratescreens
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	callq	gs_lib_ctx_get_interp_instance
	movl	144(%rax), %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	gs_currentaccuratescreens, .Lfunc_end1-gs_currentaccuratescreens
	.cfi_endproc

	.globl	gs_setminscreenlevels
	.align	16, 0x90
	.type	gs_setminscreenlevels,@function
gs_setminscreenlevels:                  # @gs_setminscreenlevels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	callq	gs_lib_ctx_get_interp_instance
	movl	%ebx, 148(%rax)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gs_setminscreenlevels, .Lfunc_end2-gs_setminscreenlevels
	.cfi_endproc

	.globl	gs_currentminscreenlevels
	.align	16, 0x90
	.type	gs_currentminscreenlevels,@function
gs_currentminscreenlevels:              # @gs_currentminscreenlevels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 16
	callq	gs_lib_ctx_get_interp_instance
	movl	148(%rax), %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	gs_currentminscreenlevels, .Lfunc_end3-gs_currentminscreenlevels
	.cfi_endproc

	.globl	gs_gshtscr_init
	.align	16, 0x90
	.type	gs_gshtscr_init,@function
gs_gshtscr_init:                        # @gs_gshtscr_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_lib_ctx_get_interp_instance
	movl	$0, 144(%rax)
	movq	%rbx, %rdi
	callq	gs_lib_ctx_get_interp_instance
	movl	$1, 148(%rax)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gs_gshtscr_init, .Lfunc_end4-gs_gshtscr_init
	.cfi_endproc

	.globl	gx_compute_cell_values
	.align	16, 0x90
	.type	gx_compute_cell_values,@function
gx_compute_cell_values:                 # @gx_compute_cell_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 80
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movswl	(%r12), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%eax, %r13d
	negl	%r13d
	cmovll	%eax, %r13d
	movswl	2(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	movswl	6(%r12), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%eax, %edi
	negl	%edi
	cmovll	%eax, %edi
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movswl	8(%r12), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	%eax, %r15d
	negl	%r15d
	cmovll	%eax, %r15d
	movl	%r13d, %eax
	movl	%edi, %ecx
	imulq	%rax, %rcx
	movl	%ebp, %eax
	movl	%r15d, %ebx
	imulq	%rax, %rbx
	addq	%rcx, %rbx
	movq	%rbx, 16(%r12)
	movl	%ebp, %esi
	callq	igcd
	movl	%eax, (%rsp)            # 4-byte Spill
	movw	%ax, 24(%r12)
	movswl	%ax, %r14d
	movl	%r13d, %edi
	movl	%r15d, %esi
	movq	%r12, %r15
	callq	igcd
	movl	16(%rsp), %r12d         # 4-byte Reload
	movswl	%ax, %esi
	movslq	%r14d, %rcx
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	movq	%rax, %rcx
	movslq	%esi, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rsi
	movl	20(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	movw	%si, 26(%r15)
	movl	%ecx, 28(%r15)
	movl	%eax, 32(%r15)
	je	.LBB5_8
# BB#1:                                 # %entry
	testw	%r12w, %r12w
	je	.LBB5_8
# BB#2:                                 # %while.cond.preheader
	xorl	%edi, %edi
	testl	%r14d, %r14d
	movl	$0, %eax
	je	.LBB5_7
# BB#3:                                 # %while.body.lr.ph.lr.ph
	testw	%dx, %dx
	movl	$1, %eax
	movl	$-1, %r8d
	movl	$-1, %esi
	cmovgl	%eax, %esi
	testw	%r12w, %r12w
	cmovgl	%eax, %r8d
	movl	(%rsp), %eax            # 4-byte Reload
	movswl	%ax, %ebx
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB5_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r14d, %edx
	jg	.LBB5_5
# BB#6:                                 # %if.else.59
                                        #   in Loop: Header=BB5_4 Depth=1
	addl	%esi, %eax
	addl	%ebp, %edx
	cmpl	%edx, %ebx
	jne	.LBB5_4
	jmp	.LBB5_7
.LBB5_5:                                # %if.then.54
                                        #   in Loop: Header=BB5_4 Depth=1
	addl	%r8d, %edi
	subl	4(%rsp), %edx           # 4-byte Folded Reload
	cmpl	%r14d, %edx
	jne	.LBB5_4
.LBB5_7:                                # %while.end
	imull	12(%rsp), %eax          # 4-byte Folded Reload
	imull	8(%rsp), %edi           # 4-byte Folded Reload
	addl	%eax, %edi
	negl	%edi
	movl	%ecx, %esi
	callq	imod
	movl	%eax, 36(%r15)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.75
	movl	$0, 36(%r15)
.LBB5_9:                                # %do.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_compute_cell_values, .Lfunc_end5-gx_compute_cell_values
	.cfi_endproc

	.globl	gs_screen_enum_alloc
	.align	16, 0x90
	.type	gs_screen_enum_alloc,@function
gs_screen_enum_alloc:                   # @gs_screen_enum_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	72(%rdi), %rcx
	movl	$st_gs_screen_enum, %esi
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end6:
	.size	gs_screen_enum_alloc, .Lfunc_end6-gs_screen_enum_alloc
	.cfi_endproc

	.globl	gs_screen_init
	.align	16, 0x90
	.type	gs_screen_init,@function
gs_screen_init:                         # @gs_screen_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
.Ltmp26:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movl	144(%rax), %ecx
	movq	8(%rbx), %r8
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_screen_init_memory   # TAILCALL
.Lfunc_end7:
	.size	gs_screen_init, .Lfunc_end7-gs_screen_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gs_screen_init_memory
	.align	16, 0x90
	.type	gs_screen_init_memory,@function
gs_screen_init_memory:                  # @gs_screen_init_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 48
.Ltmp32:
	.cfi_offset %rbx, -48
.Ltmp33:
	.cfi_offset %r12, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %rbx
	subq	$-128, %rdi
	callq	gs_screen_order_init_memory
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB8_2
# BB#1:                                 # %if.end
	movq	%r12, 352(%rbx)
	movq	%r15, 16(%rbx)
	movl	$1, (%rbx)
	movq	16(%rbp), %rax
	movq	%rax, 48(%rbx)
	movups	(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movq	$0, 336(%rbx)
	movl	184(%rbx), %eax
	movzwl	168(%rbx), %ecx
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, 344(%rbx)
	movzwl	174(%rbx), %eax
	movl	%eax, 348(%rbx)
	movswq	128(%rbx), %rax
	movswq	130(%rbx), %rcx
	movswl	132(%rbx), %edx
	movswq	134(%rbx), %rdi
	movswq	136(%rbx), %rbp
	movswl	138(%rbx), %r8d
	movq	%rdi, %rsi
	imulq	%rax, %rsi
	imull	%edx, %edi
	imull	%ebp, %edx
	imulq	%rcx, %rbp
	addq	%rsi, %rbp
	cvtsi2sdq	%rbp, %xmm0
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 288(%rbx)
	negl	%ecx
	imull	%r8d, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 292(%rbx)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 296(%rbx)
	imull	%r8d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 300(%rbx)
	movl	$-1082130432, 304(%rbx) # imm = 0xFFFFFFFFBF800000
	movl	$-1082130432, 308(%rbx) # imm = 0xFFFFFFFFBF800000
	leaq	288(%rbx), %rdi
	addq	$312, %rbx              # imm = 0x138
	movq	%rbx, %rsi
	callq	gs_matrix_invert
.LBB8_2:                                # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gs_screen_init_memory, .Lfunc_end8-gs_screen_init_memory
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI9_2:
	.quad	4634766966517661696     # double 72
.LCPI9_3:
	.quad	4616189618054758400     # double 4
.LCPI9_4:
	.quad	4640537203540230144     # double 180
.LCPI9_5:
	.quad	4652007308841189376     # double 1000
.LCPI9_6:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI9_7:
	.quad	4602678819172646912     # double 0.5
.LCPI9_8:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI9_9:
	.quad	4576918229304087675     # double 0.01
.LCPI9_10:
	.quad	4606281698874543309     # double 0.90000000000000002
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI9_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	-4616189618054758400    # double -1.000000e+00
	.text
	.globl	gs_screen_order_init_memory
	.align	16, 0x90
	.type	gs_screen_order_init_memory,@function
gs_screen_order_init_memory:            # @gs_screen_order_init_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp43:
	.cfi_def_cfa_offset 368
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movl	%ecx, %r13d
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	callq	gx_ht_cache_default_bits_size
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	%rax, %r15
	movss	(%r12), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$-15, %eax
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB9_43
# BB#1:                                 # %if.end
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	callq	gs_currentdevice
	leaq	232(%rsp), %rbp
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	gs_deviceinitialmatrix
	movl	148(%r15), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movss	232(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	236(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm1, %xmm4
	setp	%al
	setne	%cl
	orb	%al, %cl
	movss	240(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm4
	setp	%al
	setne	%dl
	movaps	%xmm1, %xmm5
	mulss	%xmm2, %xmm5
	movss	244(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm6
	mulss	%xmm3, %xmm6
	movl	$90, %edi
	movl	$-90, %esi
	cmoval	%edi, %esi
	orb	%al, %dl
	ucomiss	%xmm6, %xmm5
	seta	%r15b
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm4
	movl	$180, %ebx
	cmovbel	%eax, %ebx
	orb	%cl, %dl
	movb	%dl, 151(%rsp)          # 1-byte Spill
	cmovnel	%esi, %ebx
	movss	(%r12), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	4(%r12), %xmm5          # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movsd	%xmm4, 152(%rsp)        # 8-byte Spill
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm5, %xmm4
	movsd	%xmm4, 96(%rsp)         # 8-byte Spill
	jne	.LBB9_2
# BB#3:                                 # %if.end
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	movq	%r12, 16(%rsp)          # 8-byte Spill
	divss	%xmm3, %xmm0
	movaps	%xmm0, %xmm2
	jmp	.LBB9_4
.LBB9_2:
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	movq	%r12, 16(%rsp)          # 8-byte Spill
	divss	%xmm1, %xmm2
.LBB9_4:                                # %if.end
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	callq	fabs
	movsd	%xmm0, 224(%rsp)        # 8-byte Spill
	movzbl	%r15b, %eax
	movsd	.LCPI9_1(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebx, %xmm1
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	addsd	%xmm1, %xmm0
	leaq	256(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_rotation
	movsd	.LCPI9_2(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	152(%rsp), %xmm0        # 8-byte Folded Reload
	leaq	296(%rsp), %r13
	xorpd	%xmm1, %xmm1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gs_distance_transform
	movsd	296(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	304(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_distance_transform
	xorps	%xmm2, %xmm2
	movsd	296(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	304(%rsp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jne	.LBB9_6
	jp	.LBB9_6
# BB#5:                                 # %if.end
	ucomisd	%xmm2, %xmm1
	jne	.LBB9_6
	jnp	.LBB9_40
.LBB9_6:                                # %while.cond.preheader.i
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	movsd	%xmm1, 168(%rsp)        # 8-byte Spill
	callq	fabs
	movsd	%xmm0, 216(%rsp)        # 8-byte Spill
	movsd	168(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	addsd	216(%rsp), %xmm0        # 8-byte Folded Reload
	xorl	%ebx, %ebx
	movsd	.LCPI9_3(%rip), %xmm1   # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB9_7:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ebx, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	ja	.LBB9_7
# BB#8:                                 # %try_size.preheader.i
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI9_4(%rip), %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 120(%rsp)        # 8-byte Spill
	movsd	.LCPI9_5(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)        # 8-byte Spill
	leaq	256(%rsp), %rbp
	movabsq	$9223372036854775807, %r13 # imm = 0x7FFFFFFFFFFFFFFF
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	168(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB9_9
	.align	16, 0x90
.LBB9_12:                               # %try_size.backedge.i
                                        #   in Loop: Header=BB9_9 Depth=1
	incl	%ebx
	movsd	296(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	304(%rsp), %xmm1        # xmm1 = mem[0],zero
.LBB9_9:                                # %try_size.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_14 Depth 2
                                        #       Child Loop BB9_15 Depth 3
	cvtsi2sdl	%ebx, %xmm2
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 168(%rsp)        # 8-byte Spill
	movsd	.LCPI9_6(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	168(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI9_6(%rip), %xmm0
	callq	floor
	movw	%bx, 266(%rsp)
	movw	%bx, 260(%rsp)
	leal	1(%r12), %eax
	movw	%ax, 256(%rsp)
	movswl	%ax, %ecx
	cmpl	%r12d, %ecx
	jge	.LBB9_13
# BB#10:                                #   in Loop: Header=BB9_9 Depth=1
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	jmp	.LBB9_11
	.align	16, 0x90
.LBB9_13:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	cvttsd2si	%xmm0, %r12d
	leal	1(%r12), %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movswl	%cx, %ecx
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB9_14:                               # %for.body.i
                                        #   Parent Loop BB9_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_15 Depth 3
	movl	72(%rsp), %ecx          # 4-byte Reload
	cmpl	%r12d, %ecx
	movw	%cx, 258(%rsp)
	movl	76(%rsp), %ebx          # 4-byte Reload
	jl	.LBB9_35
	.align	16, 0x90
.LBB9_15:                               # %for.body.87.i
                                        #   Parent Loop BB9_9 Depth=1
                                        #     Parent Loop BB9_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cwtl
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	224(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	.LCPI9_7(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movw	%ax, 262(%rsp)
	movswl	%bx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	224(%rsp), %xmm0        # 8-byte Folded Reload
	addsd	.LCPI9_7(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movw	%ax, 264(%rsp)
	movq	%rbp, %rdi
	callq	gx_compute_cell_values
	movl	284(%rsp), %ecx
	cmpq	$32766, %rcx            # imm = 0x7FFE
	ja	.LBB9_34
# BB#16:                                # %if.end.111.i
                                        #   in Loop: Header=BB9_15 Depth=3
	leaq	63(%rcx), %rsi
	shrq	$3, %rsi
	andl	$1073741816, %esi       # imm = 0x3FFFFFF8
	movswq	280(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%rdi
	cmpq	%rax, %rsi
	ja	.LBB9_34
# BB#17:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB9_15 Depth=3
	xorl	%edx, %edx
	movq	%r13, %rax
	divq	%rcx
	cmpq	%rax, %rsi
	ja	.LBB9_34
# BB#18:                                # %if.end.123.i
                                        #   in Loop: Header=BB9_15 Depth=3
	testb	$1, 151(%rsp)           # 1-byte Folded Reload
	je	.LBB9_23
# BB#19:                                # %if.then.126.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movq	%r14, %rbp
	movl	256(%rsp), %r15d
	movswl	%r15w, %ebx
	cvtsi2ssl	%ebx, %xmm1
	movss	%xmm1, 216(%rsp)        # 4-byte Spill
	movss	236(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	%r15d, %r14d
	shrl	$16, %r14d
	movl	%r15d, %eax
	sarl	$16, %eax
	cvtsi2ssl	%eax, %xmm2
	movss	%xmm2, 208(%rsp)        # 4-byte Spill
	movss	240(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	callq	atan2
	testw	%bx, %bx
	je	.LBB9_20
# BB#22:                                # %cond.false.153.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movss	240(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	216(%rsp), %xmm1        # 4-byte Folded Reload
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 208(%rsp)        # 8-byte Spill
	movsd	%xmm0, 216(%rsp)        # 8-byte Spill
	callq	sin
	jmp	.LBB9_26
.LBB9_23:                               # %if.else.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movq	%r14, %rbp
	movswl	258(%rsp), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	232(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	256(%rsp), %r15d
	movswl	%r15w, %ebx
	cvtsi2ssl	%ebx, %xmm2
	movss	%xmm2, 216(%rsp)        # 4-byte Spill
	movss	244(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	callq	atan2
	movl	%r15d, %r14d
	shrl	$16, %r14d
	testw	%bx, %bx
	je	.LBB9_24
# BB#25:                                # %cond.false.191.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movss	232(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	216(%rsp), %xmm1        # 4-byte Folded Reload
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 208(%rsp)        # 8-byte Spill
	movsd	%xmm0, 216(%rsp)        # 8-byte Spill
	callq	cos
.LBB9_26:                               # %if.end.203.i
                                        #   in Loop: Header=BB9_15 Depth=3
	mulsd	208(%rsp), %xmm0        # 8-byte Folded Reload
	jmp	.LBB9_27
.LBB9_20:                               # %cond.true.144.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movss	236(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	208(%rsp), %xmm1        # 4-byte Folded Reload
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 208(%rsp)        # 8-byte Spill
	movsd	%xmm0, 216(%rsp)        # 8-byte Spill
	callq	cos
	jmp	.LBB9_21
.LBB9_24:                               # %cond.true.182.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movss	244(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movswl	%r14w, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	movsd	%xmm1, 208(%rsp)        # 8-byte Spill
	movsd	%xmm0, 216(%rsp)        # 8-byte Spill
	callq	sin
.LBB9_21:                               # %if.end.203.i
                                        #   in Loop: Header=BB9_15 Depth=3
	mulsd	208(%rsp), %xmm0        # 8-byte Folded Reload
	xorl	%r15d, %r15d
.LBB9_27:                               # %if.end.203.i
                                        #   in Loop: Header=BB9_15 Depth=3
	mulsd	.LCPI9_2(%rip), %xmm0
	callq	fabs
	movsd	%xmm0, 208(%rsp)        # 8-byte Spill
	movsd	216(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI9_8(%rip), %xmm0
	subsd	128(%rsp), %xmm0        # 8-byte Folded Reload
	mulsd	136(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, 216(%rsp)        # 8-byte Spill
	divsd	.LCPI9_4(%rip), %xmm0
	callq	floor
	movsd	%xmm0, 192(%rsp)        # 8-byte Spill
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, 184(%rsp)        # 8-byte Spill
	movswl	%r14w, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	168(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movswl	%r15w, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	imull	%eax, %eax
	imull	%ecx, %ecx
	addl	%eax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 176(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB9_29
# BB#28:                                # %call.sqrt
                                        #   in Loop: Header=BB9_15 Depth=3
	movsd	176(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB9_29:                               # %if.end.203.i.split
                                        #   in Loop: Header=BB9_15 Depth=3
	ucomisd	200(%rsp), %xmm0        # 8-byte Folded Reload
	movq	%rbp, %r14
	leaq	256(%rsp), %rbp
	ja	.LBB9_34
# BB#30:                                # %cleanup.275.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movsd	%xmm0, 200(%rsp)        # 8-byte Spill
	movsd	.LCPI9_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	192(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	216(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	184(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	208(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 208(%rsp)        # 8-byte Spill
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 120(%rsp)        # 8-byte Spill
	subsd	152(%rsp), %xmm0        # 8-byte Folded Reload
	callq	fabs
	movsd	%xmm0, 216(%rsp)        # 8-byte Spill
	movsd	152(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	movsd	216(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 216(%rsp)        # 8-byte Spill
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	96(%rsp), %xmm0         # 8-byte Folded Reload
	callq	fabs
	movq	288(%rsp), %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 32(%rcx)
	movups	256(%rsp), %xmm1
	movupd	272(%rsp), %xmm2
	movupd	%xmm2, 16(%rcx)
	movups	%xmm1, (%rcx)
	movsd	.LCPI9_9(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	216(%rsp), %xmm1        # 8-byte Folded Reload
	jb	.LBB9_31
# BB#32:                                # %cleanup.275.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movsd	208(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	.LCPI9_10(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB9_41
# BB#33:                                #   in Loop: Header=BB9_15 Depth=3
	movl	$1, 92(%rsp)            # 4-byte Folded Spill
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	jmp	.LBB9_34
.LBB9_31:                               #   in Loop: Header=BB9_15 Depth=3
	movl	$1, 92(%rsp)            # 4-byte Folded Spill
	movsd	208(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB9_34:                               # %for.inc.i
                                        #   in Loop: Header=BB9_15 Depth=3
	movzwl	258(%rsp), %eax
	decl	%eax
	movw	%ax, 258(%rsp)
	movswl	%ax, %ecx
	movl	256(%rsp), %eax
	movl	%eax, %ebx
	shrl	$16, %ebx
	cmpl	%r12d, %ecx
	jge	.LBB9_15
.LBB9_35:                               # %for.inc.289.i
                                        #   in Loop: Header=BB9_14 Depth=2
	decl	%eax
	movw	%ax, 256(%rsp)
	movswl	%ax, %ecx
	movq	64(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB9_14
.LBB9_11:                               # %cleanup.293.thread.i
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, 16(%rax)
	movl	52(%rsp), %ebx          # 4-byte Reload
	jb	.LBB9_12
# BB#36:                                # %if.end.305.i
                                        #   in Loop: Header=BB9_9 Depth=1
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	je	.LBB9_39
# BB#37:                                # %if.then.307.i
                                        #   in Loop: Header=BB9_9 Depth=1
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	jne	.LBB9_12
# BB#38:
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB9_42
.LBB9_41:                               # %cleanup.293.i
	movapd	%xmm2, %xmm0
.LBB9_42:                               # %if.end.9
	cvtsd2ss	%xmm0, %xmm0
	movq	16(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, 16(%rax)
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rax)
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	gx_compute_cell_values
	movq	248(%rsp), %rax
	movq	%rax, 128(%rbx)
	movupd	232(%rsp), %xmm0
	movupd	%xmm0, 112(%rbx)
	movq	%r14, 136(%rbx)
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gs_screen_order_alloc
	jmp	.LBB9_43
.LBB9_39:                               # %if.else.312.i
	cmpl	$1, %ebx
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB9_42
.LBB9_40:                               # %pick_cell_size.exit.thread
	movl	$-15, %eax
.LBB9_43:                               # %cleanup
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gs_screen_order_init_memory, .Lfunc_end9-gs_screen_order_init_memory
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gs_screen_enum_init_memory
	.align	16, 0x90
	.type	gs_screen_enum_init_memory,@function
gs_screen_enum_init_memory:             # @gs_screen_enum_init_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 48
.Ltmp55:
	.cfi_offset %rbx, -40
.Ltmp56:
	.cfi_offset %r12, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, 352(%rbx)
	subq	$-128, %rdi
	cmpq	%r14, %rdi
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$160, %edx
	movq	%r14, %rsi
	callq	memcpy
.LBB10_2:                               # %if.end
	movq	%r12, 16(%rbx)
	movl	$1, (%rbx)
	movq	16(%r15), %rax
	movq	%rax, 48(%rbx)
	movups	(%r15), %xmm0
	movups	%xmm0, 32(%rbx)
	movq	$0, 336(%rbx)
	movl	56(%r14), %eax
	movzwl	40(%r14), %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, 344(%rbx)
	movzwl	46(%r14), %eax
	movl	%eax, 348(%rbx)
	movswq	(%r14), %rax
	movswq	2(%r14), %rcx
	movswl	4(%r14), %edx
	movswq	6(%r14), %rdi
	movswq	8(%r14), %r9
	movswl	10(%r14), %r8d
	movq	%rdi, %rsi
	imulq	%rax, %rsi
	imull	%edx, %edi
	imull	%r9d, %edx
	imulq	%rcx, %r9
	addq	%rsi, %r9
	cvtsi2sdq	%r9, %xmm0
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 288(%rbx)
	negl	%ecx
	imull	%r8d, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 292(%rbx)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 296(%rbx)
	imull	%r8d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 300(%rbx)
	movl	$-1082130432, 304(%rbx) # imm = 0xFFFFFFFFBF800000
	movl	$-1082130432, 308(%rbx) # imm = 0xFFFFFFFFBF800000
	leaq	288(%rbx), %rdi
	addq	$312, %rbx              # imm = 0x138
	movq	%rbx, %rsi
	callq	gs_matrix_invert
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	gs_screen_enum_init_memory, .Lfunc_end10-gs_screen_enum_init_memory
	.cfi_endproc

	.globl	gs_screen_order_alloc
	.align	16, 0x90
	.type	gs_screen_order_alloc,@function
gs_screen_order_alloc:                  # @gs_screen_order_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	movq	%rsi, %r9
	movq	%rdi, %rbx
	movl	28(%rbx), %esi
	movl	32(%rbx), %edx
	movswl	24(%rbx), %eax
	movl	%eax, %r8d
	imull	%esi, %r8d
	leal	63(%rsi), %ecx
	shrl	$3, %ecx
	andl	$536870904, %ecx        # imm = 0x1FFFFFF8
	imulq	%rdx, %rcx
	leaq	(%rcx,%r8,4), %rcx
	movl	%edx, %edi
	imull	%esi, %edi
	leaq	(%rcx,%rdi,8), %rcx
	cmpq	136(%rbx), %rcx
	jbe	.LBB11_1
# BB#2:                                 # %if.else
	movl	36(%rbx), %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	popq	%rbx
	jmp	gx_ht_alloc_order       # TAILCALL
.LBB11_1:                               # %if.then
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gx_ht_alloc_order
	movw	24(%rbx), %cx
	movw	%cx, 48(%rbx)
	movw	%cx, 42(%rbx)
	movw	36(%rbx), %cx
	movw	%cx, 50(%rbx)
	movw	%cx, 46(%rbx)
	popq	%rbx
	retq
.Lfunc_end11:
	.size	gs_screen_order_alloc, .Lfunc_end11-gs_screen_order_alloc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602687826371901653     # double 0.501
.LCPI12_1:
	.quad	4602642790375627948     # double 0.498
.LCPI12_2:
	.quad	4602678819172646912     # double 0.5
.LCPI12_5:
	.quad	-4616189618054758400    # double -1
.LCPI12_6:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_3:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI12_4:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
.LCPI12_7:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gs_screen_currentpoint
	.align	16, 0x90
	.type	gs_screen_currentpoint,@function
gs_screen_currentpoint:                 # @gs_screen_currentpoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 96
.Ltmp65:
	.cfi_offset %rbx, -32
.Ltmp66:
	.cfi_offset %r14, -24
.Ltmp67:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	340(%rbx), %eax
	cmpl	344(%rbx), %eax
	jge	.LBB12_1
# BB#2:                                 # %if.end
	movl	336(%rbx), %ecx
	cvtsi2sdl	%ecx, %xmm0
	addsd	.LCPI12_0(%rip), %xmm0
	cvtsi2sdl	%eax, %xmm1
	addsd	.LCPI12_1(%rip), %xmm1
	leaq	288(%rbx), %r15
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB12_14
# BB#3:                                 # %if.end.7
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI12_2(%rip), %xmm0
	callq	ceil
	addsd	%xmm0, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	56(%rsp), %xmm0
	callq	ceil
	movapd	%xmm0, %xmm1
	addsd	%xmm1, %xmm1
	leaq	312(%rbx), %rdi
	leaq	32(%rsp), %rsi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB12_14
# BB#4:                                 # %if.end.18
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, (%rsp)           # 16-byte Spill
	callq	floor
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	movapd	(%rsp), %xmm0           # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	16(%rsp), %xmm2         # 16-byte Reload
	unpcklpd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	addpd	.LCPI12_3(%rip), %xmm2
	movapd	%xmm2, 32(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	336(%rbx), %xmm0
	subsd	%xmm2, %xmm0
	addsd	.LCPI12_0(%rip), %xmm0
	cvtsi2sdl	340(%rbx), %xmm1
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	subsd	%xmm2, %xmm1
	addsd	.LCPI12_1(%rip), %xmm1
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB12_14
# BB#5:                                 # %if.end.41
	movapd	48(%rsp), %xmm2
	addpd	.LCPI12_4(%rip), %xmm2
	movapd	%xmm2, 48(%rsp)
	movsd	.LCPI12_5(%rip), %xmm3  # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB12_7
# BB#6:                                 # %if.then.49
	movapd	%xmm2, %xmm0
	movapd	%xmm2, 16(%rsp)         # 16-byte Spill
	callq	ceil
	movsd	.LCPI12_5(%rip), %xmm3  # xmm3 = mem[0],zero
	movapd	16(%rsp), %xmm2         # 16-byte Reload
	xorpd	.LCPI12_7(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	incl	%eax
	andl	$-2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 48(%rsp)
	jmp	.LBB12_9
.LBB12_1:                               # %if.then
	subq	$-128, %rbx
	movq	%rbx, %rdi
	callq	gx_ht_construct_spot_order
	movl	$1, %eax
	jmp	.LBB12_14
.LBB12_7:                               # %if.else
	ucomisd	.LCPI12_6(%rip), %xmm2
	jb	.LBB12_9
# BB#8:                                 # %if.then.61
	cvttsd2si	%xmm2, %eax
	incl	%eax
	andl	$-2, %eax
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)
.LBB12_9:                               # %if.end.70
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	ucomisd	%xmm2, %xmm3
	jbe	.LBB12_11
# BB#10:                                # %if.then.74
	movapd	%xmm2, %xmm0
	movapd	%xmm2, 16(%rsp)         # 16-byte Spill
	callq	ceil
	xorpd	.LCPI12_7(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	incl	%eax
	andl	$-2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	16(%rsp), %xmm0         # 16-byte Folded Reload
	movsd	%xmm0, 56(%rsp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.else.84
	ucomisd	.LCPI12_6(%rip), %xmm2
	jb	.LBB12_13
# BB#12:                                # %if.then.88
	cvttsd2si	%xmm2, %eax
	incl	%eax
	andl	$-2, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 56(%rsp)
.LBB12_13:                              # %if.end.97
	movapd	48(%rsp), %xmm0
	movupd	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB12_14:                              # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	gs_screen_currentpoint, .Lfunc_end12-gs_screen_currentpoint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	-4616189618054758400    # double -1
.LCPI13_1:
	.quad	4607182418800017408     # double 1
.LCPI13_2:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	gs_screen_next
	.align	16, 0x90
	.type	gs_screen_next,@function
gs_screen_next:                         # @gs_screen_next
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$-15, %eax
	ja	.LBB13_4
# BB#1:                                 # %entry
	ucomisd	.LCPI13_1(%rip), %xmm0
	ja	.LBB13_4
# BB#2:                                 # %if.end
	movzwl	168(%rdi), %r9d
	movq	216(%rdi), %r8
	addsd	.LCPI13_1(%rip), %xmm0
	mulsd	.LCPI13_2(%rip), %xmm0
	cvttsd2si	%xmm0, %rax
	movl	340(%rdi), %esi
	movl	%esi, %ecx
	imull	%r9d, %ecx
	movl	336(%rdi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	%eax, 4(%r8,%rcx,8)
	incl	%edx
	movl	%edx, 336(%rdi)
	xorl	%eax, %eax
	cmpl	%r9d, %edx
	jl	.LBB13_4
# BB#3:                                 # %if.then.12
	movl	$0, 336(%rdi)
	incl	%esi
	movl	%esi, 340(%rdi)
.LBB13_4:                               # %cleanup
	retq
.Lfunc_end13:
	.size	gs_screen_next, .Lfunc_end13-gs_screen_next
	.cfi_endproc

	.globl	gs_screen_install
	.align	16, 0x90
	.type	gs_screen_install,@function
gs_screen_install:                      # @gs_screen_install
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 24
	subq	$232, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 256
.Ltmp71:
	.cfi_offset %rbx, -24
.Ltmp72:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	16(%rbx), %rax
	movq	%rax, 176(%rsp)
	movq	%rbx, %rsi
	subq	$-128, %rsi
	leaq	8(%rsp), %r14
	movl	$160, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	$0, 208(%rsp)
	movq	352(%rbx), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	gx_ht_install
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB14_2
# BB#1:                                 # %if.then
	movq	176(%rsp), %rsi
	leaq	8(%rsp), %rdi
	callq	gx_device_halftone_release
.LBB14_2:                               # %if.end
	movl	%ebx, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	gs_screen_install, .Lfunc_end14-gs_screen_install
	.cfi_endproc

	.align	16, 0x90
	.type	screen_enum_enum_ptrs,@function
screen_enum_enum_ptrs:                  # @screen_enum_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	testl	%ecx, %ecx
	je	.LBB15_5
# BB#1:                                 # %sw.default
	cmpl	$4, %ecx
	jg	.LBB15_4
# BB#2:                                 # %if.then
	movq	32(%rsp), %rax
	subq	$-128, %rsi
	decl	%ecx
	movq	%rax, (%rsp)
	movl	$160, %edx
	movl	$st_ht_order, %r9d
	movq	%rbx, %r8
	callq	*st_ht_order+32(%rip)
	testq	%rax, %rax
	jne	.LBB15_7
# BB#3:                                 # %if.then.2
	movq	$0, (%rbx)
	jmp	.LBB15_6
.LBB15_5:                               # %sw.bb
	movq	352(%rsi), %rax
	movq	%rax, (%rbx)
.LBB15_6:                               # %cleanup.7
	movl	$ptr_struct_procs, %eax
.LBB15_7:                               # %cleanup.7
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB15_4:                               # %if.end.3
	addl	$-5, %ecx
	movl	$128, %edx
	movl	$st_halftone, %r9d
	movq	%rbx, %r8
	addq	$16, %rsp
	popq	%rbx
	jmpq	*st_halftone+32(%rip)   # TAILCALL
.Lfunc_end15:
	.size	screen_enum_enum_ptrs, .Lfunc_end15-screen_enum_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	screen_enum_reloc_ptrs,@function
screen_enum_reloc_ptrs:                 # @screen_enum_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp78:
	.cfi_def_cfa_offset 32
.Ltmp79:
	.cfi_offset %rbx, -24
.Ltmp80:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	352(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 352(%rbx)
	movl	$128, %esi
	movl	$st_halftone, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	*st_halftone+40(%rip)
	subq	$-128, %rbx
	movl	$160, %esi
	movl	$st_ht_order, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*st_ht_order+40(%rip)   # TAILCALL
.Lfunc_end16:
	.size	screen_enum_reloc_ptrs, .Lfunc_end16-screen_enum_reloc_ptrs
	.cfi_endproc

	.type	st_gs_screen_enum,@object # @st_gs_screen_enum
	.section	.rodata,"a",@progbits
	.align	8
st_gs_screen_enum:
	.long	360                     # 0x168
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	screen_enum_enum_ptrs
	.quad	screen_enum_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_screen_enum, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_screen_enum"
	.size	.L.str, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
