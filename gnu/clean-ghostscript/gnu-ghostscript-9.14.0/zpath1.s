	.text
	.file	"zpath1.bc"
	.globl	zarc
	.align	16, 0x90
	.type	zarc,@function
zarc:                                   # @zarc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 64
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$5, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB0_3
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm3         # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # xmm4 = mem[0],zero
	callq	gs_arc
	testl	%eax, %eax
	js	.LBB0_3
# BB#2:                                 # %if.then.7.i
	addq	$-80, 624(%rbx)
.LBB0_3:                                # %common_arc.exit
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zarc, .Lfunc_end0-zarc
	.cfi_endproc

	.globl	zarcn
	.align	16, 0x90
	.type	zarcn,@function
zarcn:                                  # @zarcn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$5, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB1_3
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm3         # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # xmm4 = mem[0],zero
	callq	gs_arcn
	testl	%eax, %eax
	js	.LBB1_3
# BB#2:                                 # %if.then.7.i
	addq	$-80, 624(%rbx)
.LBB1_3:                                # %common_arc.exit
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zarcn, .Lfunc_end1-zarcn
	.cfi_endproc

	.globl	zarct
	.align	16, 0x90
	.type	zarct,@function
zarct:                                  # @zarct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 64
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$5, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB2_3
# BB#1:                                 # %common_arct.exit
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rsp), %xmm3         # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	callq	gs_arcto
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.end
	addq	$-80, 624(%rbx)
	xorl	%eax, %eax
.LBB2_3:                                # %cleanup
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zarct, .Lfunc_end2-zarct
	.cfi_endproc

	.align	16, 0x90
	.type	zarcto,@function
zarcto:                                 # @zarcto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 80
.Ltmp12:
	.cfi_offset %rbx, -24
.Ltmp13:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	16(%rsp), %rdx
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB3_3
# BB#1:                                 # %common_arct.exit
	movq	(%r14), %rdi
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	40(%rsp), %xmm3         # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm4         # xmm4 = mem[0],zero
	leaq	(%rsp), %rsi
	callq	gs_arcto
	testl	%eax, %eax
	js	.LBB3_3
# BB#2:                                 # %if.end
	movl	(%rsp), %eax
	movl	%eax, -56(%rbx)
	movw	$4096, -64(%rbx)        # imm = 0x1000
	movl	4(%rsp), %eax
	movl	%eax, -40(%rbx)
	movw	$4096, -48(%rbx)        # imm = 0x1000
	movl	8(%rsp), %eax
	movl	%eax, -24(%rbx)
	movw	$4096, -32(%rbx)        # imm = 0x1000
	movl	12(%rsp), %eax
	movl	%eax, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB3_3:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zarcto, .Lfunc_end3-zarcto
	.cfi_endproc

	.align	16, 0x90
	.type	zclippath,@function
zclippath:                              # @zclippath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_clippath             # TAILCALL
.Lfunc_end4:
	.size	zclippath, .Lfunc_end4-zclippath
	.cfi_endproc

	.align	16, 0x90
	.type	zdashpath,@function
zdashpath:                              # @zdashpath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_dashpath             # TAILCALL
.Lfunc_end5:
	.size	zdashpath, .Lfunc_end5-zdashpath
	.cfi_endproc

	.align	16, 0x90
	.type	zflattenpath,@function
zflattenpath:                           # @zflattenpath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_flattenpath          # TAILCALL
.Lfunc_end6:
	.size	zflattenpath, .Lfunc_end6-zflattenpath
	.cfi_endproc

	.align	16, 0x90
	.type	zpathforall,@function
