	.text
	.file	"zpath.bc"
	.globl	zmoveto
	.align	16, 0x90
	.type	zmoveto,@function
zmoveto:                                # @zmoveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB0_3
# BB#1:                                 # %lor.lhs.false.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	callq	gs_moveto
	testl	%eax, %eax
	js	.LBB0_3
# BB#2:                                 # %if.end.i
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
.LBB0_3:                                # %common_to.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zmoveto, .Lfunc_end0-zmoveto
	.cfi_endproc

	.globl	zrmoveto
	.align	16, 0x90
	.type	zrmoveto,@function
zrmoveto:                               # @zrmoveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB1_3
# BB#1:                                 # %lor.lhs.false.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	callq	gs_rmoveto
	testl	%eax, %eax
	js	.LBB1_3
# BB#2:                                 # %if.end.i
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
.LBB1_3:                                # %common_to.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zrmoveto, .Lfunc_end1-zrmoveto
	.cfi_endproc

	.globl	zlineto
	.align	16, 0x90
	.type	zlineto,@function
zlineto:                                # @zlineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB2_3
# BB#1:                                 # %lor.lhs.false.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	callq	gs_lineto
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.end.i
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
.LBB2_3:                                # %common_to.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zlineto, .Lfunc_end2-zlineto
	.cfi_endproc

	.globl	zrlineto
	.align	16, 0x90
	.type	zrlineto,@function
zrlineto:                               # @zrlineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 32
.Ltmp11:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB3_3
# BB#1:                                 # %lor.lhs.false.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	callq	gs_rlineto
	testl	%eax, %eax
	js	.LBB3_3
# BB#2:                                 # %if.end.i
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
.LBB3_3:                                # %common_to.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zrlineto, .Lfunc_end3-zrlineto
	.cfi_endproc

	.globl	zcurveto
	.align	16, 0x90
	.type	zcurveto,@function
zcurveto:                               # @zcurveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 64
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$6, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB4_3
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm3         # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # xmm4 = mem[0],zero
	movsd	40(%rsp), %xmm5         # xmm5 = mem[0],zero
	callq	gs_curveto
	testl	%eax, %eax
	js	.LBB4_3
# BB#2:                                 # %if.then.8.i
	addq	$-96, 624(%rbx)
.LBB4_3:                                # %common_curve.exit
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zcurveto, .Lfunc_end4-zcurveto
	.cfi_endproc

	.globl	zrcurveto
	.align	16, 0x90
	.type	zrcurveto,@function
zrcurveto:                              # @zrcurveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$6, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB5_3
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm3         # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # xmm4 = mem[0],zero
	movsd	40(%rsp), %xmm5         # xmm5 = mem[0],zero
	callq	gs_rcurveto
	testl	%eax, %eax
	js	.LBB5_3
# BB#2:                                 # %if.then.8.i
	addq	$-96, 624(%rbx)
.LBB5_3:                                # %common_curve.exit
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zrcurveto, .Lfunc_end5-zrcurveto
	.cfi_endproc

	.globl	zclosepath
	.align	16, 0x90
	.type	zclosepath,@function
zclosepath:                             # @zclosepath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_closepath            # TAILCALL
.Lfunc_end6:
	.size	zclosepath, .Lfunc_end6-zclosepath
	.cfi_endproc

	.align	16, 0x90
	.type	zclip,@function
zclip:                                  # @zclip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_clip                 # TAILCALL
.Lfunc_end7:
	.size	zclip, .Lfunc_end7-zclip
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentpoint,@function
zcurrentpoint:                          # @zcurrentpoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 48
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_currentpoint
	testl	%eax, %eax
	js	.LBB8_4
# BB#1:                                 # %do.body
	leaq	32(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB8_3
# BB#2:                                 # %if.then.4
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movq	%rax, 624(%rbx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r14)
	movw	$4096, 16(%r14)         # imm = 0x1000
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%r14)
	movw	$4096, 32(%r14)         # imm = 0x1000
	xorl	%eax, %eax
.LBB8_4:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	zcurrentpoint, .Lfunc_end8-zcurrentpoint
	.cfi_endproc

	.align	16, 0x90
	.type	zeoclip,@function
zeoclip:                                # @zeoclip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_eoclip               # TAILCALL
.Lfunc_end9:
	.size	zeoclip, .Lfunc_end9-zeoclip
	.cfi_endproc

	.align	16, 0x90
	.type	zinitclip,@function
zinitclip:                              # @zinitclip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_initclip             # TAILCALL
.Lfunc_end10:
	.size	zinitclip, .Lfunc_end10-zinitclip
	.cfi_endproc

	.align	16, 0x90
	.type	znewpath,@function
znewpath:                               # @znewpath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_newpath              # TAILCALL
.Lfunc_end11:
	.size	znewpath, .Lfunc_end11-znewpath
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0clip"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0closepath"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0currentpoint"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"6curveto"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0eoclip"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0initclip"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2lineto"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2moveto"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0newpath"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"6rcurveto"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"2rlineto"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"2rmoveto"
	.size	.L.str.11, 9

	.type	zpath_op_defs,@object   # @zpath_op_defs
	.section	.rodata,"a",@progbits
	.globl	zpath_op_defs
	.align	16
zpath_op_defs:
	.quad	.L.str
	.quad	zclip
	.quad	.L.str.1
	.quad	zclosepath
	.quad	.L.str.2
	.quad	zcurrentpoint
	.quad	.L.str.3
	.quad	zcurveto
	.quad	.L.str.4
	.quad	zeoclip
	.quad	.L.str.5
	.quad	zinitclip
	.quad	.L.str.6
	.quad	zlineto
	.quad	.L.str.7
	.quad	zmoveto
	.quad	.L.str.8
	.quad	znewpath
	.quad	.L.str.9
	.quad	zrcurveto
	.quad	.L.str.10
	.quad	zrlineto
	.quad	.L.str.11
	.quad	zrmoveto
	.zero	16
	.size	zpath_op_defs, 208


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
