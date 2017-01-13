	.text
	.file	"gslibctx.bc"
	.globl	gs_lib_ctx_get_non_gc_memory_t
	.align	16, 0x90
	.type	gs_lib_ctx_get_non_gc_memory_t,@function
gs_lib_ctx_get_non_gc_memory_t:         # @gs_lib_ctx_get_non_gc_memory_t
	.cfi_startproc
# BB#0:                                 # %entry
	movq	mem_err_print(%rip), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	200(%rcx), %rax
.LBB0_2:                                # %cond.end
	retq
.Lfunc_end0:
	.size	gs_lib_ctx_get_non_gc_memory_t, .Lfunc_end0-gs_lib_ctx_get_non_gc_memory_t
	.cfi_endproc

	.globl	gs_lib_ctx_set_icc_directory
	.align	16, 0x90
	.type	gs_lib_ctx_set_icc_directory,@function
gs_lib_ctx_set_icc_directory:           # @gs_lib_ctx_set_icc_directory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r13, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	192(%rbx), %r13
	cmpq	$0, 184(%r13)
	je	.LBB1_11
# BB#1:                                 # %land.lhs.true.1
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_9
# BB#2:                                 # %cond.true
	movzbl	(%r15), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB1_10
# BB#3:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB1_10
# BB#4:                                 # %if.then
	movzbl	1(%r15), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB1_10
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB1_10
# BB#6:                                 # %if.then.20
	movzbl	2(%r15), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB1_10
# BB#7:                                 # %if.then.20
	testl	%eax, %eax
	jne	.LBB1_10
# BB#8:                                 # %if.then.30
	movzbl	3(%r15), %eax
	addl	$-109, %eax
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false
	movl	$.L.str, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB1_10:                               # %cond.end
	testl	%eax, %eax
	je	.LBB1_17
.LBB1_11:                               # %if.end.42
	movslq	192(%r13), %rdx
	testq	%rdx, %rdx
	jle	.LBB1_12
# BB#13:                                # %if.then.45
	movq	184(%r13), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB1_17
# BB#14:                                # %if.end.53
	movq	200(%rbx), %rdi
	addq	$200, %rbx
	movl	$.L.str.1, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	jmp	.LBB1_15
.LBB1_12:                               # %if.end.42.if.end.56_crit_edge
	addq	$200, %rbx
.LBB1_15:                               # %if.end.56
	movq	(%rbx), %rdi
	leal	1(%r14), %esi
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_17
# BB#16:                                # %if.then.63
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcpy
	movq	%rbx, 184(%r13)
	movl	%r14d, 192(%r13)
.LBB1_17:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gs_lib_ctx_set_icc_directory, .Lfunc_end1-gs_lib_ctx_set_icc_directory
	.cfi_endproc

	.globl	gs_lib_ctx_init
	.align	16, 0x90
	.type	gs_lib_ctx_init,@function
gs_lib_ctx_init:                        # @gs_lib_ctx_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB2_1
# BB#2:                                 # %if.end
	movq	%rbx, mem_err_print(%rip)
	xorl	%ebp, %ebp
	cmpq	$0, 192(%rbx)
	jne	.LBB2_8
# BB#3:                                 # %if.end.2
	movl	$216, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*8(%rbx)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB2_4
# BB#5:                                 # %if.end.5
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$216, %edx
	movq	%r14, %rdi
	callq	memset
	movq	%rbx, (%r14)
	movq	stdin(%rip), %rax
	movq	%rax, 8(%r14)
	movq	stdout(%rip), %rax
	movq	%rax, 16(%r14)
	movq	stderr(%rip), %rax
	movq	%rax, 24(%r14)
	movl	$1, 48(%r14)
	movq	$5, 104(%r14)
	movq	%r14, 192(%rbx)
	movq	$0, 184(%r14)
	movl	$0, 192(%r14)
	movl	$.L.str, %edi
	callq	strlen
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	gs_lib_ctx_set_icc_directory
	movq	%rbx, %rdi
	callq	gscms_create
	testl	%eax, %eax
	je	.LBB2_7
# BB#6:                                 # %if.then.11
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movq	$0, 192(%rbx)
	movl	$-1, %ebp
	jmp	.LBB2_8
.LBB2_1:
	movl	$-1, %ebp
	jmp	.LBB2_8
.LBB2_4:
	movl	$-1, %ebp
	jmp	.LBB2_8
.LBB2_7:                                # %if.end.14
	addq	$152, %r14
	movq	%r14, %rdi
	callq	gp_get_realtime
.LBB2_8:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_lib_ctx_init, .Lfunc_end2-gs_lib_ctx_init
	.cfi_endproc

	.globl	gs_lib_ctx_fin
	.align	16, 0x90
	.type	gs_lib_ctx_fin,@function