zpathforall:                            # @zpathforall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 48
.Ltmp19:
	.cfi_offset %rbx, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	-48(%rdi), %r14
	movzwl	-48(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB7_1
# BB#2:                                 # %do.body.3
	movzwl	-32(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB7_3
# BB#4:                                 # %do.body.17
	movzwl	-16(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB7_5
# BB#7:                                 # %do.body.31
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB7_6
# BB#8:                                 # %do.end.42
	movq	536(%rbx), %rax
	addq	$-128, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB7_10
# BB#9:                                 # %if.then.49
	leaq	520(%rbx), %rdi
	movl	$8, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_14
.LBB7_10:                               # %if.end.57
	movq	8(%rbx), %rdi
	movl	$.L.str.13, %esi
	callq	gs_path_enum_alloc
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB7_14
# BB#11:                                # %if.end.62
	movq	(%rbx), %rdx
	movq	8(%rbx), %rdi
	movl	$1, %ecx
	movq	%r15, %rsi
	callq	gs_path_enum_copy_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_12
# BB#13:                                # %if.end.73
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$path_cleanup, 24(%rax)
	movq	520(%rbx), %rdi
	movw	$3712, (%rdi)           # imm = 0xE80
	movl	$2, 4(%rdi)
	addq	$16, %rdi
	movl	$64, %edx
	movq	%r14, %rsi
	callq	memcpy
	movq	520(%rbx), %rax
	leaq	80(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	%r15, 88(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%rbx), %eax
	movq	520(%rbx), %rcx
	movw	%ax, (%rcx)
	leaq	16(%rcx), %rax
	movq	%rax, 520(%rbx)
	movq	$path_continue, 24(%rcx)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	addq	$-64, 624(%rbx)
	movl	$5, %ebp
	jmp	.LBB7_14
.LBB7_1:                                # %if.then
	movq	%r14, %rdi
	jmp	.LBB7_6
.LBB7_3:                                # %if.then.11
	addq	$-32, %rdi
	jmp	.LBB7_6
.LBB7_5:                                # %if.then.25
	addq	$-16, %rdi
.LBB7_6:                                # %if.then.38
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_proc_failed       # TAILCALL
.LBB7_12:                               # %if.then.68
	movq	8(%rbx), %rdi
	movl	$.L.str.14, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB7_14:                               # %cleanup.134
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zpathforall, .Lfunc_end7-zpathforall
	.cfi_endproc

	.align	16, 0x90
	.type	zreversepath,@function
zreversepath:                           # @zreversepath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_reversepath          # TAILCALL
.Lfunc_end8:
	.size	zreversepath, .Lfunc_end8-zreversepath
	.cfi_endproc

	.align	16, 0x90
	.type	zstrokepath,@function
zstrokepath:                            # @zstrokepath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_strokepath           # TAILCALL
.Lfunc_end9:
	.size	zstrokepath, .Lfunc_end9-zstrokepath
	.cfi_endproc

	.align	16, 0x90
	.type	z1pathbbox,@function
z1pathbbox:                             # @z1pathbbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 64
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB10_1
# BB#2:                                 # %if.end
	movq	(%r14), %rdi
	movzwl	8(%rbx), %edx
	leaq	8(%rsp), %rsi
	callq	gs_upathbbox
	testl	%eax, %eax
	js	.LBB10_6
# BB#3:                                 # %do.body
	leaq	48(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB10_5
# BB#4:                                 # %if.then.12
	movl	$3, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB10_6
.LBB10_1:                               # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movq	%rax, 624(%r14)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rbx)
	movw	$4096, 32(%rbx)         # imm = 0x1000
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%rbx)
	movw	$4096, 48(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
.LBB10_6:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	z1pathbbox, .Lfunc_end10-z1pathbbox
	.cfi_endproc

	.align	16, 0x90
	.type	zpathbbox,@function
zpathbbox:                              # @zpathbbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB11_2:                               # %if.else
	movq	%rcx, 624(%rbx)
	movw	$0, 24(%rax)
	movw	$256, 16(%rax)          # imm = 0x100
	movq	%rbx, %rdi
	callq	z1pathbbox
	testl	%eax, %eax
	jns	.LBB11_4
# BB#3:                                 # %if.then.9
	addq	$-16, 624(%rbx)
.LBB11_4:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end11:
	.size	zpathbbox, .Lfunc_end11-zpathbbox
	.cfi_endproc

	.align	16, 0x90
	.type	path_continue,@function
path_continue:                          # @path_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	640(%rbx), %rax
	subq	624(%rbx), %rax
	cmpq	$95, %rax
	jg	.LBB12_2
# BB#1:                                 # %if.then
	movl	$6, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB12_11
.LBB12_2:                               # %if.end
	movq	520(%rbx), %rax
	movq	8(%rax), %rdi
	leaq	(%rsp), %rsi
	callq	gs_path_enum_next
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB12_11
# BB#3:                                 # %if.end
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_4:                               # %sw.bb
	movq	520(%rbx), %rax
	leaq	-96(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	8(%rax), %r14
	movq	%r14, %rdi
	callq	gs_path_enum_cleanup
	movq	8(%rbx), %rdi
	movl	$.L.str.14, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	$14, %eax
	jmp	.LBB12_11
.LBB12_5:                               # %sw.bb.11
	movq	520(%rbx), %rax
	movups	-64(%rax), %xmm0
	jmp	.LBB12_6
.LBB12_7:                               # %sw.bb.20
	movq	520(%rbx), %rax
	movups	-48(%rax), %xmm0
.LBB12_6:                               # %sw.epilog
	movups	%xmm0, 32(%rax)
	movq	624(%rbx), %rax
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rax)
	movw	$4096, 16(%rax)         # imm = 0x1000
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rax)
	movw	$4096, 32(%rax)         # imm = 0x1000
	leaq	32(%rax), %rax
	movq	%rax, 624(%rbx)
	jmp	.LBB12_10
.LBB12_8:                               # %sw.bb.30
	movq	520(%rbx), %rax
	movups	-32(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	movq	624(%rbx), %rax
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rax)
	movw	$4096, 16(%rax)         # imm = 0x1000
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rax)
	movw	$4096, 32(%rax)         # imm = 0x1000
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%rax)
	movw	$4096, 48(%rax)         # imm = 0x1000
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 72(%rax)
	movw	$4096, 64(%rax)         # imm = 0x1000
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 88(%rax)
	movw	$4096, 80(%rax)         # imm = 0x1000
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 104(%rax)
	movw	$4096, 96(%rax)         # imm = 0x1000
	leaq	96(%rax), %rax
	movq	%rax, 624(%rbx)
	jmp	.LBB12_10
.LBB12_9:                               # %sw.bb.40
	movq	520(%rbx), %rax
	movups	-16(%rax), %xmm0
	movups	%xmm0, 32(%rax)
.LBB12_10:                              # %sw.epilog
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$path_continue, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	addq	$16, %rax
	movq	%rax, 520(%rbx)
	movl	$5, %eax
.LBB12_11:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	path_continue, .Lfunc_end12-path_continue
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_4
	.quad	.LBB12_5
	.quad	.LBB12_7
	.quad	.LBB12_8
	.quad	.LBB12_9

	.text
	.align	16, 0x90
	.type	path_cleanup,@function
path_cleanup:                           # @path_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -24
.Ltmp39:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	104(%rax), %r14
	movq	%r14, %rdi
	callq	gs_path_enum_cleanup
	movq	8(%rbx), %rdi
	movl	$.L.str.14, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	path_cleanup, .Lfunc_end13-path_cleanup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"5arc"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"5arcn"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"5arct"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"5arcto"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0clippath"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0.dashpath"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0flattenpath"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"4pathforall"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0reversepath"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0strokepath"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1.pathbbox"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0pathbbox"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0%path_continue"
	.size	.L.str.12, 16

	.type	zpath1_op_defs,@object  # @zpath1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zpath1_op_defs
	.align	16
zpath1_op_defs:
	.quad	.L.str
	.quad	zarc
	.quad	.L.str.1
	.quad	zarcn
	.quad	.L.str.2
	.quad	zarct
	.quad	.L.str.3
	.quad	zarcto
	.quad	.L.str.4
	.quad	zclippath
	.quad	.L.str.5
	.quad	zdashpath
	.quad	.L.str.6
	.quad	zflattenpath
	.quad	.L.str.7
	.quad	zpathforall
	.quad	.L.str.8
	.quad	zreversepath
	.quad	.L.str.9
	.quad	zstrokepath
	.quad	.L.str.10
	.quad	z1pathbbox
	.quad	.L.str.11
	.quad	zpathbbox
	.quad	.L.str.12
	.quad	path_continue
	.zero	16
	.size	zpath1_op_defs, 224

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"pathforall"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"path_cleanup"
	.size	.L.str.14, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
