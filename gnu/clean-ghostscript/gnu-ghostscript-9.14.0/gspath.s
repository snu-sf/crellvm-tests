	.text
	.file	"gspath.bc"
	.globl	gs_newpath
	.align	16, 0x90
	.type	gs_newpath,@function
gs_newpath:                             # @gs_newpath
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 168(%rdi)
	movq	1680(%rdi), %rdi
	jmp	gx_path_new             # TAILCALL
.Lfunc_end0:
	.size	gs_newpath, .Lfunc_end0-gs_newpath
	.cfi_endproc

	.globl	gs_closepath
	.align	16, 0x90
	.type	gs_closepath,@function
gs_closepath:                           # @gs_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1680(%rbx), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	testl	%eax, %eax
	js	.LBB1_2
# BB#1:                                 # %if.end
	movups	192(%rbx), %xmm0
	movups	%xmm0, 176(%rbx)
.LBB1_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gs_closepath, .Lfunc_end1-gs_closepath
	.cfi_endproc

	.globl	gs_upmergepath
	.align	16, 0x90
	.type	gs_upmergepath,@function
gs_upmergepath:                         # @gs_upmergepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -24
.Ltmp6:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	1616(%rbx), %r14
	movq	1680(%rbx), %rsi
	movq	1680(%r14), %rdi
	callq	gx_path_add_path
	testl	%eax, %eax
	js	.LBB2_3
# BB#1:                                 # %if.end
	cmpl	$0, 168(%rbx)
	je	.LBB2_3
# BB#2:                                 # %if.then.3
	movups	176(%rbx), %xmm0
	movups	%xmm0, 176(%r14)
	movups	192(%rbx), %xmm0
	movups	%xmm0, 192(%r14)
	movl	$1, 168(%r14)
.LBB2_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	gs_upmergepath, .Lfunc_end2-gs_upmergepath
	.cfi_endproc

	.globl	gx_current_path
	.align	16, 0x90
	.type	gx_current_path,@function
gx_current_path:                        # @gx_current_path
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1680(%rdi), %rax
	retq
.Lfunc_end3:
	.size	gx_current_path, .Lfunc_end3-gx_current_path
	.cfi_endproc

	.globl	gs_currentpoint
	.align	16, 0x90
	.type	gs_currentpoint,@function
gs_currentpoint:                        # @gs_currentpoint
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 168(%rdi)
	je	.LBB4_1