gs_lib_ctx_fin:                         # @gs_lib_ctx_fin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 192(%rbx)
	je	.LBB3_2
# BB#3:                                 # %if.end
	movq	%rbx, %rdi
	callq	gscms_destroy
	movq	192(%rbx), %rax
	movq	208(%rbx), %rdi
	movq	184(%rax), %rsi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	movq	$0, mem_err_print(%rip)
	movq	192(%rbx), %r14
	movq	%rbx, %rdi
	callq	remove_ctx_pointers
	movq	208(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.2, %edx
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB3_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	gs_lib_ctx_fin, .Lfunc_end3-gs_lib_ctx_fin
	.cfi_endproc

	.align	16, 0x90
	.type	remove_ctx_pointers,@function
remove_ctx_pointers:                    # @remove_ctx_pointers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB4_1:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 192(%rbx)
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_4
# BB#2:                                 # %tailrecurse
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	%rbx, %rdi
	je	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	callq	remove_ctx_pointers
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_7
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	%rbx, %rdi
	je	.LBB4_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB4_1 Depth=1
	callq	remove_ctx_pointers
.LBB4_7:                                # %if.end.9
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	208(%rbx), %rax
	testq	%rax, %rax
	je	.LBB4_9
# BB#8:                                 # %if.end.9
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	%rbx, %rax
	movq	%rax, %rbx
	jne	.LBB4_1
.LBB4_9:                                # %if.end.16
	popq	%rbx
	retq
.Lfunc_end4:
	.size	remove_ctx_pointers, .Lfunc_end4-remove_ctx_pointers
	.cfi_endproc

	.globl	gs_lib_ctx_get_interp_instance
	.align	16, 0x90
	.type	gs_lib_ctx_get_interp_instance,@function
gs_lib_ctx_get_interp_instance:         # @gs_lib_ctx_get_interp_instance
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB5_2
# BB#1:                                 # %if.end
	movq	192(%rdi), %rax
.LBB5_2:                                # %return
	retq
.Lfunc_end5:
	.size	gs_lib_ctx_get_interp_instance, .Lfunc_end5-gs_lib_ctx_get_interp_instance
	.cfi_endproc

	.globl	gs_lib_ctx_get_cms_context
	.align	16, 0x90
	.type	gs_lib_ctx_get_cms_context,@function
gs_lib_ctx_get_cms_context:             # @gs_lib_ctx_get_cms_context
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB6_2
# BB#1:                                 # %if.end
	movq	192(%rdi), %rax
	movq	200(%rax), %rax
.LBB6_2:                                # %return
	retq
.Lfunc_end6:
	.size	gs_lib_ctx_get_cms_context, .Lfunc_end6-gs_lib_ctx_get_cms_context
	.cfi_endproc

	.globl	gs_lib_ctx_set_cms_context
	.align	16, 0x90
	.type	gs_lib_ctx_set_cms_context,@function
gs_lib_ctx_set_cms_context:             # @gs_lib_ctx_set_cms_context
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB7_2
# BB#1:                                 # %if.end
	movq	192(%rdi), %rax
	movq	%rsi, 200(%rax)
.LBB7_2:                                # %return
	retq
.Lfunc_end7:
	.size	gs_lib_ctx_set_cms_context, .Lfunc_end7-gs_lib_ctx_set_cms_context
	.cfi_endproc

	.globl	outwrite
	.align	16, 0x90
	.type	outwrite,@function
outwrite:                               # @outwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	xorl	%r15d, %r15d
	testl	%edx, %edx
	je	.LBB8_10
# BB#1:                                 # %if.end
	movq	192(%rdi), %rbx
	cmpl	$0, 40(%rbx)
	je	.LBB8_6
# BB#2:                                 # %if.then.1
	cmpl	$0, 44(%rbx)
	je	.LBB8_5
# BB#3:                                 # %if.end.9.i
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.LBB8_11
# BB#4:                                 # %if.end.12.i
	movslq	%edx, %rdx
	movq	24(%rbx), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	fwrite
	movq	%rax, %r15
	movq	24(%rbx), %rdi
	jmp	.LBB8_9
.LBB8_6:                                # %if.else
	movq	80(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_7
.LBB8_11:                               # %if.then.10.i
	movq	56(%rbx), %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rcx                   # TAILCALL
.LBB8_5:                                # %if.end.4
	addq	$32, %rbx
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.9
	addq	$16, %rbx
.LBB8_8:                                # %if.end.11
	movq	(%rbx), %r14
	movslq	%edx, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%r14, %rcx
	callq	fwrite
	movq	%rax, %r15
	movq	%r14, %rdi
.LBB8_9:                                # %cleanup
	callq	fflush
.LBB8_10:                               # %cleanup
	movl	%r15d, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	outwrite, .Lfunc_end8-outwrite
	.cfi_endproc

	.globl	errwrite
	.align	16, 0x90
	.type	errwrite,@function
errwrite:                               # @errwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -24
.Ltmp33:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	xorl	%r14d, %r14d
	testl	%edx, %edx
	je	.LBB9_6
# BB#1:                                 # %if.end
	testq	%rdi, %rdi
	jne	.LBB9_3
# BB#2:                                 # %if.then.2
	movq	mem_err_print(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB9_6
.LBB9_3:                                # %if.end.6
	movq	192(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB9_6
# BB#4:                                 # %if.end.9
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB9_5
# BB#7:                                 # %if.then.10
	movq	56(%rbx), %rdi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rcx                   # TAILCALL
.LBB9_5:                                # %if.end.12
	movslq	%edx, %rdx
	movq	24(%rbx), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	fwrite
	movq	%rax, %r14
	movq	24(%rbx), %rdi
	callq	fflush
.LBB9_6:                                # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	errwrite, .Lfunc_end9-errwrite
	.cfi_endproc

	.globl	errwrite_nomem
	.align	16, 0x90
	.type	errwrite_nomem,@function
errwrite_nomem:                         # @errwrite_nomem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -24
.Ltmp38:
	.cfi_offset %r14, -16
	movl	%esi, %ecx
	movq	%rdi, %rax
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	je	.LBB10_5
# BB#1:                                 # %entry
	movq	mem_err_print(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB10_5
# BB#2:                                 # %if.end.6.i
	movq	192(%rdx), %r14
	testq	%r14, %r14
	je	.LBB10_5
# BB#3:                                 # %if.end.9.i
	movq	88(%r14), %r8
	testq	%r8, %r8
	je	.LBB10_4
# BB#6:                                 # %if.then.10.i
	movq	56(%r14), %rdi
	movq	%rax, %rsi
	movl	%ecx, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%r8                    # TAILCALL
.LBB10_4:                               # %if.end.12.i
	movslq	%ecx, %rdx
	movq	24(%r14), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	fwrite
	movq	%rax, %rbx
	movq	24(%r14), %rdi
	callq	fflush
.LBB10_5:                               # %errwrite.exit
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	errwrite_nomem, .Lfunc_end10-errwrite_nomem
	.cfi_endproc

	.globl	outflush
	.align	16, 0x90
	.type	outflush,@function
outflush:                               # @outflush
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	cmpl	$0, 40(%rax)
	je	.LBB11_5
# BB#1:                                 # %if.then
	cmpl	$0, 44(%rax)
	je	.LBB11_4
# BB#2:                                 # %if.then.3
	cmpq	$0, 88(%rax)
	jne	.LBB11_6
# BB#3:                                 # %if.then.6
	movq	24(%rax), %rdi
	jmp	fflush                  # TAILCALL
.LBB11_5:                               # %if.else.11
	cmpq	$0, 80(%rax)
	je	.LBB11_7
.LBB11_6:                               # %if.end.18
	retq
.LBB11_4:                               # %if.else
	movq	32(%rax), %rdi
	jmp	fflush                  # TAILCALL
.LBB11_7:                               # %if.then.14
	movq	16(%rax), %rdi
	jmp	fflush                  # TAILCALL
.Lfunc_end11:
	.size	outflush, .Lfunc_end11-outflush
	.cfi_endproc

	.globl	errflush_nomem
	.align	16, 0x90
	.type	errflush_nomem,@function
errflush_nomem:                         # @errflush_nomem
	.cfi_startproc
# BB#0:                                 # %entry
	movq	mem_err_print(%rip), %rax
	movq	192(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB12_2
# BB#1:                                 # %errflush.exit
	retq
.LBB12_2:                               # %if.then.i
	movq	24(%rax), %rdi
	jmp	fflush                  # TAILCALL
.Lfunc_end12:
	.size	errflush_nomem, .Lfunc_end12-errflush_nomem
	.cfi_endproc

	.globl	errflush
	.align	16, 0x90
	.type	errflush,@function
errflush:                               # @errflush
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	cmpq	$0, 88(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.end
	retq
.LBB13_2:                               # %if.then
	movq	24(%rax), %rdi
	jmp	fflush                  # TAILCALL
.Lfunc_end13:
	.size	errflush, .Lfunc_end13-errflush
	.cfi_endproc

	.type	mem_err_print,@object   # @mem_err_print
	.local	mem_err_print
	.comm	mem_err_print,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%rom%iccprofiles/"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gsicc_set_icc_directory"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_lib_ctx_init"
	.size	.L.str.2, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
