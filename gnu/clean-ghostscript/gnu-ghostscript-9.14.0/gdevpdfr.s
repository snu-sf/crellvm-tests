	.text
	.file	"gdevpdfr.bc"
	.globl	pdf_objname_is_valid
	.align	16, 0x90
	.type	pdf_objname_is_valid,@function
pdf_objname_is_valid:                   # @pdf_objname_is_valid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	cmpl	$2, %esi
	jb	.LBB0_1
# BB#2:                                 # %land.lhs.true
	movzbl	(%rbx), %eax
	cmpl	$123, %eax
	jne	.LBB0_3
# BB#4:                                 # %land.rhs
	movl	%esi, %r14d
	movl	$125, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memchr
	leaq	-1(%rbx,%r14), %rcx
	cmpq	%rcx, %rax
	sete	%al
	jmp	.LBB0_5
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_3:
	xorl	%eax, %eax
.LBB0_5:                                # %land.end
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	pdf_objname_is_valid, .Lfunc_end0-pdf_objname_is_valid
	.cfi_endproc

	.globl	pdf_find_named
	.align	16, 0x90
	.type	pdf_find_named,@function
pdf_find_named:                         # @pdf_find_named
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 64
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	8(%rbx), %ebp
	cmpq	$2, %rbp
	movl	$-15, %r12d
	jb	.LBB1_6
# BB#1:                                 # %land.lhs.true.i
	movq	(%rbx), %r13
	movzbl	(%r13), %eax
	cmpl	$123, %eax
	jne	.LBB1_6