# BB#2:                                 # %if.end
	movsd	176(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	184(%rdi), %xmm1        # xmm1 = mem[0],zero
	jmp	gs_itransform           # TAILCALL
.LBB4_1:                                # %return
	movl	$-14, %eax
	retq
.Lfunc_end4:
	.size	gs_currentpoint, .Lfunc_end4-gs_currentpoint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4710765210229538816     # double 8388608
.LCPI5_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI5_2:
	.quad	4710764136483520512     # double 8387607.99609375
.LCPI5_3:
	.quad	-4512607900371255296    # double -8387607.99609375
.LCPI5_4:
	.quad	4643211215818981376     # double 256
.LCPI5_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_moveto_aux
	.align	16, 0x90
	.type	gs_moveto_aux,@function
gs_moveto_aux:                          # @gs_moveto_aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 48
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movapd	%xmm0, %xmm2
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_4
# BB#1:                                 # %entry
	ucomisd	.LCPI5_1(%rip), %xmm2
	jb	.LBB5_4
# BB#2:                                 # %entry
	ucomisd	%xmm2, %xmm0
	jbe	.LBB5_4
# BB#3:                                 # %entry
	ucomisd	.LCPI5_1(%rip), %xmm1
	jb	.LBB5_4
# BB#13:                                # %if.else.i
	movapd	%xmm2, %xmm0
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	mulsd	.LCPI5_4(%rip), %xmm0
	addsd	.LCPI5_5(%rip), %xmm0
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	addsd	.LCPI5_5(%rip), %xmm0
	callq	floor
.LBB5_14:                               # %if.end
	cvttsd2si	%xmm0, %edx
	jmp	.LBB5_15
.LBB5_4:                                # %if.then.i
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	je	.LBB5_22
# BB#5:                                 # %if.end.i
	movl	$2147227647, %edx       # imm = 0x7FFC17FF
	ucomisd	.LCPI5_2(%rip), %xmm2
	movl	$2147227647, %ebp       # imm = 0x7FFC17FF
	ja	.LBB5_8
# BB#6:                                 # %cond.false.i.i
	movl	$-2147227647, %ebp      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	ja	.LBB5_8
# BB#7:                                 # %cond.false.3.i.i
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ebp
.LBB5_8:                                # %cond.end.4.i.i
	ucomisd	.LCPI5_2(%rip), %xmm1
	jbe	.LBB5_10
# BB#9:
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	jmp	.LBB5_15
.LBB5_10:                               # %cond.false.10.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movl	$-2147227647, %edx      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_12
# BB#11:
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
.LBB5_15:                               # %if.end
	cmpl	$0, 128(%rbx)
	je	.LBB5_19
# BB#16:                                # %land.lhs.true
	testb	$2, 97(%r14)
	jne	.LBB5_17
.LBB5_19:                               # %if.else
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gx_path_add_point
	testl	%eax, %eax
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	js	.LBB5_22
# BB#20:                                # %if.end.20
	movb	97(%r14), %al
	movb	%al, 96(%r14)
	movsd	%xmm1, 176(%rbx)
	movsd	%xmm0, 184(%rbx)
	movupd	176(%rbx), %xmm0
	movupd	%xmm0, 192(%rbx)
	jmp	.LBB5_21
.LBB5_17:                               # %if.then.3
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gx_path_add_gap_notes
	testl	%eax, %eax
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	js	.LBB5_22
# BB#18:                                # %if.end.10
	movsd	%xmm1, 176(%rbx)
	movsd	%xmm0, 184(%rbx)
.LBB5_21:                               # %if.end.27
	movl	$1, 168(%rbx)
	xorl	%eax, %eax
.LBB5_22:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_12:                               # %cond.false.14.i.i
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	jmp	.LBB5_14
.Lfunc_end5:
	.size	gs_moveto_aux, .Lfunc_end5-gs_moveto_aux
	.cfi_endproc

	.globl	gs_moveto
	.align	16, 0x90
	.type	gs_moveto,@function
gs_moveto:                              # @gs_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	132(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB6_2
# BB#1:                                 # %if.end
	movq	1680(%rbx), %rsi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_moveto_aux
.LBB6_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end6:
	.size	gs_moveto, .Lfunc_end6-gs_moveto
	.cfi_endproc

	.globl	gs_rmoveto
	.align	16, 0x90
	.type	gs_rmoveto,@function
gs_rmoveto:                             # @gs_rmoveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$-14, %eax
	cmpl	$0, 168(%rbx)
	je	.LBB7_3
# BB#1:                                 # %if.end
	leaq	132(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB7_3
# BB#2:                                 # %if.end.2
	movq	1680(%rbx), %rsi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	addsd	176(%rbx), %xmm0
	addsd	184(%rbx), %xmm1
	movq	%rbx, %rdi
	callq	gs_moveto_aux
.LBB7_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gs_rmoveto, .Lfunc_end7-gs_rmoveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4710765210229538816     # double 8388608
.LCPI8_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI8_2:
	.quad	4710764136483520512     # double 8387607.99609375
.LCPI8_3:
	.quad	-4512607900371255296    # double -8387607.99609375
.LCPI8_4:
	.quad	4643211215818981376     # double 256
.LCPI8_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_lineto
	.align	16, 0x90
	.type	gs_lineto,@function
gs_lineto:                              # @gs_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 80
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	132(%rbx), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB8_17
# BB#1:                                 # %if.end
	movapd	32(%rsp), %xmm1
	movq	1680(%rbx), %r14
	movapd	%xmm1, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB8_5
# BB#2:                                 # %if.end
	ucomisd	.LCPI8_1(%rip), %xmm1
	jb	.LBB8_5
# BB#3:                                 # %if.end
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_5
# BB#4:                                 # %if.end
	ucomisd	.LCPI8_1(%rip), %xmm2
	jb	.LBB8_5
# BB#13:                                # %if.else.i.i
	movapd	%xmm1, %xmm0
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	mulsd	.LCPI8_4(%rip), %xmm0
	addsd	.LCPI8_5(%rip), %xmm0
	movapd	%xmm2, (%rsp)           # 16-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	.LCPI8_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	(%rsp), %xmm0           # 16-byte Folded Reload
	addsd	.LCPI8_5(%rip), %xmm0
	callq	floor
.LBB8_14:                               # %if.end.i
	cvttsd2si	%xmm0, %edx
	jmp	.LBB8_15
.LBB8_5:                                # %if.then.i.i
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	je	.LBB8_17
# BB#6:                                 # %if.end.i.i
	movl	$2147227647, %edx       # imm = 0x7FFC17FF
	ucomisd	.LCPI8_2(%rip), %xmm1
	movl	$2147227647, %ebp       # imm = 0x7FFC17FF
	ja	.LBB8_9
# BB#7:                                 # %cond.false.i.i.i
	movl	$-2147227647, %ebp      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI8_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB8_9
# BB#8:                                 # %cond.false.3.i.i.i
	movsd	.LCPI8_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebp
.LBB8_9:                                # %cond.end.4.i.i.i
	ucomisd	.LCPI8_2(%rip), %xmm2
	jbe	.LBB8_11
# BB#10:
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	jmp	.LBB8_15
.LBB8_11:                               # %cond.false.10.i.i.i
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	movl	$-2147227647, %edx      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI8_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB8_12
.LBB8_15:                               # %if.end.i
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	movapd	16(%rsp), %xmm0         # 16-byte Reload
	js	.LBB8_17
# BB#16:                                # %if.end.6.i
	movupd	%xmm0, 176(%rbx)
	xorl	%eax, %eax
.LBB8_17:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB8_12:                               # %cond.false.14.i.i.i
	movsd	.LCPI8_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	jmp	.LBB8_14
.Lfunc_end8:
	.size	gs_lineto, .Lfunc_end8-gs_lineto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4710765210229538816     # double 8388608
.LCPI9_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI9_2:
	.quad	4710764136483520512     # double 8387607.99609375
.LCPI9_3:
	.quad	-4512607900371255296    # double -8387607.99609375
.LCPI9_4:
	.quad	4643211215818981376     # double 256
.LCPI9_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_rlineto
	.align	16, 0x90
	.type	gs_rlineto,@function
gs_rlineto:                             # @gs_rlineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 80
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$-14, %eax
	cmpl	$0, 168(%rbx)
	je	.LBB9_18
# BB#1:                                 # %if.end
	leaq	132(%rbx), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB9_18
# BB#2:                                 # %if.end.2
	movupd	176(%rbx), %xmm1
	addpd	32(%rsp), %xmm1
	movq	1680(%rbx), %r14
	movapd	%xmm1, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB9_6
# BB#3:                                 # %if.end.2
	ucomisd	.LCPI9_1(%rip), %xmm1
	jb	.LBB9_6
# BB#4:                                 # %if.end.2
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_6
# BB#5:                                 # %if.end.2
	ucomisd	.LCPI9_1(%rip), %xmm2
	jb	.LBB9_6
# BB#14:                                # %if.else.i.i
	movapd	%xmm1, %xmm0
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	mulsd	.LCPI9_4(%rip), %xmm0
	addsd	.LCPI9_5(%rip), %xmm0
	movapd	%xmm2, (%rsp)           # 16-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	.LCPI9_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	(%rsp), %xmm0           # 16-byte Folded Reload
	addsd	.LCPI9_5(%rip), %xmm0
	callq	floor
.LBB9_15:                               # %if.end.i
	cvttsd2si	%xmm0, %edx
	jmp	.LBB9_16
.LBB9_6:                                # %if.then.i.i
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	je	.LBB9_18
# BB#7:                                 # %if.end.i.i
	movl	$2147227647, %edx       # imm = 0x7FFC17FF
	ucomisd	.LCPI9_2(%rip), %xmm1
	movl	$2147227647, %ebp       # imm = 0x7FFC17FF
	ja	.LBB9_10
# BB#8:                                 # %cond.false.i.i.i
	movl	$-2147227647, %ebp      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI9_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB9_10
# BB#9:                                 # %cond.false.3.i.i.i
	movsd	.LCPI9_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebp
.LBB9_10:                               # %cond.end.4.i.i.i
	ucomisd	.LCPI9_2(%rip), %xmm2
	jbe	.LBB9_12
# BB#11:
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	jmp	.LBB9_16
.LBB9_12:                               # %cond.false.10.i.i.i
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	movl	$-2147227647, %edx      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI9_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB9_13
.LBB9_16:                               # %if.end.i
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	movapd	16(%rsp), %xmm0         # 16-byte Reload
	js	.LBB9_18
# BB#17:                                # %if.end.6.i
	movupd	%xmm0, 176(%rbx)
	xorl	%eax, %eax
.LBB9_18:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_13:                               # %cond.false.14.i.i.i
	movsd	.LCPI9_4(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	jmp	.LBB9_15
.Lfunc_end9:
	.size	gs_rlineto, .Lfunc_end9-gs_rlineto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4710765210229538816     # double 8388608
.LCPI10_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI10_2:
	.quad	4710764136483520512     # double 8387607.99609375
.LCPI10_3:
	.quad	-4512607900371255296    # double -8387607.99609375
.LCPI10_4:
	.quad	4643211215818981376     # double 256
.LCPI10_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_curveto
	.align	16, 0x90
	.type	gs_curveto,@function
gs_curveto:                             # @gs_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 192
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	movsd	%xmm4, 24(%rsp)         # 8-byte Spill
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	leaq	132(%rbx), %rbp
	leaq	120(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB10_42
# BB#1:                                 # %if.end
	leaq	104(%rsp), %rsi
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB10_42
# BB#2:                                 # %if.end.5
	leaq	80(%rsp), %rsi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB10_42
# BB#3:                                 # %if.end.10
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	128(%rsp), %xmm5        # xmm5 = mem[0],zero
	movsd	104(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	112(%rsp), %xmm3        # xmm3 = mem[0],zero
	movapd	80(%rsp), %xmm1
	movq	1680(%rbx), %r15
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm5, %xmm2
	jbe	.LBB10_7
# BB#4:                                 # %if.end.10
	ucomisd	.LCPI10_1(%rip), %xmm0
	jb	.LBB10_7
# BB#5:                                 # %if.end.10
	ucomisd	%xmm0, %xmm2
	jbe	.LBB10_7
# BB#6:                                 # %if.end.10
	ucomisd	.LCPI10_1(%rip), %xmm5
	jb	.LBB10_7
# BB#14:                                # %if.else.i
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	mulsd	.LCPI10_4(%rip), %xmm0
	addsd	.LCPI10_5(%rip), %xmm0
	movsd	%xmm3, 56(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI10_4(%rip), %xmm0
	addsd	.LCPI10_5(%rip), %xmm0
	callq	floor
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %r13d
	jmp	.LBB10_15
.LBB10_7:                               # %if.then.i
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	je	.LBB10_42
# BB#8:                                 # %if.end.i.14
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	movl	$2147227647, %r13d      # imm = 0x7FFC17FF
	ucomisd	.LCPI10_2(%rip), %xmm0
	movl	$2147227647, %r12d      # imm = 0x7FFC17FF
	ja	.LBB10_11
# BB#9:                                 # %cond.false.i.i
	movl	$-2147227647, %r12d     # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI10_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB10_11
# BB#10:                                # %cond.false.3.i.i
	mulsd	.LCPI10_4(%rip), %xmm0
	cvttsd2si	%xmm0, %r12d
.LBB10_11:                              # %cond.end.4.i.i
	ucomisd	.LCPI10_2(%rip), %xmm5
	ja	.LBB10_15
# BB#12:                                # %cond.false.10.i.i
	movl	$-2147227647, %r13d     # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI10_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm5, %xmm0
	ja	.LBB10_15
# BB#13:                                # %cond.false.14.i.i
	mulsd	.LCPI10_4(%rip), %xmm5
	cvttsd2si	%xmm5, %r13d
.LBB10_15:                              # %if.end.i
	ucomisd	%xmm3, %xmm2
	jbe	.LBB10_19
# BB#16:                                # %if.end.i
	ucomisd	.LCPI10_1(%rip), %xmm4
	jb	.LBB10_19
# BB#17:                                # %if.end.i
	ucomisd	%xmm4, %xmm2
	jbe	.LBB10_19
# BB#18:                                # %if.end.i
	ucomisd	.LCPI10_1(%rip), %xmm3
	jb	.LBB10_19
# BB#26:                                # %if.else.i.55
	mulsd	.LCPI10_4(%rip), %xmm4
	addsd	.LCPI10_5(%rip), %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 56(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI10_4(%rip), %xmm0
	addsd	.LCPI10_5(%rip), %xmm0
	callq	floor
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %r8d
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	jmp	.LBB10_27
.LBB10_19:                              # %if.then.i.25
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	je	.LBB10_42
# BB#20:                                # %if.end.i.27
	movl	$2147227647, %r8d       # imm = 0x7FFC17FF
	ucomisd	.LCPI10_2(%rip), %xmm4
	movl	$2147227647, %ebp       # imm = 0x7FFC17FF
	ja	.LBB10_23
# BB#21:                                # %cond.false.i.i.29
	movl	$-2147227647, %ebp      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI10_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	ja	.LBB10_23
# BB#22:                                # %cond.false.3.i.i.32
	mulsd	.LCPI10_4(%rip), %xmm4
	cvttsd2si	%xmm4, %ebp
.LBB10_23:                              # %cond.end.4.i.i.36
	ucomisd	.LCPI10_2(%rip), %xmm3
	ja	.LBB10_27
# BB#24:                                # %cond.false.10.i.i.38
	movl	$-2147227647, %r8d      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI10_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	ja	.LBB10_27
# BB#25:                                # %cond.false.14.i.i.41
	mulsd	.LCPI10_4(%rip), %xmm3
	cvttsd2si	%xmm3, %r8d
.LBB10_27:                              # %if.end.5.i
	movapd	%xmm1, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	ucomisd	%xmm3, %xmm2
	jbe	.LBB10_31
# BB#28:                                # %if.end.5.i
	ucomisd	.LCPI10_1(%rip), %xmm1
	jb	.LBB10_31
# BB#29:                                # %if.end.5.i
	ucomisd	%xmm1, %xmm2
	jbe	.LBB10_31
# BB#30:                                # %if.end.5.i
	ucomisd	.LCPI10_1(%rip), %xmm3
	jb	.LBB10_31
# BB#38:                                # %if.else.i.96
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	.LCPI10_4(%rip), %xmm0
	addsd	.LCPI10_5(%rip), %xmm0
	movl	%r8d, %ebp
	movapd	%xmm3, 32(%rsp)         # 16-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r14d
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	32(%rsp), %xmm0         # 16-byte Folded Reload
	addsd	.LCPI10_5(%rip), %xmm0
	callq	floor
	movl	%ebp, %r8d
.LBB10_39:                              # %if.end.10.i
	cvttsd2si	%xmm0, %eax
	jmp	.LBB10_40
.LBB10_31:                              # %if.then.i.66
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	je	.LBB10_42
# BB#32:                                # %if.end.i.68
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	ucomisd	.LCPI10_2(%rip), %xmm1
	movl	$2147227647, %r14d      # imm = 0x7FFC17FF
	ja	.LBB10_35
# BB#33:                                # %cond.false.i.i.70
	movl	$-2147227647, %r14d     # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI10_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB10_35
# BB#34:                                # %cond.false.3.i.i.73
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r14d
.LBB10_35:                              # %cond.end.4.i.i.77
	ucomisd	.LCPI10_2(%rip), %xmm3
	ja	.LBB10_40
# BB#36:                                # %cond.false.10.i.i.79
	movl	$-2147227647, %eax      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI10_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jbe	.LBB10_37
.LBB10_40:                              # %if.end.10.i
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	movl	56(%rsp), %ecx          # 4-byte Reload
	movl	%r14d, %r9d
	callq	gx_path_add_curve_notes
	testl	%eax, %eax
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	js	.LBB10_42
# BB#41:                                # %if.end.18.i
	movupd	%xmm0, 176(%rbx)
	xorl	%eax, %eax
.LBB10_42:                              # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_37:                              # %cond.false.14.i.i.82
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm0
	jmp	.LBB10_39
.Lfunc_end10:
	.size	gs_curveto, .Lfunc_end10-gs_curveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4710765210229538816     # double 8388608
.LCPI11_1:
	.quad	-4512606826625236992    # double -8388608
.LCPI11_2:
	.quad	4710764136483520512     # double 8387607.99609375
.LCPI11_3:
	.quad	-4512607900371255296    # double -8387607.99609375
.LCPI11_4:
	.quad	4643211215818981376     # double 256
.LCPI11_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_rcurveto
	.align	16, 0x90
	.type	gs_rcurveto,@function
gs_rcurveto:                            # @gs_rcurveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 192
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	movsd	%xmm4, 24(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movl	$-14, %eax
	cmpl	$0, 168(%rbx)
	je	.LBB11_43
# BB#1:                                 # %if.end
	leaq	132(%rbx), %rbp
	leaq	120(%rsp), %rsi
	movq	%rbp, %rdi
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm2, 48(%rsp)         # 8-byte Spill
	callq	gs_distance_transform
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	testl	%eax, %eax
	js	.LBB11_43
# BB#2:                                 # %if.end.2
	leaq	104(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB11_43
# BB#3:                                 # %if.end.7
	leaq	80(%rsp), %rsi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB11_43
# BB#4:                                 # %if.end.12
	movupd	176(%rbx), %xmm1
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movapd	%xmm1, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movsd	128(%rsp), %xmm5        # xmm5 = mem[0],zero
	addsd	%xmm3, %xmm5
	movsd	104(%rsp), %xmm4        # xmm4 = mem[0],zero
	addsd	%xmm1, %xmm4
	addsd	112(%rsp), %xmm3
	addpd	80(%rsp), %xmm1
	movq	1680(%rbx), %r15
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm5, %xmm2
	jbe	.LBB11_8
# BB#5:                                 # %if.end.12
	ucomisd	.LCPI11_1(%rip), %xmm0
	jb	.LBB11_8
# BB#6:                                 # %if.end.12
	ucomisd	%xmm0, %xmm2
	jbe	.LBB11_8
# BB#7:                                 # %if.end.12
	ucomisd	.LCPI11_1(%rip), %xmm5
	jb	.LBB11_8
# BB#15:                                # %if.else.i
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	mulsd	.LCPI11_4(%rip), %xmm0
	addsd	.LCPI11_5(%rip), %xmm0
	movapd	%xmm3, 48(%rsp)         # 16-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI11_4(%rip), %xmm0
	addsd	.LCPI11_5(%rip), %xmm0
	callq	floor
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	48(%rsp), %xmm3         # 16-byte Reload
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %r13d
	jmp	.LBB11_16
.LBB11_8:                               # %if.then.i
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	je	.LBB11_43
# BB#9:                                 # %if.end.i.21
	movapd	%xmm1, 64(%rsp)         # 16-byte Spill
	movl	$2147227647, %r13d      # imm = 0x7FFC17FF
	ucomisd	.LCPI11_2(%rip), %xmm0
	movl	$2147227647, %r12d      # imm = 0x7FFC17FF
	ja	.LBB11_12
# BB#10:                                # %cond.false.i.i
	movl	$-2147227647, %r12d     # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI11_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB11_12
# BB#11:                                # %cond.false.3.i.i
	mulsd	.LCPI11_4(%rip), %xmm0
	cvttsd2si	%xmm0, %r12d
.LBB11_12:                              # %cond.end.4.i.i
	ucomisd	.LCPI11_2(%rip), %xmm5
	ja	.LBB11_16
# BB#13:                                # %cond.false.10.i.i
	movl	$-2147227647, %r13d     # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI11_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm5, %xmm0
	ja	.LBB11_16
# BB#14:                                # %cond.false.14.i.i
	mulsd	.LCPI11_4(%rip), %xmm5
	cvttsd2si	%xmm5, %r13d
.LBB11_16:                              # %if.end.i
	ucomisd	%xmm3, %xmm2
	jbe	.LBB11_20
# BB#17:                                # %if.end.i
	ucomisd	.LCPI11_1(%rip), %xmm4
	jb	.LBB11_20
# BB#18:                                # %if.end.i
	ucomisd	%xmm4, %xmm2
	jbe	.LBB11_20
# BB#19:                                # %if.end.i
	ucomisd	.LCPI11_1(%rip), %xmm3
	jb	.LBB11_20
# BB#27:                                # %if.else.i.62
	mulsd	.LCPI11_4(%rip), %xmm4
	addsd	.LCPI11_5(%rip), %xmm4
	movapd	%xmm4, %xmm0
	movapd	%xmm3, 48(%rsp)         # 16-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	mulsd	.LCPI11_4(%rip), %xmm0
	addsd	.LCPI11_5(%rip), %xmm0
	callq	floor
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %r8d
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	jmp	.LBB11_28
.LBB11_20:                              # %if.then.i.32
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	movapd	64(%rsp), %xmm1         # 16-byte Reload
	je	.LBB11_43
# BB#21:                                # %if.end.i.34
	movl	$2147227647, %r8d       # imm = 0x7FFC17FF
	ucomisd	.LCPI11_2(%rip), %xmm4
	movl	$2147227647, %ebp       # imm = 0x7FFC17FF
	ja	.LBB11_24
# BB#22:                                # %cond.false.i.i.36
	movl	$-2147227647, %ebp      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI11_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	ja	.LBB11_24
# BB#23:                                # %cond.false.3.i.i.39
	mulsd	.LCPI11_4(%rip), %xmm4
	cvttsd2si	%xmm4, %ebp
.LBB11_24:                              # %cond.end.4.i.i.43
	ucomisd	.LCPI11_2(%rip), %xmm3
	ja	.LBB11_28
# BB#25:                                # %cond.false.10.i.i.45
	movl	$-2147227647, %r8d      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI11_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	ja	.LBB11_28
# BB#26:                                # %cond.false.14.i.i.48
	mulsd	.LCPI11_4(%rip), %xmm3
	cvttsd2si	%xmm3, %r8d
.LBB11_28:                              # %if.end.5.i
	movapd	%xmm1, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	ucomisd	%xmm3, %xmm2
	jbe	.LBB11_32
# BB#29:                                # %if.end.5.i
	ucomisd	.LCPI11_1(%rip), %xmm1
	jb	.LBB11_32
# BB#30:                                # %if.end.5.i
	ucomisd	%xmm1, %xmm2
	jbe	.LBB11_32
# BB#31:                                # %if.end.5.i
	ucomisd	.LCPI11_1(%rip), %xmm3
	jb	.LBB11_32
# BB#39:                                # %if.else.i.103
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	.LCPI11_4(%rip), %xmm0
	addsd	.LCPI11_5(%rip), %xmm0
	movl	%r8d, %ebp
	movapd	%xmm3, 32(%rsp)         # 16-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r14d
	movsd	.LCPI11_4(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	32(%rsp), %xmm0         # 16-byte Folded Reload
	addsd	.LCPI11_5(%rip), %xmm0
	callq	floor
	movl	%ebp, %r8d
.LBB11_40:                              # %if.end.10.i
	cvttsd2si	%xmm0, %eax
	jmp	.LBB11_41
.LBB11_32:                              # %if.then.i.73
	movl	$-13, %eax
	cmpl	$0, 208(%rbx)
	je	.LBB11_43
# BB#33:                                # %if.end.i.75
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movl	$2147227647, %eax       # imm = 0x7FFC17FF
	ucomisd	.LCPI11_2(%rip), %xmm1
	movl	$2147227647, %r14d      # imm = 0x7FFC17FF
	ja	.LBB11_36
# BB#34:                                # %cond.false.i.i.77
	movl	$-2147227647, %r14d     # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI11_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB11_36
# BB#35:                                # %cond.false.3.i.i.80
	movsd	.LCPI11_4(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r14d
.LBB11_36:                              # %cond.end.4.i.i.84
	ucomisd	.LCPI11_2(%rip), %xmm3
	ja	.LBB11_41
# BB#37:                                # %cond.false.10.i.i.86
	movl	$-2147227647, %eax      # imm = 0xFFFFFFFF8003E801
	movsd	.LCPI11_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jbe	.LBB11_38
.LBB11_41:                              # %if.end.10.i
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	movl	48(%rsp), %ecx          # 4-byte Reload
	movl	%r14d, %r9d
	callq	gx_path_add_curve_notes
	testl	%eax, %eax
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	js	.LBB11_43
# BB#42:                                # %if.end.18.i
	movupd	%xmm0, 176(%rbx)
	xorl	%eax, %eax
.LBB11_43:                              # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_38:                              # %cond.false.14.i.i.89
	movsd	.LCPI11_4(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm0
	jmp	.LBB11_40
.Lfunc_end11:
	.size	gs_rcurveto, .Lfunc_end11-gs_rcurveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gx_curr_bbox
	.align	16, 0x90
	.type	gx_curr_bbox,@function
gx_curr_bbox:                           # @gx_curr_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 64
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	24(%rsp), %rsi
	callq	gx_effective_clip_path
	testl	%eax, %eax
	js	.LBB12_18
# BB#1:                                 # %if.end
	cmpl	$2, %ebp
	je	.LBB12_16
# BB#2:                                 # %if.end.24
	movq	1680(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gx_path_bbox
	testl	%eax, %eax
	js	.LBB12_18
# BB#3:                                 # %if.end.29
	cmpl	$1, %ebp
	jne	.LBB12_4
# BB#5:                                 # %if.then.32
	movq	1680(%rbx), %rsi
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	callq	gx_stroke_path_expansion
	testl	%eax, %eax
	js	.LBB12_16
# BB#6:                                 # %if.then.37
	movl	(%rsp), %ecx
	movl	8(%rsp), %eax
	subl	%ecx, %eax
	movl	%eax, 8(%rsp)
	movl	4(%rsp), %edx
	subl	%edx, 12(%rsp)
	addl	%ecx, 16(%rsp)
	addl	%edx, 20(%rsp)
	jmp	.LBB12_7
.LBB12_16:                              # %if.else.135
	movq	24(%rsp), %rax
	cvtsi2sdl	252(%rax), %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	256(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	260(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	264(%rax), %xmm0
	jmp	.LBB12_17
.LBB12_4:                               # %if.end.29.do.body_crit_edge
	movl	8(%rsp), %eax
.LBB12_7:                               # %do.body
	movq	24(%rsp), %rdx
	movl	252(%rdx), %ecx
	cmpl	%eax, %ecx
	jle	.LBB12_9
# BB#8:                                 # %if.then.62
	movl	%ecx, 8(%rsp)
	movl	%ecx, %eax
.LBB12_9:                               # %if.end.68
	movl	260(%rdx), %esi
	movl	16(%rsp), %ecx
	cmpl	%ecx, %esi
	jge	.LBB12_11
# BB#10:                                # %if.then.76
	movl	%esi, 16(%rsp)
	movl	%esi, %ecx
.LBB12_11:                              # %if.end.82
	movl	256(%rdx), %edi
	movl	12(%rsp), %esi
	cmpl	%esi, %edi
	jle	.LBB12_13
# BB#12:                                # %if.then.90
	movl	%edi, 12(%rsp)
	movl	%edi, %esi
.LBB12_13:                              # %if.end.96
	movl	264(%rdx), %edi
	movl	20(%rsp), %edx
	cmpl	%edx, %edi
	jge	.LBB12_15
# BB#14:                                # %if.then.104
	movl	%edi, 20(%rsp)
	movl	%edi, %edx
.LBB12_15:                              # %do.end
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
.LBB12_17:                              # %cleanup
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%r14)
	xorl	%eax, %eax
.LBB12_18:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_curr_bbox, .Lfunc_end12-gx_curr_bbox
	.cfi_endproc

	.globl	gx_effective_clip_path
	.align	16, 0x90
	.type	gx_effective_clip_path,@function
gx_effective_clip_path:                 # @gx_effective_clip_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 48
	subq	$464, %rsp              # imm = 0x1D0
.Ltmp72:
	.cfi_def_cfa_offset 512
.Ltmp73:
	.cfi_offset %rbx, -48
.Ltmp74:
	.cfi_offset %r12, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1704(%rbx), %rax
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB13_3
# BB#1:                                 # %lor.lhs.false
	xorl	%r12d, %r12d
	cmpl	$0, 232(%rax)
	je	.LBB13_3
# BB#2:                                 # %cond.false
	movq	296(%rax), %r12
.LBB13_3:                               # %cond.end
	movq	1872(%rbx), %rdi
	callq	gs_device_is_memory
	testl	%eax, %eax
	je	.LBB13_6
# BB#4:                                 # %if.then
	movq	1688(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB13_30
.LBB13_6:                               # %if.end
	movq	1688(%rbx), %r15
	movq	1712(%rbx), %rax
	cmpq	296(%r15), %rax
	jne	.LBB13_9
# BB#7:                                 # %land.lhs.true
	cmpq	%r12, 1720(%rbx)
	jne	.LBB13_9
# BB#8:                                 # %if.then.8
	movq	1728(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB13_30
.LBB13_9:                               # %if.end.9
	testq	%r12, %r12
	je	.LBB13_10
# BB#13:                                # %if.else
	leaq	448(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_cpath_inner_box
	movq	1704(%rbx), %rdi
	leaq	432(%rsp), %rsi
	callq	gx_cpath_outer_box
	movl	444(%rsp), %eax
	cmpl	460(%rsp), %eax
	jg	.LBB13_20
# BB#14:                                # %land.lhs.true.26
	movl	440(%rsp), %eax
	cmpl	456(%rsp), %eax
	jg	.LBB13_20
# BB#15:                                # %land.lhs.true.31
	movl	436(%rsp), %eax
	cmpl	452(%rsp), %eax
	jl	.LBB13_20
# BB#16:                                # %land.lhs.true.36
	movl	432(%rsp), %eax
	cmpl	448(%rsp), %eax
	jge	.LBB13_17
.LBB13_20:                              # %if.else.51
	cmpl	$0, 1736(%rbx)
	je	.LBB13_21
# BB#22:                                # %if.then.55
	movq	8(%rbx), %rsi
	xorl	%edi, %edi
	movl	$.L.str, %edx
	callq	gx_cpath_alloc_shared
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	jne	.LBB13_23
	jmp	.LBB13_31
.LBB13_10:                              # %if.then.11
	cmpl	$0, 1736(%rbx)
	jne	.LBB13_12
# BB#11:                                # %if.then.13
	movq	1728(%rbx), %rdi
	movl	$.L.str, %esi
	callq	gx_cpath_free
	movq	1688(%rbx), %r15
	jmp	.LBB13_12
.LBB13_21:                              # %if.else.51.if.end.60_crit_edge
	movq	1728(%rbx), %r15
.LBB13_23:                              # %if.end.60
	movq	8(%rbx), %rdx
	leaq	128(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_cpath_init_local_shared
	movq	1688(%rbx), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_assign_preserve
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_31
# BB#24:                                # %if.end.67
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	1704(%rbx), %rdi
	movq	%rbp, %rsi
	callq	gx_cpath_to_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_27
# BB#25:                                # %lor.lhs.false.73
	leaq	128(%rsp), %rsi
	leaq	(%rsp), %rdx
	movl	$-1, %ecx
	movq	%rbx, %rdi
	callq	gx_cpath_clip
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_27
# BB#26:                                # %lor.lhs.false.76
	leaq	128(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_cpath_assign_free
	movl	%eax, %ebp
.LBB13_27:                              # %if.end.80
	leaq	(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_path_free
	leaq	128(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_cpath_free
	testl	%ebp, %ebp
	js	.LBB13_31
# BB#28:                                # %cleanup
	movq	%r15, 1728(%rbx)
	movl	$0, 1736(%rbx)
	jmp	.LBB13_29
.LBB13_17:                              # %if.then.42
	cmpl	$0, 1736(%rbx)
	jne	.LBB13_19
# BB#18:                                # %if.then.45
	movq	1728(%rbx), %rdi
	movl	$.L.str, %esi
	callq	gx_cpath_free
.LBB13_19:                              # %if.end.47
	movq	1704(%rbx), %r15
.LBB13_12:                              # %if.end.15
	movq	%r15, 1728(%rbx)
	movl	$1, 1736(%rbx)
.LBB13_29:                              # %if.end.94
	movq	296(%r15), %rax
	movq	%rax, 1712(%rbx)
	movq	%r12, 1720(%rbx)
	movq	%r15, (%r14)
.LBB13_30:                              # %cleanup.100
	xorl	%ebp, %ebp
.LBB13_31:                              # %cleanup.100
	movl	%ebp, %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gx_effective_clip_path, .Lfunc_end13-gx_effective_clip_path
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_clippath
	.align	16, 0x90
	.type	gs_clippath,@function
gs_clippath:                            # @gs_clippath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 160
.Ltmp81:
	.cfi_offset %rbx, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1680(%rbx), %rax
	movq	40(%rax), %rdx
	leaq	8(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	1688(%rbx), %rdi
	movq	%rbp, %rsi
	callq	gx_cpath_to_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_2
# BB#1:                                 # %if.end
	movq	1680(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gx_path_assign_free
	movl	%eax, %ebp
	movq	1680(%rbx), %rax
	cvtsi2sdl	112(%rax), %xmm0
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 176(%rbx)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	116(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 184(%rbx)
	movl	$1, 168(%rbx)
	testl	%ebp, %ebp
	jns	.LBB14_3
.LBB14_2:                               # %if.then.14
	leaq	8(%rsp), %rdi
	movl	$.L.str.1, %esi
	callq	gx_path_free
.LBB14_3:                               # %if.end.15
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_clippath, .Lfunc_end14-gs_clippath
	.cfi_endproc

	.globl	gs_initclip
	.align	16, 0x90
	.type	gs_initclip,@function
gs_initclip:                            # @gs_initclip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 32
.Ltmp85:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %rsi
	callq	gx_default_clip_box
	testl	%eax, %eax
	js	.LBB15_3
# BB#1:                                 # %if.end
	movq	1688(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gx_cpath_from_rectangle
	testl	%eax, %eax
	js	.LBB15_3
# BB#2:                                 # %if.end.i
	movq	1688(%rbx), %rax
	movl	$-1, 232(%rax)
	xorl	%eax, %eax
.LBB15_3:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end15:
	.size	gs_initclip, .Lfunc_end15-gs_initclip
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.quad	4643211215818981376     # double 2.560000e+02
	.quad	4643211215818981376     # double 2.560000e+02
.LCPI16_1:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI16_2:
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.text
	.globl	gx_default_clip_box
	.align	16, 0x90
	.type	gx_default_clip_box,@function
gx_default_clip_box:                    # @gx_default_clip_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$96, %rsp
.Ltmp89:
	.cfi_offset %rbx, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gs_currentdevice
	movq	%rax, %rbx
	cmpl	$0, 880(%rbx)
	je	.LBB16_2
# BB#1:                                 # %if.then
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_defaultmatrix
	leaq	864(%rbx), %rax
	movq	%rbx, %rcx
	addq	$868, %rcx              # imm = 0x364
	movq	872(%rbx), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1152(%rbx)
	movss	900(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	884(%rbx), %xmm0
	divss	892(%rbx), %xmm0
	addss	24(%rsp), %xmm0
	movss	%xmm0, 24(%rsp)
	movss	904(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	888(%rbx), %xmm0
	divss	896(%rbx), %xmm0
	addss	28(%rsp), %xmm0
	movss	%xmm0, 28(%rsp)
	leaq	908(%rbx), %rax
	movq	%rbx, %rcx
	addq	$912, %rcx              # imm = 0x390
	movq	856(%rbx), %xmm0        # xmm0 = mem[0],zero
	movq	916(%rbx), %xmm1        # xmm1 = mem[0],zero
	subps	%xmm1, %xmm0
.LBB16_3:                               # %if.end
	cvtps2pd	%xmm0, %xmm0
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	cvtps2pd	%xmm2, %xmm1
	movdqa	%xmm1, 32(%rsp)
	movdqa	%xmm0, 48(%rsp)
	leaq	8(%rsp), %rsi
	leaq	32(%rsp), %rdi
	movq	%rdi, %rdx
	callq	gs_bbox_transform
	testl	%eax, %eax
	js	.LBB16_5
# BB#4:                                 # %if.end.53
	movapd	.LCPI16_0(%rip), %xmm0  # xmm0 = [2.560000e+02,2.560000e+02]
	movapd	32(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	48(%rsp), %xmm0
	cvttsd2si	%xmm0, %rax
	movd	%rax, %xmm2
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	cvttsd2si	%xmm0, %rax
	movd	%rax, %xmm0
	punpcklqdq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	pshufd	$232, %xmm2, %xmm0      # xmm0 = xmm2[0,2,2,3]
	cvttsd2si	%xmm1, %rax
	movd	%rax, %xmm2
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	cvttsd2si	%xmm1, %rax
	movd	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	pshufd	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3]
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	paddd	.LCPI16_1(%rip), %xmm1
	pand	.LCPI16_2(%rip), %xmm1
	movdqu	%xmm1, (%r14)
	xorl	%eax, %eax
.LBB16_5:                               # %cleanup
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gx_default_clip_box, .Lfunc_end16-gx_default_clip_box
	.cfi_endproc

	.globl	gx_clip_to_rectangle
	.align	16, 0x90
	.type	gx_clip_to_rectangle,@function
gx_clip_to_rectangle:                   # @gx_clip_to_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1688(%rbx), %rdi
	callq	gx_cpath_from_rectangle
	testl	%eax, %eax
	js	.LBB17_2
# BB#1:                                 # %if.end
	movq	1688(%rbx), %rax
	movl	$-1, 232(%rax)
	xorl	%eax, %eax
.LBB17_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end17:
	.size	gx_clip_to_rectangle, .Lfunc_end17-gx_clip_to_rectangle
	.cfi_endproc

	.globl	gs_clip
	.align	16, 0x90
	.type	gs_clip,@function
gs_clip:                                # @gs_clip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1680(%rbx), %rdx
	movq	1688(%rbx), %rsi
	movl	$-1, %ecx
	callq	gx_cpath_clip
	testl	%eax, %eax
	js	.LBB18_2
# BB#1:                                 # %if.end.i
	movq	1688(%rbx), %rax
	movl	$-1, 232(%rax)
	xorl	%eax, %eax
.LBB18_2:                               # %common_clip.exit
	popq	%rbx
	retq
.Lfunc_end18:
	.size	gs_clip, .Lfunc_end18-gs_clip
	.cfi_endproc

	.globl	gs_eoclip
	.align	16, 0x90
	.type	gs_eoclip,@function
gs_eoclip:                              # @gs_eoclip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1680(%rbx), %rdx
	movq	1688(%rbx), %rsi
	movl	$1, %ecx
	callq	gx_cpath_clip
	testl	%eax, %eax
	js	.LBB19_2
# BB#1:                                 # %if.end.i
	movq	1688(%rbx), %rax
	movl	$1, 232(%rax)
	xorl	%eax, %eax
.LBB19_2:                               # %common_clip.exit
	popq	%rbx
	retq
.Lfunc_end19:
	.size	gs_eoclip, .Lfunc_end19-gs_eoclip
	.cfi_endproc

	.globl	gx_clip_to_path
	.align	16, 0x90
	.type	gx_clip_to_path,@function
gx_clip_to_path:                        # @gx_clip_to_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp99:
	.cfi_def_cfa_offset 32
.Ltmp100:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1680(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gx_path_bbox
	testl	%eax, %eax
	js	.LBB20_5
# BB#1:                                 # %lor.lhs.false
	movq	1688(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gx_cpath_from_rectangle
	testl	%eax, %eax
	js	.LBB20_5
# BB#2:                                 # %lor.lhs.false.3
	movq	1688(%rbx), %rsi
	movl	$-1, 232(%rsi)
	movq	1680(%rbx), %rdx
	movl	$-1, %ecx
	movq	%rbx, %rdi
	callq	gx_cpath_clip
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB20_4
# BB#3:                                 # %if.end.i.i
	movq	1688(%rbx), %rax
	movl	$-1, 232(%rax)
	xorl	%ecx, %ecx
.LBB20_4:                               # %gs_clip.exit
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB20_5:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end20:
	.size	gx_clip_to_path, .Lfunc_end20-gx_clip_to_path
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_effective_clip_path"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_clippath"
	.size	.L.str.1, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