# BB#2:                                 # %land.rhs.i
	movl	$125, %esi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	memchr
	leaq	-1(%r13,%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_6
# BB#3:                                 # %if.end
	movq	28760(%r15), %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	jne	.LBB1_5
# BB#4:                                 # %lor.lhs.false
	movq	28752(%r15), %rdi
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	callq	cos_dict_find
	movl	$-21, %r12d
	testq	%rax, %rax
	je	.LBB1_6
.LBB1_5:                                # %if.then.8
	movq	8(%rax), %rax
	movq	%rax, (%r14)
	xorl	%r12d, %r12d
.LBB1_6:                                # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_find_named, .Lfunc_end1-pdf_find_named
	.cfi_endproc

	.globl	pdf_create_named
	.align	16, 0x90
	.type	pdf_create_named,@function
pdf_create_named:                       # @pdf_create_named
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 80
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$.L.str, %esi
	callq	cos_object_alloc
	movq	%rax, %rbx
	movq	%rbx, (%r15)
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB2_10
# BB#1:                                 # %if.end
	xorl	%eax, %eax
	cmpq	$-1, %rbp
	je	.LBB2_5
# BB#2:                                 # %if.end
	testq	%rbp, %rbp
	jne	.LBB2_4
# BB#3:                                 # %cond.true.3
	movq	%r13, %rdi
	callq	pdf_obj_ref
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false.5
	movq	%rbp, %rax
.LBB2_5:                                # %cond.end.6
	movq	%rax, 8(%rbx)
	testq	%r12, %r12
	je	.LBB2_7
# BB#6:                                 # %if.then.9
	movq	28760(%r13), %rbp
	movq	(%r12), %r13
	movl	8(%r12), %r12d
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cos_object_value
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movq	%rax, %rcx
	callq	cos_dict_put
	testl	%eax, %eax
	js	.LBB2_10
.LBB2_7:                                # %if.end.15
	movl	$cos_generic_procs, %eax
	cmpq	%rax, %r14
	je	.LBB2_9
# BB#8:                                 # %if.then.17
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cos_become
.LBB2_9:                                # %if.end.19
	movq	%rbx, (%r15)
	xorl	%eax, %eax
.LBB2_10:                               # %cleanup.20
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_create_named, .Lfunc_end2-pdf_create_named
	.cfi_endproc

	.globl	pdf_create_named_dict
	.align	16, 0x90
	.type	pdf_create_named_dict,@function
pdf_create_named_dict:                  # @pdf_create_named_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -16
	movq	%rcx, %rax
	movq	%rdx, %rbx
	leaq	8(%rsp), %rcx
	movl	$cos_dict_procs, %edx
	movq	%rax, %r8
	callq	pdf_create_named
	movq	8(%rsp), %rcx
	movq	%rcx, (%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	pdf_create_named_dict, .Lfunc_end3-pdf_create_named_dict
	.cfi_endproc

	.globl	pdf_refer_named
	.align	16, 0x90
	.type	pdf_refer_named,@function
pdf_refer_named:                        # @pdf_refer_named
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
	subq	$72, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 128
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
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	8(%r12), %ebx
	cmpq	$2, %rbx
	movl	$-15, %r13d
	jb	.LBB4_28
# BB#1:                                 # %land.lhs.true.i.i
	movq	(%r12), %rbp
	movzbl	(%rbp), %eax
	cmpl	$123, %eax
	jne	.LBB4_28
# BB#2:                                 # %land.rhs.i.i
	movl	$125, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	leaq	-1(%rbp,%rbx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_28
# BB#3:                                 # %if.end.i
	movq	28760(%r15), %rdi
	movq	%rbp, %rsi
	movl	%ebx, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	jne	.LBB4_5
# BB#4:                                 # %lor.lhs.false.i
	movq	28752(%r15), %rdi
	movq	(%r12), %rsi
	movl	8(%r12), %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB4_6
.LBB4_5:                                # %if.then.8.i
	movq	8(%rax), %rax
.LBB4_27:                               # %cleanup
	movq	%rax, (%r14)
	xorl	%r13d, %r13d
.LBB4_28:                               # %cleanup
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_6:                                # %if.end
	movl	8(%r12), %edx
	leal	-7(%rdx), %eax
	cmpl	$10, %eax
	ja	.LBB4_8
# BB#7:                                 # %if.then.5
	movq	(%r12), %rsi
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movl	8(%r12), %eax
	movb	$0, 16(%rsp,%rax)
	leaq	12(%rsp), %rdx
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB4_25
.LBB4_8:                                # %if.end.16
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	je	.LBB4_17
# BB#9:                                 # %if.then.18
	movl	26544(%r15), %edx
	incl	%edx
	jmp	.LBB4_10
.LBB4_17:                               # %if.else
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	je	.LBB4_19
# BB#18:                                # %if.then.21
	movl	26544(%r15), %edx
	addl	$2, %edx
	jmp	.LBB4_10
.LBB4_19:                               # %if.else.24
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	pdf_key_eq
	testl	%eax, %eax
	je	.LBB4_21
# BB#20:                                # %if.then.27
	movl	26544(%r15), %edx
.LBB4_10:                               # %if.end.35
	movl	%edx, 12(%rsp)
	movl	$-21, %r13d
	testl	%edx, %edx
	jle	.LBB4_28
# BB#11:                                # %if.end.39
	leaq	16(%rsp), %rbx
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$-15, %r13d
	cmpl	$2, %ebx
	jb	.LBB4_28
# BB#12:                                # %if.end.39
	movzbl	16(%rsp), %eax
	cmpl	$123, %eax
	jne	.LBB4_28
# BB#13:                                # %land.rhs.i.i.43
	leaq	16(%rsp), %rdi
	movl	%ebx, %ebp
	movl	$125, %esi
	movq	%rbp, %rdx
	callq	memchr
	leaq	15(%rsp,%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_28
# BB#14:                                # %if.end.i.47
	movq	28760(%r15), %rdi
	leaq	16(%rsp), %rsi
	movl	%ebx, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	jne	.LBB4_16
# BB#15:                                # %lor.lhs.false.i.51
	movq	28752(%r15), %rdi
	leaq	16(%rsp), %rsi
	movl	%ebx, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB4_25
.LBB4_16:                               # %if.then.8.i.54
	movq	8(%rax), %rax
	jmp	.LBB4_27
.LBB4_25:                               # %cpage
	movl	12(%rsp), %esi
	movq	%r15, %rdi
	callq	pdf_page_id
	movl	$-15, %r13d
	testq	%rax, %rax
	jle	.LBB4_28
# BB#26:                                # %if.end.57
	movslq	12(%rsp), %rax
	imulq	$208, %rax, %rax
	movq	26648(%r15), %rcx
	movq	-208(%rax,%rcx), %rax
	jmp	.LBB4_27
.LBB4_21:                               # %if.else.29
	movl	$.L.str, %esi
	movq	%r15, %rdi
	callq	cos_object_alloc
	movq	%rax, %rbp
	movq	%rbp, (%r14)
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB4_24
# BB#22:                                # %if.then.9.i
	movq	%r15, %rdi
	callq	pdf_obj_ref
	movq	%rax, 8(%rbp)
	movq	28760(%r15), %rbx
	movq	(%r12), %r15
	movl	8(%r12), %r12d
	leaq	48(%rsp), %rdi
	movq	%rbp, %rsi
	callq	cos_object_value
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	%rax, %rcx
	callq	cos_dict_put
	testl	%eax, %eax
	js	.LBB4_24
# BB#23:                                # %if.end.15.i
	movq	%rbp, (%r14)
	xorl	%eax, %eax
.LBB4_24:                               # %pdf_create_named.exit
	testl	%eax, %eax
	movl	$1, %r13d
	cmovsl	%eax, %r13d
	jmp	.LBB4_28
.Lfunc_end4:
	.size	pdf_refer_named, .Lfunc_end4-pdf_refer_named
	.cfi_endproc

	.globl	pdf_make_named
	.align	16, 0x90
	.type	pdf_make_named,@function
pdf_make_named:                         # @pdf_make_named
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
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 48
.Ltmp52:
	.cfi_offset %rbx, -48
.Ltmp53:
	.cfi_offset %r12, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, %rbp
	movq	%rdx, %r14
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB5_8
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	pdf_refer_named
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB5_2
# BB#3:                                 # %if.end
	movq	(%rbp), %rbp
	movl	$cos_generic_procs, %ecx
	movl	$-15, %eax
	cmpq	%rcx, (%rbp)
	jne	.LBB5_9
# BB#4:                                 # %if.end.4
	testl	%r12d, %r12d
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
	cmpq	$0, 8(%rbp)
	jne	.LBB5_7
# BB#6:                                 # %if.then.7
	movq	%rbx, %rdi
	callq	pdf_obj_ref
	movq	%rax, 8(%rbp)
.LBB5_7:                                # %if.end.10
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	cos_become
	movl	%r15d, %eax
	jmp	.LBB5_9
.LBB5_8:                                # %if.else
	cmpl	$1, %r12d
	sbbq	%r8, %r8
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	callq	pdf_create_named
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB5_9
.LBB5_2:
	movl	%r15d, %eax
.LBB5_9:                                # %return
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pdf_make_named, .Lfunc_end5-pdf_make_named
	.cfi_endproc

	.globl	pdf_make_named_dict
	.align	16, 0x90
	.type	pdf_make_named_dict,@function
pdf_make_named_dict:                    # @pdf_make_named_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %rbx, -16
	movl	%ecx, %eax
	movq	%rdx, %rbx
	leaq	8(%rsp), %rcx
	movl	$cos_dict_procs, %edx
	movl	%eax, %r8d
	callq	pdf_make_named
	movq	8(%rsp), %rcx
	movq	%rcx, (%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end6:
	.size	pdf_make_named_dict, .Lfunc_end6-pdf_make_named_dict
	.cfi_endproc

	.globl	pdf_get_named
	.align	16, 0x90
	.type	pdf_get_named,@function
pdf_get_named:                          # @pdf_get_named
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 32
.Ltmp63:
	.cfi_offset %rbx, -24
.Ltmp64:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rbx, %rdx
	callq	pdf_refer_named
	testl	%eax, %eax
	js	.LBB7_3
# BB#1:                                 # %if.end
	movq	(%rbx), %rcx
	cmpq	%r14, (%rcx)
	je	.LBB7_3
# BB#2:                                 # %select.mid
	movl	$-20, %eax
.LBB7_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	pdf_get_named, .Lfunc_end7-pdf_get_named
	.cfi_endproc

	.globl	pdf_push_namespace
	.align	16, 0x90
	.type	pdf_push_namespace,@function
pdf_push_namespace:                     # @pdf_push_namespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 48
.Ltmp70:
	.cfi_offset %rbx, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	28760(%rbx), %rsi
	movq	28776(%rbx), %rdi
	callq	cos_array_add_object
	movl	%eax, %ebp
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r14
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	cos_array_alloc
	movq	%rax, %r15
	testl	%ebp, %ebp
	js	.LBB8_5
# BB#1:                                 # %lor.lhs.false
	movq	28768(%rbx), %rsi
	movq	28776(%rbx), %rdi
	callq	cos_array_add_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_5
# BB#2:                                 # %if.end
	testq	%r14, %r14
	movl	$-25, %ebp
	je	.LBB8_5
# BB#3:                                 # %if.end
	testq	%r15, %r15
	je	.LBB8_5
# BB#4:                                 # %if.end.11
	movq	%r14, 28760(%rbx)
	movq	%r15, 28768(%rbx)
	xorl	%ebp, %ebp
.LBB8_5:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_push_namespace, .Lfunc_end8-pdf_push_namespace
	.cfi_endproc

	.globl	pdf_pop_namespace
	.align	16, 0x90
	.type	pdf_pop_namespace,@function
pdf_pop_namespace:                      # @pdf_pop_namespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 64
.Ltmp76:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	28776(%rbx), %rdi
	leaq	24(%rsp), %rsi
	callq	cos_array_unadd
	testl	%eax, %eax
	js	.LBB9_3
# BB#1:                                 # %lor.lhs.false
	movq	28776(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	cos_array_unadd
	testl	%eax, %eax
	js	.LBB9_3
# BB#2:                                 # %if.end
	movq	28760(%rbx), %rdi
	movl	$.L.str.7, %esi
	callq	cos_free
	movq	8(%rsp), %rax
	movq	%rax, 28760(%rbx)
	movq	28768(%rbx), %rdi
	movl	$.L.str.8, %esi
	callq	cos_free
	movq	32(%rsp), %rax
	movq	%rax, 28768(%rbx)
	xorl	%eax, %eax
.LBB9_3:                                # %cleanup
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	pdf_pop_namespace, .Lfunc_end9-pdf_pop_namespace
	.cfi_endproc

	.globl	pdf_scan_token
	.align	16, 0x90
	.type	pdf_scan_token,@function
pdf_scan_token:                         # @pdf_scan_token
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 288
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r14), %rax
	cmpq	%r15, %rax
	jae	.LBB10_19
# BB#1:                                 # %land.rhs.preheader
	addq	$3, %rax
	movq	%rax, %rcx
	.align	16, 0x90
.LBB10_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	leaq	-3(%rcx), %rbx
	movzbl	-3(%rcx), %edi
	movzbl	scan_char_array+4(%rdi), %eax
	cmpl	$102, %eax
	jne	.LBB10_26
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB10_2 Depth=1
	testb	%dil, %dil
	jne	.LBB10_18
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	-2(%rcx), %rax
	leaq	-1(%rcx), %rsi
	cmpq	%r15, %rsi
	jae	.LBB10_16
# BB#5:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpq	%r15, %rcx
	jae	.LBB10_16
# BB#6:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpb	$0, (%rax)
	jne	.LBB10_16
# BB#7:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpb	$0, (%rsi)
	jne	.LBB10_16
# BB#8:                                 # %land.lhs.true.22
                                        #   in Loop: Header=BB10_2 Depth=1
	movzbl	(%rcx), %ebp
	cmpl	$47, %ebp
	je	.LBB10_9
	.align	16, 0x90
.LBB10_16:                              # %if.else
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpq	%r15, %rsi
	jae	.LBB10_18
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB10_2 Depth=1
	testb	%dil, %dil
	jne	.LBB10_18
# BB#20:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpb	$0, (%rax)
	jne	.LBB10_18
# BB#21:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB10_2 Depth=1
	movzbl	(%rcx), %eax
	cmpl	$47, %eax
	je	.LBB10_22
	.align	16, 0x90
.LBB10_18:                              # %while.cond.backedge
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%rcx, %rax
	leaq	1(%rcx), %rcx
	addq	$-2, %rax
	cmpq	%r15, %rax
	jb	.LBB10_2
.LBB10_19:                              # %if.then.80
	movq	%rax, (%rdx)
	movq	%rax, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB10_49
.LBB10_26:                              # %if.end.81
	movq	%rbx, (%rdx)
	movzbl	(%rbx), %eax
	movl	$-15, %ebp
	cmpl	$46, %eax
	jg	.LBB10_30
# BB#27:                                # %if.end.81
	cmpl	$37, %eax
	je	.LBB10_49
# BB#28:                                # %if.end.81
	cmpl	$40, %eax
	jne	.LBB10_29
# BB#40:                                # %sw.bb.83
	leaq	8(%rsp), %r12
	movq	%r12, %rdi
	callq	s_PSSD_init
	movq	%rbx, 152(%rsp)
	decq	%r15
	movq	%r15, 160(%rsp)
	leaq	225(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	175(%rsp), %r15
	movq	s_PSSD_template+16(%rip), %r13
	leaq	152(%rsp), %rbx
	leaq	128(%rsp), %rbp
	.align	16, 0x90
.LBB10_41:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, 136(%rsp)
	movl	$1, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	*%r13
	cmpl	$1, %eax
	je	.LBB10_41
# BB#42:                                # %do.end
	movq	152(%rsp), %rax
	incq	%rax
	movq	%rax, (%r14)
	jmp	.LBB10_48
.LBB10_30:                              # %if.end.81
	leal	-62(%rax), %ecx
	cmpl	$63, %ecx
	ja	.LBB10_31
# BB#36:                                # %if.end.81
	movabsq	$-6917529024956727296, %rsi # imm = 0xA0000000A0000000
	btq	%rcx, %rsi
	jae	.LBB10_37
# BB#43:                                # %sw.bb.131
	incq	%rbx
	movq	%rbx, (%r14)
	jmp	.LBB10_48
.LBB10_29:                              # %if.end.81
	cmpl	$41, %eax
	jne	.LBB10_45
	jmp	.LBB10_49
.LBB10_22:                              # %if.then.62
	movq	%rsi, (%rdx)
	movl	$-15, %ebp
	.align	16, 0x90
.LBB10_23:                              # %while.cond.64
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rsi)
	je	.LBB10_25
# BB#24:                                # %while.body.68
                                        #   in Loop: Header=BB10_23 Depth=1
	incq	%rsi
	cmpq	%r15, %rsi
	jb	.LBB10_23
	jmp	.LBB10_49
.LBB10_37:                              # %if.end.81
	testq	%rcx, %rcx
	jne	.LBB10_31
# BB#38:                                # %sw.bb.117
	subq	%rbx, %r15
	cmpq	$2, %r15
	jl	.LBB10_49
# BB#39:                                # %lor.lhs.false.123
	movzbl	1(%rbx), %eax
	cmpl	$62, %eax
	je	.LBB10_14
	jmp	.LBB10_49
.LBB10_31:                              # %if.end.81
	cmpl	$47, %eax
	je	.LBB10_44
# BB#32:                                # %if.end.81
	cmpl	$60, %eax
	jne	.LBB10_45
# BB#33:                                # %sw.bb.97
	subq	%rbx, %r15
	cmpq	$2, %r15
	jl	.LBB10_49
# BB#34:                                # %if.end.101
	movzbl	1(%rbx), %eax
	cmpl	$60, %eax
	je	.LBB10_14
# BB#35:                                # %if.then.106
	incq	%rbx
	decq	%r15
	movl	$62, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB10_14
	jmp	.LBB10_49
.LBB10_25:                              # %while.end.74
	movq	%rsi, (%r14)
	jmp	.LBB10_48
.LBB10_9:                               # %if.then
	movq	%rcx, (%rdx)
	leaq	1(%rax), %rcx
	movl	$-15, %ebp
.LBB10_10:                              # %while.cond.28
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rcx)
	jne	.LBB10_12
# BB#11:                                # %lor.rhs
                                        #   in Loop: Header=BB10_10 Depth=1
	cmpb	$0, 2(%rbx)
	je	.LBB10_14
.LBB10_12:                              # %while.body.36
                                        #   in Loop: Header=BB10_10 Depth=1
	addq	$3, %rbx
	cmpq	%r15, %rbx
	jae	.LBB10_49
# BB#13:                                # %while.body.36
                                        #   in Loop: Header=BB10_10 Depth=1
	cmpq	%r15, %rcx
	leaq	1(%rcx), %rcx
	movq	%rax, %rbx
	leaq	1(%rax), %rax
	jb	.LBB10_10
	jmp	.LBB10_49
.LBB10_14:                              # %while.end
	addq	$2, %rbx
	movq	%rbx, (%r14)
	jmp	.LBB10_48
.LBB10_44:                              # %sw.bb.133
	incq	%rbx
.LBB10_45:                              # %while.cond.135.preheader
	cmpq	%r15, %rbx
	jae	.LBB10_47
# BB#46:                                # %land.rhs.138
	movzbl	(%rbx), %eax
	movzbl	scan_char_array+4(%rax), %eax
	cmpl	$100, %eax
	jbe	.LBB10_44
.LBB10_47:                              # %while.end.147
	movq	%rbx, (%r14)
	movl	$-15, %ebp
	cmpq	(%rdx), %rbx
	je	.LBB10_49
.LBB10_48:                              # %select.mid
	movl	$1, %ebp
.LBB10_49:                              # %cleanup
	movl	%ebp, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pdf_scan_token, .Lfunc_end10-pdf_scan_token
	.cfi_endproc

	.globl	pdf_scan_token_composite
	.align	16, 0x90
	.type	pdf_scan_token_composite,@function
pdf_scan_token_composite:               # @pdf_scan_token_composite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp96:
	.cfi_def_cfa_offset 64
.Ltmp97:
	.cfi_offset %rbx, -56
.Ltmp98:
	.cfi_offset %r12, -48
.Ltmp99:
	.cfi_offset %r13, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebp, %ebp
	leaq	(%rsp), %r12
	movabsq	$-9223372034707292159, %r13 # imm = 0x8000000080000001
	.align	16, 0x90
.LBB11_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	pdf_scan_token
	testl	%eax, %eax
	jle	.LBB11_2
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	(%rbx), %rcx
	movzbl	(%rcx), %ecx
	leal	-62(%rcx), %edx
	cmpl	$63, %edx
	ja	.LBB11_4
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	btq	%rdx, %r13
	jae	.LBB11_6
# BB#8:                                 # %sw.bb.3
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$-15, %ecx
	testl	%ebp, %ebp
	je	.LBB11_11
# BB#9:                                 # %if.end.7
                                        #   in Loop: Header=BB11_1 Depth=1
	decl	%ebp
	jmp	.LBB11_10
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movabsq	$2305843009750564864, %rsi # imm = 0x2000000020000000
	btq	%rdx, %rsi
	jb	.LBB11_7
	.align	16, 0x90
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$60, %ecx
	jne	.LBB11_10
.LBB11_7:                               # %sw.bb
                                        #   in Loop: Header=BB11_1 Depth=1
	incl	%ebp
.LBB11_10:                              # %sw.epilog
                                        #   in Loop: Header=BB11_1 Depth=1
	testl	%ebp, %ebp
	movq	%r12, %rbx
	movl	%eax, %ecx
	jne	.LBB11_1
	jmp	.LBB11_11
.LBB11_2:                               # %if.then
	movl	$-15, %ecx
	cmovsl	%eax, %ecx
	testl	%ebp, %ebp
	cmovel	%eax, %ecx
.LBB11_11:                              # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pdf_scan_token_composite, .Lfunc_end11-pdf_scan_token_composite
	.cfi_endproc

	.globl	pdf_replace_names
	.align	16, 0x90
	.type	pdf_replace_names,@function
pdf_replace_names:                      # @pdf_replace_names
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 144
.Ltmp110:
	.cfi_offset %rbx, -56
.Ltmp111:
	.cfi_offset %r12, -48
.Ltmp112:
	.cfi_offset %r13, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	(%rsi), %rax
	movl	8(%rsi), %ecx
	testq	%rcx, %rcx
	je	.LBB12_1
# BB#2:                                 # %for.body.lr.ph
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	48(%rsp), %rbx
	movq	%rax, %r14
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rdx, %rsi
	leaq	40(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movq	32(%rsp), %r8           # 8-byte Reload
	callq	pdfmark_next_object
	movq	%rax, %r12
	movq	40(%rsp), %r15
	movq	%r15, %rax
	subq	%r14, %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %r13
	addq	%rax, %r13
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.LBB12_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	8(%rax), %rdx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	addq	%rax, %r13
.LBB12_5:                               # %if.end
                                        #   in Loop: Header=BB12_3 Depth=1
	cmpq	%r15, %r12
	setne	%al
	movzbl	%al, %eax
	orl	%eax, %ebp
	movq	24(%rsp), %rdx          # 8-byte Reload
	cmpq	%rdx, %r12
	movq	%r12, %r14
	jb	.LBB12_3
# BB#6:                                 # %for.end
	movq	%rdx, %rbx
	movq	8(%rsp), %r14           # 8-byte Reload
	movl	$1, 12(%r14)
	testl	%ebp, %ebp
	je	.LBB12_7
# BB#9:                                 # %if.end.15
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.10, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	%rbx, %rsi
	je	.LBB12_15
# BB#10:                                # %if.end.21
	xorl	%eax, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	testl	%ecx, %ecx
	movq	%r12, (%r14)
	movl	%r13d, 8(%r14)
	je	.LBB12_15
# BB#11:                                # %for.body.27.lr.ph
	leaq	48(%rsp), %rbx
	.align	16, 0x90
.LBB12_12:                              # %for.body.27
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rsi, %r13
	leaq	40(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movq	32(%rsp), %r8           # 8-byte Reload
	callq	pdfmark_next_object
	movq	%rax, %r14
	movl	40(%rsp), %ebp
	subl	%r15d, %ebp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%r12, %rbp
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.LBB12_14
# BB#13:                                # %if.then.40
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	8(%rax), %rdx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movslq	%eax, %r15
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %rbp
.LBB12_14:                              # %if.end.52
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	%r13, %rsi
	xorl	%eax, %eax
	cmpq	%rsi, %r14
	movq	%r14, %r15
	movq	%rbp, %r12
	jb	.LBB12_12
	jmp	.LBB12_15
.LBB12_1:                               # %for.end.thread
	movl	$1, 12(%r14)
	xorl	%r13d, %r13d
	jmp	.LBB12_8
.LBB12_7:
	movq	16(%rsp), %rax          # 8-byte Reload
.LBB12_8:                               # %if.then.12
	movq	%rax, (%r14)
	movl	%r13d, 8(%r14)
	xorl	%eax, %eax
.LBB12_15:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pdf_replace_names, .Lfunc_end12-pdf_replace_names
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_next_object,@function
pdfmark_next_object:                    # @pdfmark_next_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 112
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, 40(%rsp)
	leaq	40(%rsp), %r13
	leaq	48(%rsp), %r15
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_9:                               # %if.then.9
                                        #   in Loop: Header=BB13_1 Depth=1
	incq	40(%rsp)
.LBB13_1:                               # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	pdf_scan_token
	testl	%eax, %eax
	je	.LBB13_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	testl	%eax, %eax
	js	.LBB13_9
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rax
	movzbl	(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB13_1
# BB#4:                                 # %if.end.5
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	%rax, 40(%rsp)
	xorl	%r14d, %r14d
	movq	%r12, %rbp
	.align	16, 0x90
.LBB13_5:                               # %do.body.i
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	pdf_scan_token
	testl	%eax, %eax
	jle	.LBB13_6
# BB#10:                                # %if.end.i
                                        #   in Loop: Header=BB13_5 Depth=2
	movq	(%rbp), %rax
	movzbl	(%rax), %eax
	leal	-62(%rax), %ecx
	cmpl	$63, %ecx
	ja	.LBB13_11
# BB#12:                                # %if.end.i
                                        #   in Loop: Header=BB13_5 Depth=2
	movabsq	$-9223372034707292159, %rdx # imm = 0x8000000080000001
	btq	%rcx, %rdx
	jae	.LBB13_13
# BB#15:                                # %sw.bb.3.i
                                        #   in Loop: Header=BB13_5 Depth=2
	testl	%r14d, %r14d
	je	.LBB13_9
# BB#16:                                # %if.end.7.i
                                        #   in Loop: Header=BB13_5 Depth=2
	decl	%r14d
	jmp	.LBB13_17
.LBB13_13:                              # %if.end.i
                                        #   in Loop: Header=BB13_5 Depth=2
	movabsq	$2305843009750564864, %rdx # imm = 0x2000000020000000
	btq	%rcx, %rdx
	jb	.LBB13_14
	.align	16, 0x90
.LBB13_11:                              # %if.end.i
                                        #   in Loop: Header=BB13_5 Depth=2
	cmpl	$60, %eax
	jne	.LBB13_17
.LBB13_14:                              # %sw.bb.i
                                        #   in Loop: Header=BB13_5 Depth=2
	incl	%r14d
.LBB13_17:                              # %sw.epilog.i
                                        #   in Loop: Header=BB13_5 Depth=2
	testl	%r14d, %r14d
	movq	%r15, %rbp
	jne	.LBB13_5
	jmp	.LBB13_18
.LBB13_6:                               # %if.then.i
                                        #   in Loop: Header=BB13_1 Depth=1
	testl	%r14d, %r14d
	je	.LBB13_8
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB13_1 Depth=1
	testl	%eax, %eax
	jns	.LBB13_9
.LBB13_8:                               # %pdf_scan_token_composite.exit
                                        #   in Loop: Header=BB13_1 Depth=1
	testl	%eax, %eax
	js	.LBB13_9
.LBB13_18:                              # %cleanup
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rax
	movq	%rax, 24(%rsp)
	movq	40(%rsp), %rbp
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	movq	8(%rsp), %rdi           # 8-byte Reload
	leaq	24(%rsp), %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	pdf_refer_named
	testl	%eax, %eax
	js	.LBB13_1
# BB#19:                                # %cleanup.19.loopexit
	movq	%rbp, %rbx
	jmp	.LBB13_20
.LBB13_21:                              # %while.end
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	$0, (%rax)
.LBB13_20:                              # %cleanup.19
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdfmark_next_object, .Lfunc_end13-pdfmark_next_object
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_create_named"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"{Page%d}"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"{ThisPage}"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"{NextPage}"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"{PrevPage}"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pdf_push_namespace(local_named_objects)"
	.size	.L.str.5, 40

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdf_push_namespace(NI_stack)"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pdf_pop_namespace(local_named_objects)"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pdf_pop_namespace(NI_stack)"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" %ld 0 R "
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"pdf_replace_names"
	.size	.L.str.10, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
