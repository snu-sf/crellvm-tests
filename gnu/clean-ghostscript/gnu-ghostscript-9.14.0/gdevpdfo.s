	.text
	.file	"gdevpdfo.bc"
	.globl	cos_object_memory
	.align	16, 0x90
	.type	cos_object_memory,@function
cos_object_memory:                      # @cos_object_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rax
	movq	1728(%rax), %rax
	retq
.Lfunc_end0:
	.size	cos_object_memory, .Lfunc_end0-cos_object_memory
	.cfi_endproc

	.globl	cos_become
	.align	16, 0x90
	.type	cos_become,@function
cos_become:                             # @cos_become
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$cos_generic_procs, %ecx
	movl	$-20, %eax
	cmpq	%rcx, (%rdi)
	jne	.LBB1_2
# BB#1:                                 # %if.end
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
.LBB1_2:                                # %return
	retq
.Lfunc_end1:
	.size	cos_become, .Lfunc_end1-cos_become
	.cfi_endproc

	.globl	cos_release
	.align	16, 0x90
	.type	cos_release,@function
cos_release:                            # @cos_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	cos_release, .Lfunc_end2-cos_release
	.cfi_endproc

	.globl	cos_free
	.align	16, 0x90
	.type	cos_free,@function
cos_free:                               # @cos_free
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	callq	*(%rax)
	movq	32(%rbx), %rax
	movq	1728(%rax), %rdi
	movq	24(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	cos_free, .Lfunc_end3-cos_free
	.cfi_endproc

	.globl	cos_write
	.align	16, 0x90
	.type	cos_write,@function
cos_write:                              # @cos_write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	cos_write, .Lfunc_end4-cos_write
	.cfi_endproc

	.globl	cos_write_object
	.align	16, 0x90
	.type	cos_write_object,@function
cos_write_object:                       # @cos_write_object
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
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_3
# BB#1:                                 # %lor.lhs.false
	cmpb	$0, 50(%rbx)
	je	.LBB5_2
.LBB5_3:                                # %cleanup
	movl	$-100, %eax
	jmp	.LBB5_4
.LBB5_2:                                # %if.end
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	pdf_open_separate
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*8(%rax)
	movl	%eax, %r15d
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	pdf_end_separate
	movb	$1, 50(%rbx)
	movl	%r15d, %eax
.LBB5_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cos_write_object, .Lfunc_end5-cos_write_object
	.cfi_endproc

	.globl	cos_string_value
	.align	16, 0x90
	.type	cos_string_value,@function
cos_string_value:                       # @cos_string_value
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8(%rdi)
	movl	%edx, 16(%rdi)
	movl	$0, (%rdi)
	movq	%rdi, %rax
	retq
.Lfunc_end6:
	.size	cos_string_value, .Lfunc_end6-cos_string_value
	.cfi_endproc

	.globl	cos_c_string_value
	.align	16, 0x90
	.type	cos_c_string_value,@function
cos_c_string_value:                     # @cos_c_string_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, 8(%rbx)
	movq	%rsi, %rdi
	callq	strlen
	movl	%eax, 16(%rbx)
	movl	$1, (%rbx)
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	cos_c_string_value, .Lfunc_end7-cos_c_string_value
	.cfi_endproc

	.globl	cos_object_value
	.align	16, 0x90
	.type	cos_object_value,@function
cos_object_value:                       # @cos_object_value
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8(%rdi)
	movl	$2, (%rdi)
	movq	%rdi, %rax
	retq
.Lfunc_end8:
	.size	cos_object_value, .Lfunc_end8-cos_object_value
	.cfi_endproc

	.globl	cos_resource_value
	.align	16, 0x90
	.type	cos_resource_value,@function
cos_resource_value:                     # @cos_resource_value
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8(%rdi)
	movl	$3, (%rdi)
	movq	%rdi, %rax
	retq
.Lfunc_end9:
	.size	cos_resource_value, .Lfunc_end9-cos_resource_value
	.cfi_endproc

	.globl	cos_value_free
	.align	16, 0x90
	.type	cos_value_free,@function
cos_value_free:                         # @cos_value_free
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
	movq	%rdx, %r14
	movl	(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB10_1
# BB#3:                                 # %sw.bb.4
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB10_5
# BB#4:                                 # %if.then
	cmpq	$0, 8(%rbx)
	jne	.LBB10_5
# BB#6:                                 # %if.then.8
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	32(%rbx), %rax
	movq	1728(%rax), %rdi
	movq	24(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB10_1:                               # %entry
	testl	%eax, %eax
	jne	.LBB10_5
# BB#2:                                 # %sw.bb
	movq	32(%rsi), %rax
	movq	1728(%rax), %rax
	movq	160(%rax), %r8
	movq	8(%rdi), %rsi
	movl	16(%rdi), %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%r8                    # TAILCALL
.LBB10_5:                               # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	cos_value_free, .Lfunc_end10-cos_value_free
	.cfi_endproc

	.globl	cos_value_write
	.align	16, 0x90
	.type	cos_value_write,@function
cos_value_write:                        # @cos_value_write
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	cos_value_write_spaced  # TAILCALL
.Lfunc_end11:
	.size	cos_value_write, .Lfunc_end11-cos_value_write
	.cfi_endproc

	.align	16, 0x90
	.type	cos_value_write_spaced,@function
cos_value_write_spaced:                 # @cos_value_write_spaced
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -48
.Ltmp27:
	.cfi_offset %r12, -40
.Ltmp28:
	.cfi_offset %r13, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	5848(%r13), %r14
	movl	(%rbx), %ecx
	cmpl	$2, %ecx
	jae	.LBB12_1
# BB#4:                                 # %sw.bb
	testl	%edx, %edx
	je	.LBB12_8
# BB#5:                                 # %if.then
	movq	8(%rbx), %rax
	movzbl	(%rax), %eax
	cmpl	$60, %eax
	ja	.LBB12_7
# BB#6:                                 # %if.then
	movabsq	$1153063341606830080, %rcx # imm = 0x1000810000000000
	btq	%rax, %rcx
	jb	.LBB12_8
.LBB12_7:                               # %sw.default
	movl	$32, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB12_8:                               # %if.end
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	movq	%r13, %rdi
	movq	%r15, %rcx
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	pdf_write_value         # TAILCALL
.LBB12_1:                               # %entry
	jne	.LBB12_2
# BB#9:                                 # %sw.bb.11
	movq	8(%rbx), %r12
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB12_10
# BB#15:                                # %if.end.26
	testl	%edx, %edx
	je	.LBB12_17
# BB#16:                                # %if.then.28
	movl	$32, %esi
	movq	%r14, %rdi
	callq	spputc
	movq	8(%r12), %rax
.LBB12_17:                              # %if.end.30
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	movl	$cos_reference_procs, %ecx
	xorl	%eax, %eax
	cmpq	%rcx, (%r12)
	jne	.LBB12_19
# BB#18:                                # %if.then.36
	movq	$0, 8(%r12)
	jmp	.LBB12_19
.LBB12_2:                               # %entry
	movl	$-100, %eax
	cmpl	$3, %ecx
	jne	.LBB12_19
# BB#3:                                 # %sw.bb.8
	movq	8(%rbx), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	pprintld1
	xorl	%eax, %eax
.LBB12_19:                              # %cleanup.41
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB12_10:                              # %if.then.16
	testl	%edx, %edx
	je	.LBB12_14
# BB#11:                                # %land.lhs.true
	movq	(%r12), %rax
	movl	$cos_array_procs, %ecx
	cmpq	%rcx, %rax
	je	.LBB12_14
# BB#12:                                # %land.lhs.true
	movl	$cos_dict_procs, %ecx
	cmpq	%rcx, %rax
	je	.LBB12_14
# BB#13:                                # %if.then.22
	movl	$32, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB12_14:                              # %cleanup
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end12:
	.size	cos_value_write_spaced, .Lfunc_end12-cos_value_write_spaced
	.cfi_endproc

	.align	16, 0x90
	.type	cos_generic_release,@function
cos_generic_release:                    # @cos_generic_release
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end13:
	.size	cos_generic_release, .Lfunc_end13-cos_generic_release
	.cfi_endproc

	.align	16, 0x90
	.type	cos_generic_write,@function
cos_generic_write:                      # @cos_generic_write
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-100, %eax
	retq
.Lfunc_end14:
	.size	cos_generic_write, .Lfunc_end14-cos_generic_write
	.cfi_endproc

	.align	16, 0x90
	.type	cos_generic_equal,@function
cos_generic_equal:                      # @cos_generic_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-100, %eax
	retq
.Lfunc_end15:
	.size	cos_generic_equal, .Lfunc_end15-cos_generic_equal
	.cfi_endproc

	.align	16, 0x90
	.type	cos_generic_hash,@function
cos_generic_hash:                       # @cos_generic_hash
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-100, %eax
	retq
.Lfunc_end16:
	.size	cos_generic_hash, .Lfunc_end16-cos_generic_hash
	.cfi_endproc

	.align	16, 0x90
	.type	cos_reference_release,@function
cos_reference_release:                  # @cos_reference_release
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end17:
	.size	cos_reference_release, .Lfunc_end17-cos_reference_release
	.cfi_endproc

	.globl	cos_object_alloc
	.align	16, 0x90
	.type	cos_object_alloc,@function
cos_object_alloc:                       # @cos_object_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	movl	$st_cos_object, %esi
	movq	%rax, %rdx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB18_2
# BB#1:                                 # %if.then.i
	movq	$cos_generic_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%r14, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	movq	%rbx, %rdi
	addq	$164, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
.LBB18_2:                               # %cos_object_init.exit
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	cos_object_alloc, .Lfunc_end18-cos_object_alloc
	.cfi_endproc

	.globl	cos_reference_alloc
	.align	16, 0x90
	.type	cos_reference_alloc,@function
cos_reference_alloc:                    # @cos_reference_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -24
.Ltmp40:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	movl	$st_cos_object, %esi
	movq	%rax, %rdx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB19_2
# BB#1:                                 # %if.then.i
	movq	$cos_reference_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%r14, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	movq	%rbx, %rdi
	addq	$164, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
.LBB19_2:                               # %cos_object_init.exit
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	cos_reference_alloc, .Lfunc_end19-cos_reference_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	cos_array_release,@function
cos_array_release:                      # @cos_array_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 64
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	16(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB20_9
# BB#1:                                 # %for.body.lr.ph
	movq	32(%r14), %rax
	movq	1728(%rax), %r12
	.align	16, 0x90
.LBB20_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rbx
	movq	(%rbx), %rbp
	movl	16(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB20_3
# BB#5:                                 # %sw.bb.4.i
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	24(%rbx), %r13
	testq	%r13, %r13
	je	.LBB20_8
# BB#6:                                 # %if.then.i
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpq	$0, 8(%r13)
	jne	.LBB20_8
# BB#7:                                 # %if.then.8.i
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	32(%r13), %rax
	movq	1728(%rax), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	*24(%rdi)
	jmp	.LBB20_8
	.align	16, 0x90
.LBB20_3:                               # %for.body
                                        #   in Loop: Header=BB20_2 Depth=1
	testl	%eax, %eax
	jne	.LBB20_8
# BB#4:                                 # %sw.bb.i
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	32(%r14), %rax
	movq	1728(%rax), %rdi
	movq	24(%rbx), %rsi
	movl	32(%rbx), %edx
	movq	%r15, %rcx
	callq	*160(%rdi)
.LBB20_8:                               # %cos_value_free.exit
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*24(%r12)
	testq	%rbp, %rbp
	jne	.LBB20_2
.LBB20_9:                               # %for.end
	movq	$0, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	cos_array_release, .Lfunc_end20-cos_array_release
	.cfi_endproc

	.align	16, 0x90
	.type	cos_array_write,@function
cos_array_write:                        # @cos_array_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 96
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	5848(%r12), %rbx
	movq	16(%rbp), %rax
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB21_1
	.align	16, 0x90
.LBB21_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rcx
	movq	%rax, %r13
	movq	(%r13), %rax
	movq	%rcx, (%r13)
	testq	%rax, %rax
	jne	.LBB21_2
# BB#3:                                 # %for.body.lr.ph
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	movq	%r13, %rbp
	jmp	.LBB21_4
.LBB21_8:                               # %if.then
                                        #   in Loop: Header=BB21_4 Depth=1
	cmpl	$2, %eax
	je	.LBB21_9
# BB#12:                                # %sw.default
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	24(%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	gs_revision_number
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.24, %esi
	jmp	.LBB21_13
	.align	16, 0x90
.LBB21_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_17 Depth 2
	incl	%eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	cmpl	$8192, %eax             # imm = 0x2000
	jb	.LBB21_14
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	9564(%r12), %eax
	testl	%eax, %eax
	je	.LBB21_14
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	30724(%r12), %eax
	testl	%eax, %eax
	je	.LBB21_10
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB21_4 Depth=1
	cmpl	$1, %eax
	jne	.LBB21_8
# BB#11:                                # %sw.bb.8
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	24(%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	gs_revision_number
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.22, %esi
	jmp	.LBB21_13
	.align	16, 0x90
.LBB21_10:                              # %sw.bb
                                        #   in Loop: Header=BB21_4 Depth=1
	movq	24(%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	gs_revision_number
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.21, %esi
.LBB21_13:                              # %if.end
                                        #   in Loop: Header=BB21_4 Depth=1
	xorl	%eax, %eax
	callq	errprintf
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 9564(%r12)
.LBB21_14:                              # %if.end
                                        #   in Loop: Header=BB21_4 Depth=1
	cmpq	%r13, %rbp
	je	.LBB21_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB21_16:                              # %for.cond.33.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	%r14d, %eax
	cmpq	%rax, 8(%rbp)
	jle	.LBB21_18
	.align	16, 0x90
.LBB21_17:                              # %for.body.36
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	incl	%r14d
	cmpq	%r14, 8(%rbp)
	jg	.LBB21_17
.LBB21_18:                              # %for.end
                                        #   in Loop: Header=BB21_4 Depth=1
	leaq	16(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	cos_value_write_spaced
	incl	%r14d
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	movl	36(%rsp), %eax          # 4-byte Reload
	jne	.LBB21_4
	jmp	.LBB21_19
.LBB21_1:                               # %for.end.42.thread
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	16(%rbp), %r13
	xorl	%r15d, %r15d
	testq	%r13, %r13
	je	.LBB21_20
	.align	16, 0x90
.LBB21_19:                              # %for.body.i.45
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rax
	movq	(%rax), %r13
	movq	%r15, (%rax)
	testq	%r13, %r13
	movq	%rax, %r15
	jne	.LBB21_19
.LBB21_20:                              # %cos_array_reorder.exit47
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	xorl	%ebp, %ebp
	cmpl	$0, 9564(%r12)
	je	.LBB21_22
# BB#21:                                # %if.then.48
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	stream_puts
.LBB21_22:                              # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_9:                               # %sw.bb.16
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-13, %ebp
	jmp	.LBB21_22
.Lfunc_end21:
	.size	cos_array_write, .Lfunc_end21-cos_array_write
	.cfi_endproc

	.align	16, 0x90
	.type	cos_array_equal,@function
cos_array_equal:                        # @cos_array_equal
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
	pushq	%r13
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 64
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	cmpl	$0, 160(%r13)
	jne	.LBB22_8
# BB#1:                                 # %if.then
	leaq	72(%r13), %rbx
	movq	%rbx, %rdi
	callq	gs_md5_init
	leaq	164(%r13), %r12
	movq	16(%r13), %rbp
	jmp	.LBB22_2
	.align	16, 0x90
.LBB22_19:                              # %sw.bb.i.i
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	24(%rbp), %rsi
	movl	32(%rbp), %edx
	movq	%rbx, %rdi
	callq	gs_md5_append
	movq	(%rbp), %rbp
.LBB22_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB22_7
# BB#3:                                 # %for.body.i
                                        #   in Loop: Header=BB22_2 Depth=1
	cmpl	$2, 16(%rbp)
	jb	.LBB22_19
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB22_2 Depth=1
	jne	.LBB22_6
# BB#5:                                 # %sw.bb.3.i.i
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	24(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB22_18
.LBB22_6:                               # %for.inc.i
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	(%rbp), %rbp
	jmp	.LBB22_2
.LBB22_7:                               # %if.end
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gs_md5_finish
	movl	$1, 160(%r13)
.LBB22_8:                               # %if.end.7
	cmpl	$0, 160(%r14)
	je	.LBB22_10
# BB#9:                                 # %if.end.7.if.end.23_crit_edge
	addq	$164, %r14
	movq	%r14, %r12
	jmp	.LBB22_17
.LBB22_10:                              # %if.then.10
	leaq	72(%r14), %rbx
	movq	%rbx, %rdi
	callq	gs_md5_init
	leaq	164(%r14), %r12
	movq	16(%r14), %rbp
	jmp	.LBB22_11
	.align	16, 0x90
.LBB22_20:                              # %sw.bb.i.i.32
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	24(%rbp), %rsi
	movl	32(%rbp), %edx
	movq	%rbx, %rdi
	callq	gs_md5_append
	movq	(%rbp), %rbp
.LBB22_11:                              # %if.then.10
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB22_16
# BB#12:                                # %for.body.i.29
                                        #   in Loop: Header=BB22_11 Depth=1
	cmpl	$2, 16(%rbp)
	jb	.LBB22_20
# BB#13:                                # %for.body.i.29
                                        #   in Loop: Header=BB22_11 Depth=1
	jne	.LBB22_15
# BB#14:                                # %sw.bb.3.i.i.39
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	24(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB22_18
.LBB22_15:                              # %for.inc.i.43
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	(%rbp), %rbp
	jmp	.LBB22_11
.LBB22_16:                              # %if.end.18
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gs_md5_finish
	movl	$1, 160(%r14)
.LBB22_17:                              # %if.end.23
	addq	$164, %r13
	movl	$16, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.LBB22_18:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	cos_array_equal, .Lfunc_end22-cos_array_equal
	.cfi_endproc

	.align	16, 0x90
	.type	cos_array_hash,@function
cos_array_hash:                         # @cos_array_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 48
.Ltmp85:
	.cfi_offset %rbx, -40
.Ltmp86:
	.cfi_offset %r12, -32
.Ltmp87:
	.cfi_offset %r14, -24
.Ltmp88:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	16(%rdi), %rbx
	jmp	.LBB23_1
	.align	16, 0x90
.LBB23_8:                               # %sw.bb.i
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	24(%rbx), %rsi
	movl	32(%rbx), %edx
	movq	%r12, %rdi
	callq	gs_md5_append
	movq	(%rbx), %rbx
.LBB23_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB23_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$2, 16(%rbx)
	jb	.LBB23_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	jne	.LBB23_5
# BB#4:                                 # %sw.bb.3.i
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	24(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB23_7
.LBB23_5:                               # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	(%rbx), %rbx
	jmp	.LBB23_1
.LBB23_6:
	xorl	%eax, %eax
.LBB23_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end23:
	.size	cos_array_hash, .Lfunc_end23-cos_array_hash
	.cfi_endproc

	.globl	cos_array_alloc
	.align	16, 0x90
	.type	cos_array_alloc,@function
cos_array_alloc:                        # @cos_array_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp91:
	.cfi_def_cfa_offset 32
.Ltmp92:
	.cfi_offset %rbx, -24
.Ltmp93:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	movl	$st_cos_object, %esi
	movq	%rax, %rdx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB24_2
# BB#1:                                 # %if.then.i
	movq	$cos_array_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%r14, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	movq	%rbx, %rdi
	addq	$164, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
.LBB24_2:                               # %cos_object_init.exit
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	cos_array_alloc, .Lfunc_end24-cos_array_alloc
	.cfi_endproc

	.globl	cos_array_from_floats
	.align	16, 0x90
	.type	cos_array_from_floats,@function
cos_array_from_floats:                  # @cos_array_from_floats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 48
.Ltmp99:
	.cfi_offset %rbx, -48
.Ltmp100:
	.cfi_offset %r12, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	1728(%rbp), %rdi
	movl	$st_cos_object, %esi
	movq	%r14, %rdx
	callq	*72(%rdi)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB25_6
# BB#1:                                 # %cos_array_alloc.exit.thread
	movq	%rax, %rbx
	movq	$cos_array_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%rbp, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	addq	$164, %rax
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rax, %rdi
	callq	memset
	testl	%r12d, %r12d
	je	.LBB25_6
# BB#2:                                 # %for.body.lr.ph
	movl	%r12d, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB25_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r15,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cos_array_add_real
	testl	%eax, %eax
	js	.LBB25_5
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB25_4 Depth=1
	incq	%rbp
	cmpq	%r12, %rbp
	jb	.LBB25_4
	jmp	.LBB25_6
.LBB25_5:                               # %if.then.5
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	32(%rbx), %rax
	movq	1728(%rax), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*24(%rdi)
	xorl	%ebx, %ebx
.LBB25_6:                               # %cleanup.7
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	cos_array_from_floats, .Lfunc_end25-cos_array_from_floats
	.cfi_endproc

	.globl	cos_array_add_real
	.align	16, 0x90
	.type	cos_array_add_real,@function
cos_array_add_real:                     # @cos_array_add_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp110:
	.cfi_def_cfa_offset 512
.Ltmp111:
	.cfi_offset %rbx, -56
.Ltmp112:
	.cfi_offset %r12, -48
.Ltmp113:
	.cfi_offset %r13, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	xorl	%r14d, %r14d
	leaq	16(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	s_init
	leaq	368(%rsp), %rbx
	movl	$50, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	swrite_string
	movl	$.L.str.3, %esi
	movq	%rbp, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbp, %rdi
	callq	stell
	movq	%rax, %r15
	movl	$0, 160(%r12)
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.LBB26_2
# BB#1:                                 # %cond.true.i.i
	movq	8(%rax), %r14
	incq	%r14
.LBB26_2:                               # %if.then.i.11.i
	movq	32(%r12), %rax
	movq	1728(%rax), %r13
	movl	$0, 432(%rsp)
	movq	%rbx, 440(%rsp)
	movl	%r15d, 448(%rsp)
	movl	$.L.str.27, %edx
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	*136(%r13)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB26_5
# BB#3:                                 # %if.then.i
	movl	%r15d, %edx
	leaq	368(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, 440(%rsp)
	leaq	432(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	cos_array_put_no_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB26_5
# BB#4:                                 # %if.then.i.i
	movl	$.L.str.28, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	*160(%r13)
.LBB26_5:                               # %cos_array_put.exit
	movl	$0, 160(%r12)
	movl	%ebp, %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	cos_array_add_real, .Lfunc_end26-cos_array_add_real
	.cfi_endproc

	.globl	cos_array_put
	.align	16, 0x90
	.type	cos_array_put,@function
cos_array_put:                          # @cos_array_put
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp120:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp123:
	.cfi_def_cfa_offset 80
.Ltmp124:
	.cfi_offset %rbx, -56
.Ltmp125:
	.cfi_offset %r12, -48
.Ltmp126:
	.cfi_offset %r13, -40
.Ltmp127:
	.cfi_offset %r14, -32
.Ltmp128:
	.cfi_offset %r15, -24
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	32(%r12), %rax
	movq	1728(%rax), %r14
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movups	(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	cmpl	$0, (%rbx)
	jne	.LBB27_3
# BB#1:                                 # %if.then.i.11
	movl	16(%rbx), %esi
	movl	$.L.str.27, %edx
	movq	%r14, %rdi
	callq	*136(%r14)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB27_6
# BB#2:                                 # %if.end.i
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	movq	%r13, %rdi
	callq	memcpy
	movq	%r13, 8(%rsp)
.LBB27_3:                               # %if.then
	leaq	(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	cos_array_put_no_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB27_6
# BB#4:                                 # %if.then.4
	cmpl	$0, (%rsp)
	jne	.LBB27_6
# BB#5:                                 # %if.then.i
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	movl	$.L.str.28, %ecx
	movq	%r14, %rdi
	callq	*160(%r14)
.LBB27_6:                               # %if.end.5
	movl	$0, 160(%r12)
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	cos_array_put, .Lfunc_end27-cos_array_put
	.cfi_endproc

	.globl	cos_array_put_no_copy
	.align	16, 0x90
	.type	cos_array_put_no_copy,@function
cos_array_put_no_copy:                  # @cos_array_put_no_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp133:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp134:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp135:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp136:
	.cfi_def_cfa_offset 64
.Ltmp137:
	.cfi_offset %rbx, -56
.Ltmp138:
	.cfi_offset %r12, -48
.Ltmp139:
	.cfi_offset %r13, -40
.Ltmp140:
	.cfi_offset %r14, -32
.Ltmp141:
	.cfi_offset %r15, -24
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	16(%r15), %rbx
	movq	32(%r15), %rax
	movq	1728(%rax), %rdi
	leaq	16(%r15), %r13
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB28_4
# BB#1:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB28_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r12, 8(%rbx)
	jle	.LBB28_6
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	%rbx, %r13
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB28_2
	jmp	.LBB28_4
.LBB28_6:                               # %land.lhs.true
	jne	.LBB28_7
# BB#8:                                 # %if.then
	movl	16(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB28_9
# BB#11:                                # %sw.bb.4.i
	movq	24(%rbx), %r12
	testq	%r12, %r12
	je	.LBB28_14
# BB#12:                                # %if.then.i
	cmpq	$0, 8(%r12)
	jne	.LBB28_14
# BB#13:                                # %if.then.8.i
	movq	(%r12), %rax
	movl	$.L.str, %esi
	movq	%r12, %rdi
	callq	*(%rax)
	movq	32(%r12), %rax
	movq	1728(%rax), %rdi
	movl	$.L.str, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	jmp	.LBB28_14
.LBB28_7:
	movq	%rbx, %rbp
.LBB28_4:                               # %if.else
	movl	$st_cos_array_element, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB28_15
# BB#5:                                 # %if.end
	movq	%r12, 8(%rbx)
	movq	%rbp, (%rbx)
	movq	%rbx, (%r13)
.LBB28_14:                              # %if.end.12
	movq	16(%r14), %rax
	movq	%rax, 32(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 16(%rbx)
	movl	$0, 160(%r15)
	xorl	%eax, %eax
.LBB28_15:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_9:                               # %if.then
	testl	%eax, %eax
	jne	.LBB28_14
# BB#10:                                # %sw.bb.i
	movq	24(%rbx), %rsi
	movl	32(%rbx), %edx
	movl	$.L.str, %ecx
	callq	*160(%rdi)
	jmp	.LBB28_14
.Lfunc_end28:
	.size	cos_array_put_no_copy, .Lfunc_end28-cos_array_put_no_copy
	.cfi_endproc

	.globl	cos_array_add
	.align	16, 0x90
	.type	cos_array_add,@function
cos_array_add:                          # @cos_array_add
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	$0, 160(%rdi)
	movq	16(%rdi), %rcx
	xorl	%esi, %esi
	testq	%rcx, %rcx
	je	.LBB29_2
# BB#1:                                 # %cond.true.i
	movq	8(%rcx), %rsi
	incq	%rsi
.LBB29_2:                               # %cos_array_next_index.exit
	movq	%rax, %rdx
	jmp	cos_array_put           # TAILCALL
.Lfunc_end29:
	.size	cos_array_add, .Lfunc_end29-cos_array_add
	.cfi_endproc

	.globl	cos_array_add_no_copy
	.align	16, 0x90
	.type	cos_array_add_no_copy,@function
cos_array_add_no_copy:                  # @cos_array_add_no_copy
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	$0, 160(%rdi)
	movq	16(%rdi), %rcx
	xorl	%esi, %esi
	testq	%rcx, %rcx
	je	.LBB30_2
# BB#1:                                 # %cond.true.i
	movq	8(%rcx), %rsi
	incq	%rsi
.LBB30_2:                               # %cos_array_next_index.exit
	movq	%rax, %rdx
	jmp	cos_array_put_no_copy   # TAILCALL
.Lfunc_end30:
	.size	cos_array_add_no_copy, .Lfunc_end30-cos_array_add_no_copy
	.cfi_endproc

	.globl	cos_array_add_c_string
	.align	16, 0x90
	.type	cos_array_add_c_string,@function
cos_array_add_c_string:                 # @cos_array_add_c_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp145:
	.cfi_def_cfa_offset 48
.Ltmp146:
	.cfi_offset %rbx, -24
.Ltmp147:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rdi
	callq	strlen
	movl	$0, 160(%rbx)
	movq	16(%rbx), %rcx
	xorl	%esi, %esi
	testq	%rcx, %rcx
	je	.LBB31_2
# BB#1:                                 # %cond.true.i.i
	movq	8(%rcx), %rsi
	incq	%rsi
.LBB31_2:                               # %cos_array_put.exit
	movl	$1, (%rsp)
	movq	%r14, 8(%rsp)
	movl	%eax, 16(%rsp)
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	callq	cos_array_put_no_copy
	movl	$0, 160(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end31:
	.size	cos_array_add_c_string, .Lfunc_end31-cos_array_add_c_string
	.cfi_endproc

	.globl	cos_array_add_int
	.align	16, 0x90
	.type	cos_array_add_int,@function
cos_array_add_int:                      # @cos_array_add_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 96
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movl	%esi, %ecx
	movq	%rdi, %r13
	xorl	%r15d, %r15d
	leaq	3(%rsp), %rbx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r14
	movl	$0, 160(%r13)
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB32_2
# BB#1:                                 # %cond.true.i.i
	movq	8(%rax), %r15
	incq	%r15
.LBB32_2:                               # %if.then.i.11.i
	movq	32(%r13), %rax
	movq	1728(%rax), %r12
	movl	$0, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	$.L.str.27, %edx
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	*136(%r12)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB32_5
# BB#3:                                 # %if.then.i
	movl	%r14d, %edx
	leaq	3(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	cos_array_put_no_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB32_5
# BB#4:                                 # %if.then.i.i
	movl	$.L.str.28, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	*160(%r12)
.LBB32_5:                               # %cos_array_put.exit
	movl	$0, 160(%r13)
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	cos_array_add_int, .Lfunc_end32-cos_array_add_int
	.cfi_endproc

	.globl	cos_array_add_object
	.align	16, 0x90
	.type	cos_array_add_object,@function
cos_array_add_object:                   # @cos_array_add_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp162:
	.cfi_def_cfa_offset 48
.Ltmp163:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$0, 160(%rbx)
	movq	16(%rbx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB33_2
# BB#1:                                 # %cond.true.i.i
	movq	8(%rcx), %rax
	incq	%rax
.LBB33_2:                               # %cos_array_put.exit
	movl	$2, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movl	$0, 24(%rsp)
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	cos_array_put_no_copy
	movl	$0, 160(%rbx)
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end33:
	.size	cos_array_add_object, .Lfunc_end33-cos_array_add_object
	.cfi_endproc

	.globl	cos_array_unadd
	.align	16, 0x90
	.type	cos_array_unadd,@function
cos_array_unadd:                        # @cos_array_unadd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbx, -16
	movq	%rsi, %r8
	movq	%rdi, %rbx
	movq	16(%rbx), %rsi
	movl	$-15, %eax
	testq	%rsi, %rsi
	je	.LBB34_5
# BB#1:                                 # %lor.lhs.false
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	xorl	%edi, %edi
	testq	%rcx, %rcx
	je	.LBB34_3
# BB#2:                                 # %cond.false
	movq	8(%rcx), %rdi
	incq	%rdi
.LBB34_3:                               # %cond.end
	cmpq	%rdi, %rdx
	jne	.LBB34_5
# BB#4:                                 # %if.end
	movq	32(%rsi), %rax
	movq	%rax, 16(%r8)
	movups	16(%rsi), %xmm0
	movups	%xmm0, (%r8)
	movq	(%rsi), %rax
	movq	%rax, 16(%rbx)
	movq	32(%rbx), %rax
	movq	1728(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movl	$0, 160(%rbx)
	xorl	%eax, %eax
.LBB34_5:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end34:
	.size	cos_array_unadd, .Lfunc_end34-cos_array_unadd
	.cfi_endproc

	.globl	cos_array_element_first
	.align	16, 0x90
	.type	cos_array_element_first,@function
cos_array_element_first:                # @cos_array_element_first
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	retq
.Lfunc_end35:
	.size	cos_array_element_first, .Lfunc_end35-cos_array_element_first
	.cfi_endproc

	.globl	cos_array_element_next
	.align	16, 0x90
	.type	cos_array_element_next,@function
cos_array_element_next:                 # @cos_array_element_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	%rax, (%rsi)
	leaq	16(%rdi), %rax
	movq	%rax, (%rdx)
	movq	(%rdi), %rax
	retq
.Lfunc_end36:
	.size	cos_array_element_next, .Lfunc_end36-cos_array_element_next
	.cfi_endproc

	.align	16, 0x90
	.type	cos_dict_release,@function
cos_dict_release:                       # @cos_dict_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp169:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp172:
	.cfi_def_cfa_offset 64
.Ltmp173:
	.cfi_offset %rbx, -56
.Ltmp174:
	.cfi_offset %r12, -48
.Ltmp175:
	.cfi_offset %r13, -40
.Ltmp176:
	.cfi_offset %r14, -32
.Ltmp177:
	.cfi_offset %r15, -24
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB37_10
	.align	16, 0x90
.LBB37_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rbp
	movq	32(%r14), %rax
	movq	1728(%rax), %r12
	movl	32(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB37_2
# BB#4:                                 # %sw.bb.4.i
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	40(%rbx), %r13
	testq	%r13, %r13
	je	.LBB37_7
# BB#5:                                 # %if.then.i.13
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpq	$0, 8(%r13)
	jne	.LBB37_7
# BB#6:                                 # %if.then.8.i
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	32(%r13), %rax
	movq	1728(%rax), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	*24(%rdi)
	jmp	.LBB37_7
	.align	16, 0x90
.LBB37_2:                               # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	testl	%eax, %eax
	jne	.LBB37_7
# BB#3:                                 # %sw.bb.i
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	40(%rbx), %rsi
	movl	48(%rbx), %edx
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	*160(%r12)
.LBB37_7:                               # %cos_value_free.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	$0, 24(%rbx)
	je	.LBB37_9
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	*160(%r12)
.LBB37_9:                               # %cos_dict_element_free.exit
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*24(%r12)
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.LBB37_1
.LBB37_10:                              # %for.end
	movq	$0, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	cos_dict_release, .Lfunc_end37-cos_dict_release
	.cfi_endproc

	.align	16, 0x90
	.type	cos_dict_write,@function
cos_dict_write:                         # @cos_dict_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp179:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp181:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp182:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp183:
	.cfi_def_cfa_offset 48
.Ltmp184:
	.cfi_offset %rbx, -40
.Ltmp185:
	.cfi_offset %r12, -32
.Ltmp186:
	.cfi_offset %r14, -24
.Ltmp187:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	5848(%r15), %rbx
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	16(%r12), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	cos_elements_write
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	cmpl	$0, 9564(%r15)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	stream_puts
.LBB38_2:                               # %if.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end38:
	.size	cos_dict_write, .Lfunc_end38-cos_dict_write
	.cfi_endproc

	.align	16, 0x90
	.type	cos_dict_equal,@function
cos_dict_equal:                         # @cos_dict_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp189:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp190:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp191:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp192:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp194:
	.cfi_def_cfa_offset 64
.Ltmp195:
	.cfi_offset %rbx, -56
.Ltmp196:
	.cfi_offset %r12, -48
.Ltmp197:
	.cfi_offset %r13, -40
.Ltmp198:
	.cfi_offset %r14, -32
.Ltmp199:
	.cfi_offset %r15, -24
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpl	$0, 160(%r12)
	jne	.LBB39_8
# BB#1:                                 # %if.then
	leaq	72(%r12), %rbx
	movq	%rbx, %rdi
	callq	gs_md5_init
	leaq	164(%r12), %r13
	movq	16(%r12), %rbp
	jmp	.LBB39_2
	.align	16, 0x90
.LBB39_18:                              # %sw.bb.i.i
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	40(%rbp), %rsi
	movl	48(%rbp), %edx
	movq	%rbx, %rdi
	callq	gs_md5_append
	movq	(%rbp), %rbp
.LBB39_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB39_7
# BB#3:                                 # %for.body.i
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	8(%rbp), %rsi
	movl	16(%rbp), %edx
	movq	%rbx, %rdi
	callq	gs_md5_append
	cmpl	$2, 32(%rbp)
	jb	.LBB39_18
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB39_2 Depth=1
	jne	.LBB39_6
# BB#5:                                 # %sw.bb.3.i.i
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	40(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	*24(%rax)
.LBB39_6:                               # %cos_value_hash.exit.i
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	(%rbp), %rbp
	jmp	.LBB39_2
.LBB39_7:                               # %cos_dict_hash.exit
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gs_md5_finish
	movl	$1, 160(%r12)
.LBB39_8:                               # %if.end.7
	cmpl	$0, 160(%r14)
	je	.LBB39_10
# BB#9:                                 # %if.end.7.if.end.23_crit_edge
	addq	$164, %r14
	movq	%r14, %r13
	jmp	.LBB39_17
.LBB39_10:                              # %if.then.10
	leaq	72(%r14), %rbx
	movq	%rbx, %rdi
	callq	gs_md5_init
	leaq	164(%r14), %r13
	movq	16(%r14), %rbp
	jmp	.LBB39_11
	.align	16, 0x90
.LBB39_19:                              # %sw.bb.i.i.32
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	40(%rbp), %rsi
	movl	48(%rbp), %edx
	movq	%rbx, %rdi
	callq	gs_md5_append
	movq	(%rbp), %rbp
.LBB39_11:                              # %if.then.10
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB39_16
# BB#12:                                # %for.body.i.29
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	8(%rbp), %rsi
	movl	16(%rbp), %edx
	movq	%rbx, %rdi
	callq	gs_md5_append
	cmpl	$2, 32(%rbp)
	jb	.LBB39_19
# BB#13:                                # %for.body.i.29
                                        #   in Loop: Header=BB39_11 Depth=1
	jne	.LBB39_15
# BB#14:                                # %sw.bb.3.i.i.38
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	40(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	*24(%rax)
.LBB39_15:                              # %cos_value_hash.exit.i.42
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	(%rbp), %rbp
	jmp	.LBB39_11
.LBB39_16:                              # %cos_dict_hash.exit43
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gs_md5_finish
	movl	$1, 160(%r14)
.LBB39_17:                              # %if.end.23
	addq	$164, %r12
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	cos_dict_equal, .Lfunc_end39-cos_dict_equal
	.cfi_endproc

	.align	16, 0x90
	.type	cos_dict_hash,@function
cos_dict_hash:                          # @cos_dict_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp203:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp204:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp205:
	.cfi_def_cfa_offset 48
.Ltmp206:
	.cfi_offset %rbx, -40
.Ltmp207:
	.cfi_offset %r12, -32
.Ltmp208:
	.cfi_offset %r14, -24
.Ltmp209:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	16(%rdi), %rbx
	jmp	.LBB40_1
	.align	16, 0x90
.LBB40_7:                               # %sw.bb.i
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	40(%rbx), %rsi
	movl	48(%rbx), %edx
	movq	%r12, %rdi
	callq	gs_md5_append
	movq	(%rbx), %rbx
.LBB40_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB40_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	movq	%r12, %rdi
	callq	gs_md5_append
	cmpl	$2, 32(%rbx)
	jb	.LBB40_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	jne	.LBB40_5
# BB#4:                                 # %sw.bb.3.i
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*24(%rax)
.LBB40_5:                               # %cos_value_hash.exit
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	(%rbx), %rbx
	jmp	.LBB40_1
.LBB40_6:                               # %for.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end40:
	.size	cos_dict_hash, .Lfunc_end40-cos_dict_hash
	.cfi_endproc

	.globl	cos_dict_alloc
	.align	16, 0x90
	.type	cos_dict_alloc,@function
cos_dict_alloc:                         # @cos_dict_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp210:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp211:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp212:
	.cfi_def_cfa_offset 32
.Ltmp213:
	.cfi_offset %rbx, -24
.Ltmp214:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	movl	$st_cos_object, %esi
	movq	%rax, %rdx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB41_2
# BB#1:                                 # %if.then.i
	movq	$cos_dict_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%r14, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	movq	%rbx, %rdi
	addq	$164, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
.LBB41_2:                               # %cos_object_init.exit
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end41:
	.size	cos_dict_alloc, .Lfunc_end41-cos_dict_alloc
	.cfi_endproc

	.globl	cos_dict_delete_c_key
	.align	16, 0x90
	.type	cos_dict_delete_c_key,@function
cos_dict_delete_c_key:                  # @cos_dict_delete_c_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp216:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp217:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp218:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp219:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp220:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp221:
	.cfi_def_cfa_offset 64
.Ltmp222:
	.cfi_offset %rbx, -56
.Ltmp223:
	.cfi_offset %r12, -48
.Ltmp224:
	.cfi_offset %r13, -40
.Ltmp225:
	.cfi_offset %r14, -32
.Ltmp226:
	.cfi_offset %r15, -24
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	16(%r14), %rax
	movl	$-1, %r15d
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB42_15
	.align	16, 0x90
.LBB42_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	8(%rbx), %rdx
	movl	16(%rbx), %ecx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB42_2
# BB#14:                                # %if.end.7.i
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	(%rbx), %rax
	testq	%rax, %rax
	movq	%rbx, %rbp
	jne	.LBB42_1
	jmp	.LBB42_15
.LBB42_2:                               # %if.then.i
	testq	%rbp, %rbp
	movq	(%rbx), %rax
	je	.LBB42_4
# BB#3:                                 # %if.then.3.i
	movq	%rax, (%rbp)
	jmp	.LBB42_5
.LBB42_4:                               # %if.else.i
	movq	%rax, 16(%r14)
.LBB42_5:                               # %if.end.i
	movq	32(%r14), %rax
	movq	1728(%rax), %r14
	movl	32(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB42_6
# BB#8:                                 # %sw.bb.4.i.i
	movq	40(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB42_11
# BB#9:                                 # %if.then.i.17.i
	cmpq	$0, 8(%rbp)
	jne	.LBB42_11
# BB#10:                                # %if.then.8.i.i
	movq	(%rbp), %rax
	movl	$.L.str.32, %esi
	movq	%rbp, %rdi
	callq	*(%rax)
	movq	32(%rbp), %rax
	movq	1728(%rax), %rdi
	movl	$.L.str.32, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB42_11
.LBB42_6:                               # %if.end.i
	testl	%eax, %eax
	jne	.LBB42_11
# BB#7:                                 # %sw.bb.i.i
	movq	40(%rbx), %rsi
	movl	48(%rbx), %edx
	movl	$.L.str.32, %ecx
	movq	%r14, %rdi
	callq	*160(%r14)
.LBB42_11:                              # %cos_value_free.exit.i
	cmpl	$0, 24(%rbx)
	je	.LBB42_13
# BB#12:                                # %if.then.i.i
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	movl	$.L.str.32, %ecx
	movq	%r14, %rdi
	callq	*160(%r14)
.LBB42_13:                              # %cos_dict_element_free.exit.i
	movl	$.L.str.32, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	xorl	%r15d, %r15d
.LBB42_15:                              # %cos_dict_delete.exit
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	cos_dict_delete_c_key, .Lfunc_end42-cos_dict_delete_c_key
	.cfi_endproc

	.globl	cos_dict_elements_write
	.align	16, 0x90
	.type	cos_dict_elements_write,@function
cos_dict_elements_write:                # @cos_dict_elements_write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	5848(%rax), %rdx
	movq	8(%rdi), %r8
	movq	16(%rdi), %rsi
	movl	$1, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	jmp	cos_elements_write      # TAILCALL
.Lfunc_end43:
	.size	cos_dict_elements_write, .Lfunc_end43-cos_dict_elements_write
	.cfi_endproc

	.align	16, 0x90
	.type	cos_elements_write,@function
cos_elements_write:                     # @cos_elements_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp229:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp230:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp231:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp232:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp233:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp234:
	.cfi_def_cfa_offset 96
.Ltmp235:
	.cfi_offset %rbx, -56
.Ltmp236:
	.cfi_offset %r12, -48
.Ltmp237:
	.cfi_offset %r13, -40
.Ltmp238:
	.cfi_offset %r14, -32
.Ltmp239:
	.cfi_offset %r15, -24
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movl	%ecx, %r14d
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	%r12, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB44_20
# BB#1:                                 # %if.then
	movq	5848(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r12, 5848(%rbx)
	xorl	%r15d, %r15d
	jmp	.LBB44_2
.LBB44_9:                               # %if.then.11
                                        #   in Loop: Header=BB44_2 Depth=1
	cmpl	$2, %eax
	je	.LBB44_10
# BB#13:                                # %sw.default
                                        #   in Loop: Header=BB44_2 Depth=1
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.36, %esi
	jmp	.LBB44_14
	.align	16, 0x90
.LBB44_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	9672(%rbx), %esi
	testl	%esi, %esi
	je	.LBB44_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB44_2 Depth=1
	movq	9664(%rbx), %rdi
	movq	8(%rbp), %rdx
	movl	16(%rbp), %ecx
	callq	bytes_compare
	movq	$-1, %r13
	testl	%eax, %eax
	je	.LBB44_5
.LBB44_4:                               # %cond.true
                                        #   in Loop: Header=BB44_2 Depth=1
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB44_5:                               # %cond.end
                                        #   in Loop: Header=BB44_2 Depth=1
	cmpl	$4095, %r15d            # imm = 0xFFF
	jl	.LBB44_15
# BB#6:                                 # %cond.end
                                        #   in Loop: Header=BB44_2 Depth=1
	movl	9564(%rbx), %eax
	testl	%eax, %eax
	je	.LBB44_15
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB44_2 Depth=1
	movl	30724(%rbx), %eax
	testl	%eax, %eax
	je	.LBB44_11
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB44_2 Depth=1
	cmpl	$1, %eax
	jne	.LBB44_9
# BB#12:                                # %sw.bb.17
                                        #   in Loop: Header=BB44_2 Depth=1
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.34, %esi
	jmp	.LBB44_14
	.align	16, 0x90
.LBB44_11:                              # %sw.bb
                                        #   in Loop: Header=BB44_2 Depth=1
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.33, %esi
.LBB44_14:                              # %if.end
                                        #   in Loop: Header=BB44_2 Depth=1
	xorl	%eax, %eax
	callq	errprintf
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 9564(%rbx)
	movl	28(%rsp), %r14d         # 4-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
.LBB44_15:                              # %if.end
                                        #   in Loop: Header=BB44_2 Depth=1
	movq	8(%rbp), %rsi
	movl	16(%rbp), %edx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	pdf_write_value
	leaq	32(%rbp), %rdi
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%r13, %rcx
	callq	cos_value_write_spaced
	testl	%r14d, %r14d
	movq	(%rbp), %rbp
	jne	.LBB44_17
# BB#16:                                # %if.end
                                        #   in Loop: Header=BB44_2 Depth=1
	testq	%rbp, %rbp
	je	.LBB44_18
.LBB44_17:                              # %if.then.47
                                        #   in Loop: Header=BB44_2 Depth=1
	movl	$10, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB44_18:                              # %cleanup
                                        #   in Loop: Header=BB44_2 Depth=1
	incl	%r15d
	testq	%rbp, %rbp
	jne	.LBB44_2
# BB#19:                                # %cleanup.54.thread
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 5848(%rbx)
	xorl	%eax, %eax
.LBB44_20:                              # %cleanup.58
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_10:                              # %cleanup.54.thread42
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-13, %eax
	jmp	.LBB44_20
.Lfunc_end44:
	.size	cos_elements_write, .Lfunc_end44-cos_elements_write
	.cfi_endproc

	.globl	cos_write_dict_as_ordered_array
	.align	16, 0x90
	.type	cos_write_dict_as_ordered_array,@function
cos_write_dict_as_ordered_array:        # @cos_write_dict_as_ordered_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp242:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp243:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp244:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp245:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp246:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp247:
	.cfi_def_cfa_offset 128
.Ltmp248:
	.cfi_offset %rbx, -56
.Ltmp249:
	.cfi_offset %r12, -48
.Ltmp250:
	.cfi_offset %r13, -40
.Ltmp251:
	.cfi_offset %r14, -32
.Ltmp252:
	.cfi_offset %r15, -24
.Ltmp253:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$cos_dict_procs, %ecx
	movl	$-20, %eax
	cmpq	%rcx, (%rbx)
	jne	.LBB45_76
# BB#1:                                 # %if.end
	movq	8(%rbx), %rsi
	movl	$-100, %eax
	testq	%rsi, %rsi
	je	.LBB45_76
# BB#2:                                 # %lor.lhs.false
	cmpb	$0, 50(%rbx)
	jne	.LBB45_76
# BB#3:                                 # %if.end.3
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	pdf_open_separate
	movq	5848(%rbp), %rdi
	movq	16(%rbx), %r13
	testq	%r13, %r13
	je	.LBB45_4
# BB#5:                                 # %if.end.9
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	movq	8(%r13), %rax
	movzbl	(%rax), %edx
	cmpl	$40, %edx
	jne	.LBB45_6
# BB#8:                                 # %if.then.9.i
	movl	%edx, 48(%rsp)          # 4-byte Spill
	movl	16(%r13), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leal	-2(%rcx), %ebx
	jmp	.LBB45_9
.LBB45_4:                               # %if.then.6
	movl	$.L.str.5, %esi
	callq	stream_puts
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	pdf_end_separate
	jmp	.LBB45_75
.LBB45_6:                               # %if.end.9
	movzbl	%dl, %eax
	movl	%edx, 48(%rsp)          # 4-byte Spill
	cmpl	$47, %eax
	jne	.LBB45_35
# BB#7:                                 # %if.then.i
	movl	16(%r13), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %ebx
.LBB45_9:                               # %while.cond.preheader.i
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	(%r13), %r15
	testq	%r15, %r15
	je	.LBB45_18
# BB#10:
	movq	%r15, %rbp
	movq	56(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB45_11:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rdi
	movzbl	(%rdi), %eax
	cmpl	$40, %eax
	jne	.LBB45_12
# BB#14:                                # %if.then.32.i
                                        #   in Loop: Header=BB45_11 Depth=1
	movl	16(%rbp), %r12d
	leal	-2(%r12), %r14d
	jmp	.LBB45_15
	.align	16, 0x90
.LBB45_12:                              # %while.body.i
                                        #   in Loop: Header=BB45_11 Depth=1
	movzbl	%al, %eax
	cmpl	$47, %eax
	jne	.LBB45_35
# BB#13:                                # %if.then.21.i
                                        #   in Loop: Header=BB45_11 Depth=1
	movl	16(%rbp), %r12d
	leal	-1(%r12), %r14d
.LBB45_15:                              # %if.end.38.i
                                        #   in Loop: Header=BB45_11 Depth=1
	cmpl	%ebx, %r14d
	movl	%ebx, %eax
	cmovlel	%r14d, %eax
	incq	%rdi
	movq	8(%r13), %rsi
	incq	%rsi
	movslq	%eax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB45_16
# BB#21:                                # %if.else.62.i
                                        #   in Loop: Header=BB45_11 Depth=1
	shrl	$31, %eax
	jmp	.LBB45_17
.LBB45_16:                              # %if.then.53.i
                                        #   in Loop: Header=BB45_11 Depth=1
	cmpl	16(%r13), %r12d
	setb	%al
.LBB45_17:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB45_11 Depth=1
	testb	%al, %al
	cmovneq	%rbp, %r13
	cmovnel	%r14d, %ebx
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB45_11
.LBB45_18:                              # %if.end.15
	movl	48(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %eax
	cmpl	$40, %eax
	jne	.LBB45_19
# BB#22:                                # %if.then.9.i.43
	movq	64(%rsp), %rax          # 8-byte Reload
	addl	$-2, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	40(%rsp), %r12          # 8-byte Reload
	jmp	.LBB45_23
.LBB45_19:                              # %if.end.15
	cmpl	$47, %eax
	movq	40(%rsp), %r12          # 8-byte Reload
	jne	.LBB45_35
# BB#20:                                # %if.then.i.40
	movq	64(%rsp), %rax          # 8-byte Reload
	decl	%eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB45_23:                              # %while.cond.preheader.i.48
	movq	56(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB45_24
	.align	16, 0x90
.LBB45_31:                              # %while.cond.backedge.i.77
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	%r12, %rbp
	movq	%r14, %r12
	testb	%al, %al
	cmovneq	%r15, %rbp
	movq	64(%rsp), %rax          # 8-byte Reload
	cmovnel	%ebx, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	(%r15), %r15
.LBB45_24:                              # %while.cond.preheader.i.48
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB45_32
# BB#25:                                # %while.body.i.52
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	8(%r15), %rdi
	movzbl	(%rdi), %eax
	cmpl	$40, %eax
	jne	.LBB45_26
# BB#28:                                # %if.then.32.i.58
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	%r12, %r14
	movq	%rbp, %rcx
	movl	16(%r15), %ebp
	leal	-2(%rbp), %ebx
	jmp	.LBB45_29
.LBB45_26:                              # %while.body.i.52
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	%rbp, %rcx
	movzbl	%al, %eax
	cmpl	$47, %eax
	jne	.LBB45_35
# BB#27:                                # %if.then.21.i.55
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	%r12, %r14
	movl	16(%r15), %ebp
	leal	-1(%rbp), %ebx
.LBB45_29:                              # %if.end.38.i.68
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebx
	cmovlel	%ebx, %eax
	incq	%rdi
	movq	%rcx, %r12
	movq	8(%r12), %rsi
	incq	%rsi
	movslq	%eax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB45_30
# BB#34:                                # %if.else.62.i.79
                                        #   in Loop: Header=BB45_24 Depth=1
	setg	%al
	jmp	.LBB45_31
.LBB45_30:                              # %if.then.53.i.71
                                        #   in Loop: Header=BB45_24 Depth=1
	cmpl	%ebp, 16(%r12)
	setb	%al
	jmp	.LBB45_31
.LBB45_35:                              # %if.then.13
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	12(%rsp), %esi          # 4-byte Reload
	callq	pdf_end_separate
	movl	$-20, %eax
	jmp	.LBB45_76
.LBB45_32:                              # %if.end.21
	movl	$.L.str.6, %esi
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	stream_puts
	movq	8(%r13), %rsi
	movzbl	(%rsi), %eax
	cmpl	$47, %eax
	jne	.LBB45_36
# BB#33:                                # %if.then.i.86
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	spputc
	movq	8(%r13), %rsi
	incq	%rsi
	movl	16(%r13), %edx
	decl	%edx
	movq	%rbx, %rdi
	callq	stream_write
	movl	$41, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB45_37
.LBB45_36:                              # %if.else.i
	movl	16(%r13), %edx
	movq	%rbx, %rdi
	callq	stream_write
.LBB45_37:                              # %write_key_as_string.exit
	movq	24(%rsp), %r14          # 8-byte Reload
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	8(%rbp), %rsi
	movzbl	(%rsi), %eax
	cmpl	$47, %eax
	jne	.LBB45_39
# BB#38:                                # %if.then.i.96
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	spputc
	movq	8(%rbp), %rsi
	incq	%rsi
	movl	16(%rbp), %edx
	decl	%edx
	movq	%rbx, %rdi
	callq	stream_write
	movl	$41, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB45_40
.LBB45_39:                              # %if.else.i.99
	movl	16(%rbp), %edx
	movq	%rbx, %rdi
	callq	stream_write
.LBB45_40:                              # %write_key_as_string.exit100
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	.align	16, 0x90
.LBB45_41:                              # %do.body.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_42 Depth 2
                                        #     Child Loop BB45_51 Depth 2
	leaq	32(%r13), %r15
	movq	16(%rsp), %rbp          # 8-byte Reload
.LBB45_42:                              # %do.body
                                        #   Parent Loop BB45_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.7, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movq	8(%r13), %rsi
	movzbl	(%rsi), %eax
	cmpl	$47, %eax
	jne	.LBB45_44
# BB#43:                                # %if.then.i.109
                                        #   in Loop: Header=BB45_42 Depth=2
	movl	$40, %esi
	movq	%rbp, %rdi
	callq	spputc
	movq	8(%r13), %rsi
	incq	%rsi
	movl	16(%r13), %edx
	decl	%edx
	movq	%rbp, %rdi
	callq	stream_write
	movl	$41, %esi
	movq	%rbp, %rdi
	callq	spputc
	jmp	.LBB45_45
	.align	16, 0x90
.LBB45_44:                              # %if.else.i.112
                                        #   in Loop: Header=BB45_42 Depth=2
	movl	16(%r13), %edx
	movq	%rbp, %rdi
	callq	stream_write
.LBB45_45:                              # %write_key_as_string.exit113
                                        #   in Loop: Header=BB45_42 Depth=2
	movl	$1, %edx
	movq	$-1, %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	cos_value_write_spaced
	movq	16(%r12), %rbx
	movq	8(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movzbl	(%rax), %eax
	cmpl	$40, %eax
	je	.LBB45_48
# BB#46:                                # %write_key_as_string.exit113
                                        #   in Loop: Header=BB45_42 Depth=2
	movzbl	%al, %eax
	cmpl	$47, %eax
	jne	.LBB45_42
# BB#47:                                # %if.then.i.118
                                        #   in Loop: Header=BB45_41 Depth=1
	movl	16(%r13), %eax
	decl	%eax
	jmp	.LBB45_49
	.align	16, 0x90
.LBB45_48:                              # %if.then.9.i.121
                                        #   in Loop: Header=BB45_41 Depth=1
	movl	16(%r13), %eax
	addl	$-2, %eax
.LBB45_49:                              # %while.cond.preheader.i.122
                                        #   in Loop: Header=BB45_41 Depth=1
	movl	%eax, 56(%rsp)          # 4-byte Spill
	testq	%rbx, %rbx
	je	.LBB45_74
# BB#50:                                # %while.body.preheader.i
                                        #   in Loop: Header=BB45_41 Depth=1
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	incq	48(%rsp)                # 8-byte Folded Spill
                                        # implicit-def: EAX
	movl	%eax, 64(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB45_51:                              # %while.body.i.125
                                        #   Parent Loop BB45_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx), %rbp
	movzbl	(%rbp), %r12d
	cmpl	$40, %r12d
	jne	.LBB45_52
# BB#55:                                # %if.then.32.i.131
                                        #   in Loop: Header=BB45_51 Depth=2
	movl	16(%rbx), %r15d
	leal	-2(%r15), %r14d
	jmp	.LBB45_56
	.align	16, 0x90
.LBB45_52:                              # %while.body.i.125
                                        #   in Loop: Header=BB45_51 Depth=2
	movzbl	%r12b, %eax
	cmpl	$47, %eax
	jne	.LBB45_53
# BB#54:                                # %if.then.21.i.128
                                        #   in Loop: Header=BB45_51 Depth=2
	movl	16(%rbx), %r15d
	leal	-1(%r15), %r14d
.LBB45_56:                              # %if.end.38.i.138
                                        #   in Loop: Header=BB45_51 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r14d
	cmovlel	%r14d, %eax
	incq	%rbp
	movslq	%eax, %rdx
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	strncmp
	testl	%eax, %eax
	jg	.LBB45_59
# BB#57:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB45_51 Depth=2
	cmpl	56(%rsp), %r14d         # 4-byte Folded Reload
	jle	.LBB45_72
# BB#58:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB45_51 Depth=2
	testl	%eax, %eax
	jne	.LBB45_72
.LBB45_59:                              # %if.then.57.i
                                        #   in Loop: Header=BB45_51 Depth=2
	testq	%r13, %r13
	je	.LBB45_66
# BB#60:                                # %if.then.59.i
                                        #   in Loop: Header=BB45_51 Depth=2
	movl	64(%rsp), %ecx          # 4-byte Reload
	cmpl	%r14d, %ecx
	movl	%r14d, %eax
	cmovlel	%ecx, %eax
	movq	8(%r13), %rsi
	incq	%rsi
	movslq	%eax, %rdx
	movq	%rbp, %rdi
	callq	strncmp
	testl	%eax, %eax
	js	.LBB45_63
# BB#61:                                # %lor.lhs.false.75.i
                                        #   in Loop: Header=BB45_51 Depth=2
	cmpl	%r14d, 64(%rsp)         # 4-byte Folded Reload
	jle	.LBB45_72
# BB#62:                                # %lor.lhs.false.75.i
                                        #   in Loop: Header=BB45_51 Depth=2
	testl	%eax, %eax
	jne	.LBB45_72
.LBB45_63:                              # %if.then.81.i
                                        #   in Loop: Header=BB45_51 Depth=2
	movzbl	%r12b, %eax
	cmpl	$40, %eax
	je	.LBB45_70
# BB#64:                                # %if.then.81.i
                                        #   in Loop: Header=BB45_51 Depth=2
	cmpl	$47, %eax
	je	.LBB45_69
	jmp	.LBB45_65
	.align	16, 0x90
.LBB45_66:                              # %if.else.107.i
                                        #   in Loop: Header=BB45_51 Depth=2
	movzbl	%r12b, %eax
	cmpl	$40, %eax
	jne	.LBB45_67
.LBB45_70:                              # %if.then.125.i
                                        #   in Loop: Header=BB45_51 Depth=2
	addl	$-2, %r15d
	jmp	.LBB45_71
.LBB45_67:                              # %if.else.107.i
                                        #   in Loop: Header=BB45_51 Depth=2
	cmpl	$47, %eax
	jne	.LBB45_68
.LBB45_69:                              # %if.then.88.i
                                        #   in Loop: Header=BB45_51 Depth=2
	decl	%r15d
.LBB45_71:                              # %if.end.133.i
                                        #   in Loop: Header=BB45_51 Depth=2
	movq	%rbx, %r13
	movl	%r15d, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
.LBB45_72:                              # %if.end.133.i
                                        #   in Loop: Header=BB45_51 Depth=2
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB45_51
	jmp	.LBB45_73
.LBB45_53:                              #   in Loop: Header=BB45_41 Depth=1
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB45_73
.LBB45_65:                              #   in Loop: Header=BB45_41 Depth=1
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB45_73
.LBB45_68:                              #   in Loop: Header=BB45_41 Depth=1
	movq	32(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB45_73:                              # %find_next_dict_entry.exit
                                        #   in Loop: Header=BB45_41 Depth=1
	testq	%r13, %r13
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	jne	.LBB45_41
.LBB45_74:                              # %do.end
	movl	$.L.str.10, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	stream_puts
	movq	%r14, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	callq	pdf_end_separate
	movb	$1, 50(%r12)
.LBB45_75:                              # %cleanup
	xorl	%eax, %eax
.LBB45_76:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	cos_write_dict_as_ordered_array, .Lfunc_end45-cos_write_dict_as_ordered_array
	.cfi_endproc

	.globl	cos_dict_objects_write
	.align	16, 0x90
	.type	cos_dict_objects_write,@function
cos_dict_objects_write:                 # @cos_dict_objects_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp254:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp255:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp256:
	.cfi_def_cfa_offset 32
.Ltmp257:
	.cfi_offset %rbx, -32
.Ltmp258:
	.cfi_offset %r14, -24
.Ltmp259:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	16(%rdi), %rbx
	jmp	.LBB46_1
	.align	16, 0x90
.LBB46_6:                               # %for.inc
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	(%rbx), %rbx
.LBB46_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB46_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB46_1 Depth=1
	cmpl	$2, 32(%rbx)
	jb	.LBB46_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	40(%rbx), %r15
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB46_1 Depth=1
	cmpb	$0, 50(%r15)
	jne	.LBB46_6
# BB#5:                                 # %cos_write_object.exit
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	$5, %edx
	movq	%r14, %rdi
	callq	pdf_open_separate
	movq	(%r15), %rax
	movq	8(%r15), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movl	$5, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	movb	$1, 50(%r15)
	jmp	.LBB46_6
.LBB46_7:                               # %for.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end46:
	.size	cos_dict_objects_write, .Lfunc_end46-cos_dict_objects_write
	.cfi_endproc

	.globl	cos_dict_objects_delete
	.align	16, 0x90
	.type	cos_dict_objects_delete,@function
cos_dict_objects_delete:                # @cos_dict_objects_delete
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	jmp	.LBB47_1
	.align	16, 0x90
.LBB47_9:                               # %for.inc.20
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	(%rax), %rax
.LBB47_1:                               # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_4 Depth 2
	testq	%rax, %rax
	je	.LBB47_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	40(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB47_9
# BB#3:                                 # %for.cond.2.preheader
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	(%rax), %rdx
	jmp	.LBB47_4
	.align	16, 0x90
.LBB47_6:                               # %for.cond.2.backedge
                                        #   in Loop: Header=BB47_4 Depth=2
	movq	(%rdx), %rdx
.LBB47_4:                               # %for.cond.2.preheader
                                        #   Parent Loop BB47_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdx, %rdx
	je	.LBB47_8
# BB#5:                                 # %for.body.4
                                        #   in Loop: Header=BB47_4 Depth=2
	cmpq	40(%rdx), %rcx
	jne	.LBB47_6
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB47_4 Depth=2
	movq	$0, 40(%rdx)
	movq	40(%rax), %rcx
	movq	(%rdx), %rdx
	jmp	.LBB47_4
	.align	16, 0x90
.LBB47_8:                               # %for.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	$0, 8(%rcx)
	jmp	.LBB47_9
.LBB47_10:                              # %for.end.22
	xorl	%eax, %eax
	retq
.Lfunc_end47:
	.size	cos_dict_objects_delete, .Lfunc_end47-cos_dict_objects_delete
	.cfi_endproc

	.globl	cos_dict_put
	.align	16, 0x90
	.type	cos_dict_put,@function
cos_dict_put:                           # @cos_dict_put
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$7, %r8d
	jmp	cos_dict_put_copy       # TAILCALL
.Lfunc_end48:
	.size	cos_dict_put, .Lfunc_end48-cos_dict_put
	.cfi_endproc

	.align	16, 0x90
	.type	cos_dict_put_copy,@function
cos_dict_put_copy:                      # @cos_dict_put_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp261:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp262:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp263:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp264:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp265:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp266:
	.cfi_def_cfa_offset 112
.Ltmp267:
	.cfi_offset %rbx, -56
.Ltmp268:
	.cfi_offset %r12, -48
.Ltmp269:
	.cfi_offset %r13, -40
.Ltmp270:
	.cfi_offset %r14, -32
.Ltmp271:
	.cfi_offset %r15, -24
.Ltmp272:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	16(%rdi), %rbx
	movq	32(%rdi), %rax
	movq	1728(%rax), %rbp
	testq	%rbx, %rbx
	je	.LBB49_1
# BB#2:
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB49_3:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movl	16(%rbx), %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB49_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB49_3 Depth=1
	movq	%rbx, %r12
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB49_3
	jmp	.LBB49_5
.LBB49_1:
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leaq	16(%rdi), %r12
.LBB49_5:                               # %if.else
	movl	%r13d, %eax
	andl	$1, %eax
	je	.LBB49_6
# BB#29:                                # %if.then.60
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%r13d, 52(%rsp)         # 4-byte Spill
	movl	$.L.str.41, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	*136(%rbp)
	movq	%rax, %rbx
	movl	$-25, %r13d
	testq	%rbx, %rbx
	je	.LBB49_42
# BB#30:                                # %if.end.65
	movl	%r15d, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%rbx, %r14
	movl	52(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB49_31
.LBB49_6:
	movl	%eax, 24(%rsp)          # 4-byte Spill
.LBB49_31:                              # %if.end.69
	movl	%r13d, 52(%rsp)         # 4-byte Spill
	movl	$st_cos_dict_element, %esi
	movl	$.L.str.42, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %rbx
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	(%rdx), %rcx
	movq	16(%rdx), %rsi
	testl	%ecx, %ecx
	sete	%al
	shrb	%r13b
	andb	%al, %r13b
	movzbl	%r13b, %eax
	cmpl	$1, %eax
	jne	.LBB49_32
# BB#33:                                # %if.then.i.87
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$.L.str.27, %edx
	movq	%rbp, %rdi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	callq	*136(%rbp)
	testq	%rax, %rax
	je	.LBB49_38
# BB#34:                                # %if.end.i.92
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx), %rsi
	movl	16(%rcx), %edx
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	memcpy
	movq	16(%rsp), %r8           # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	jmp	.LBB49_35
.LBB49_7:                               # %if.then
	movl	%r13d, 52(%rsp)         # 4-byte Spill
	movq	40(%rsp), %r8           # 8-byte Reload
	movl	(%r8), %ecx
	cmpl	$1, %ecx
	ja	.LBB49_11
# BB#8:                                 # %land.lhs.true
	cmpl	32(%rbx), %ecx
	jne	.LBB49_11
# BB#9:                                 # %land.lhs.true.12
	movq	8(%r8), %rdi
	movl	16(%r8), %esi
	movq	40(%rbx), %rdx
	movl	48(%rbx), %ecx
	movq	%r8, %r12
	callq	bytes_compare
	movq	%r12, %r8
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB49_42
# BB#10:                                # %land.lhs.true.12.if.end_crit_edge
	movl	(%r8), %ecx
.LBB49_11:                              # %if.end
	movl	%ecx, %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB49_14
# BB#12:                                # %land.lhs.true.33
	cmpl	32(%rbx), %ecx
	jne	.LBB49_14
# BB#13:                                # %land.lhs.true.38
	movq	8(%r8), %rax
	xorl	%r13d, %r13d
	cmpq	40(%rbx), %rax
	je	.LBB49_42
.LBB49_14:                              # %if.end.45
	movl	4(%r8), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	8(%r8), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	16(%r8), %rsi
	movl	52(%rsp), %eax          # 4-byte Reload
	testb	$2, %al
	je	.LBB49_18
# BB#15:                                # %if.end.45
	testl	%ecx, %ecx
	jne	.LBB49_18
# BB#16:                                # %if.then.i
	movl	$.L.str.27, %edx
	movq	%rbp, %rdi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rcx, %r12
	movq	%r8, %r13
	callq	*136(%rbp)
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB49_42
# BB#17:                                # %if.end.i
	movq	8(%rdx), %rsi
	movl	16(%rdx), %edx
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rcx, %r12
	callq	memcpy
	movq	%r12, %rcx
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB49_18:                              # %if.end.51
	movq	%rsi, %r13
	shrq	$32, %r13
	movl	52(%rsp), %eax          # 4-byte Reload
	testb	$4, %al
	movq	32(%rsp), %r12          # 8-byte Reload
	je	.LBB49_20
# BB#19:                                # %if.then.54
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$.L.str.39, %ecx
	movq	%rbp, %rdi
	movq	%rsi, %rbp
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	gs_free_const_string
	movq	%rbp, %rsi
	movq	(%rsp), %rcx            # 8-byte Reload
.LBB49_20:                              # %if.end.55
	movl	32(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB49_21
# BB#24:                                # %sw.bb.4.i
	movq	40(%rbx), %rbp
	testq	%rbp, %rbp
	movq	16(%rsp), %r8           # 8-byte Reload
	je	.LBB49_25
# BB#26:                                # %if.then.i.78
	cmpq	$0, 8(%rbp)
	je	.LBB49_28
# BB#27:
	movq	24(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB49_41
.LBB49_32:
	movq	8(%rdx), %r8
.LBB49_35:                              # %cos_copy_element_value.exit94
	testq	%rbx, %rbx
	je	.LBB49_36
# BB#40:                                # %cleanup
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movq	%rsi, %r13
	shrq	$32, %r13
	movq	%r14, 8(%rbx)
	movl	%r15d, 16(%rbx)
	movl	52(%rsp), %eax          # 4-byte Reload
	shrl	$2, %eax
	andl	$1, %eax
	movl	%eax, 24(%rbx)
	movq	$0, (%rbx)
	movq	%rbx, (%r12)
	movq	32(%rsp), %r12          # 8-byte Reload
	jmp	.LBB49_41
.LBB49_36:                              # %if.then.84
	movq	%rsi, %rdx
	testb	%r13b, %r13b
	je	.LBB49_38
# BB#37:                                # %if.then.i.102
	movl	$.L.str.28, %ecx
	movq	%rbp, %rdi
	movq	%r8, %rsi
	callq	*160(%rbp)
.LBB49_38:                              # %if.end.88
	movl	$.L.str.42, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movl	$-25, %r13d
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB49_42
# BB#39:                                # %if.then.92
	movl	$.L.str.41, %ecx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	*160(%rbp)
	jmp	.LBB49_42
.LBB49_21:                              # %if.end.55
	testl	%eax, %eax
	jne	.LBB49_22
# BB#23:                                # %sw.bb.i
	movq	32(%r12), %rax
	movq	1728(%rax), %rdi
	movq	%rsi, %r14
	movq	40(%rbx), %rsi
	movl	48(%rbx), %edx
	movq	%rcx, %rbp
	movl	$.L.str.40, %ecx
	callq	*160(%rdi)
	movq	%r14, %rsi
	movq	%rbp, %rcx
.LBB49_22:
	movq	16(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB49_41
.LBB49_25:
	movq	24(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB49_41
.LBB49_28:                              # %if.then.8.i
	movq	(%rbp), %rax
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.40, %esi
	movq	%rbp, %rdi
	movq	%rcx, %r14
	movq	%r8, %r15
	callq	*(%rax)
	movq	32(%rbp), %rax
	movq	1728(%rax), %rdi
	movl	$.L.str.40, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	%r15, %r8
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r14, %rcx
	movq	24(%rsp), %rdx          # 8-byte Reload
.LBB49_41:                              # %if.end.106
	movl	%ecx, 32(%rbx)
	movl	%edx, 36(%rbx)
	movq	%r8, 40(%rbx)
	movl	%esi, 48(%rbx)
	movl	%r13d, 52(%rbx)
	movl	$0, 160(%r12)
	xorl	%r13d, %r13d
.LBB49_42:                              # %cleanup.108
	movl	%r13d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	cos_dict_put_copy, .Lfunc_end49-cos_dict_put_copy
	.cfi_endproc

	.globl	cos_dict_put_no_copy
	.align	16, 0x90
	.type	cos_dict_put_no_copy,@function
cos_dict_put_no_copy:                   # @cos_dict_put_no_copy
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$5, %r8d
	jmp	cos_dict_put_copy       # TAILCALL
.Lfunc_end50:
	.size	cos_dict_put_no_copy, .Lfunc_end50-cos_dict_put_no_copy
	.cfi_endproc

	.globl	cos_dict_put_c_key
	.align	16, 0x90
	.type	cos_dict_put_c_key,@function
cos_dict_put_c_key:                     # @cos_dict_put_c_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp273:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp274:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp275:
	.cfi_def_cfa_offset 32
.Ltmp276:
	.cfi_offset %rbx, -32
.Ltmp277:
	.cfi_offset %r14, -24
.Ltmp278:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	strlen
	movl	$2, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	cos_dict_put_copy       # TAILCALL
.Lfunc_end51:
	.size	cos_dict_put_c_key, .Lfunc_end51-cos_dict_put_c_key
	.cfi_endproc

	.globl	cos_dict_put_c_key_string
	.align	16, 0x90
	.type	cos_dict_put_c_key_string,@function
cos_dict_put_c_key_string:              # @cos_dict_put_c_key_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp279:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp280:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp281:
	.cfi_def_cfa_offset 48
.Ltmp282:
	.cfi_offset %rbx, -24
.Ltmp283:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rdx, 8(%rsp)
	movl	%ecx, 16(%rsp)
	movl	$0, (%rsp)
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end52:
	.size	cos_dict_put_c_key_string, .Lfunc_end52-cos_dict_put_c_key_string
	.cfi_endproc

	.globl	cos_dict_put_c_key_int
	.align	16, 0x90
	.type	cos_dict_put_c_key_int,@function
cos_dict_put_c_key_int:                 # @cos_dict_put_c_key_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp284:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp285:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp286:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp287:
	.cfi_def_cfa_offset 80
.Ltmp288:
	.cfi_offset %rbx, -32
.Ltmp289:
	.cfi_offset %r14, -24
.Ltmp290:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	11(%rsp), %rbx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, 32(%rsp)
	movl	%eax, 40(%rsp)
	movl	$0, 24(%rsp)
	movq	%r15, %rdi
	callq	strlen
	leaq	24(%rsp), %rcx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end53:
	.size	cos_dict_put_c_key_int, .Lfunc_end53-cos_dict_put_c_key_int
	.cfi_endproc

	.globl	cos_dict_put_c_key_bool
	.align	16, 0x90
	.type	cos_dict_put_c_key_bool,@function
cos_dict_put_c_key_bool:                # @cos_dict_put_c_key_bool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp292:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp293:
	.cfi_def_cfa_offset 48
.Ltmp294:
	.cfi_offset %rbx, -24
.Ltmp295:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testl	%edx, %edx
	movl	$.L.str.11, %eax
	movl	$.L.str.12, %ecx
	cmovneq	%rax, %rcx
	sete	%al
	movzbl	%al, %eax
	orl	$4, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, (%rsp)
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end54:
	.size	cos_dict_put_c_key_bool, .Lfunc_end54-cos_dict_put_c_key_bool
	.cfi_endproc

	.globl	cos_dict_put_c_key_real
	.align	16, 0x90
	.type	cos_dict_put_c_key_real,@function
cos_dict_put_c_key_real:                # @cos_dict_put_c_key_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp296:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp297:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp298:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp299:
	.cfi_def_cfa_offset 40
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp300:
	.cfi_def_cfa_offset 496
.Ltmp301:
	.cfi_offset %rbx, -40
.Ltmp302:
	.cfi_offset %r12, -32
.Ltmp303:
	.cfi_offset %r14, -24
.Ltmp304:
	.cfi_offset %r15, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	16(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	leaq	368(%rsp), %r12
	movl	$50, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	swrite_string
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pprintg1
	movq	%rbx, %rdi
	callq	stell
	movq	%r12, 440(%rsp)
	movl	%eax, 448(%rsp)
	movl	$0, 432(%rsp)
	movq	%r15, %rdi
	callq	strlen
	leaq	432(%rsp), %rcx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end55:
	.size	cos_dict_put_c_key_real, .Lfunc_end55-cos_dict_put_c_key_real
	.cfi_endproc

	.globl	cos_dict_put_c_key_floats
	.align	16, 0x90
	.type	cos_dict_put_c_key_floats,@function
cos_dict_put_c_key_floats:              # @cos_dict_put_c_key_floats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp305:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp306:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp307:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp308:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp309:
	.cfi_def_cfa_offset 64
.Ltmp310:
	.cfi_offset %rbx, -40
.Ltmp311:
	.cfi_offset %r14, -32
.Ltmp312:
	.cfi_offset %r15, -24
.Ltmp313:
	.cfi_offset %rbp, -16
	movl	%ecx, %eax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	32(%r15), %rdi
	movl	$.L.str.13, %ecx
	movq	%rdx, %rsi
	movl	%eax, %edx
	callq	cos_array_from_floats
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB56_3
# BB#1:                                 # %if.end
	movq	%rbx, 8(%rsp)
	movl	$2, (%rsp)
	movq	%r14, %rdi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB56_3
# BB#2:                                 # %if.then.3
	movq	(%rbx), %rax
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	32(%rbx), %rax
	movq	1728(%rax), %rdi
	movl	$.L.str.13, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB56_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	cos_dict_put_c_key_floats, .Lfunc_end56-cos_dict_put_c_key_floats
	.cfi_endproc

	.globl	cos_dict_put_c_key_object
	.align	16, 0x90
	.type	cos_dict_put_c_key_object,@function
cos_dict_put_c_key_object:              # @cos_dict_put_c_key_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp314:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp315:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp316:
	.cfi_def_cfa_offset 48
.Ltmp317:
	.cfi_offset %rbx, -24
.Ltmp318:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rdx, 8(%rsp)
	movl	$2, (%rsp)
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end57:
	.size	cos_dict_put_c_key_object, .Lfunc_end57-cos_dict_put_c_key_object
	.cfi_endproc

	.globl	cos_dict_put_string
	.align	16, 0x90
	.type	cos_dict_put_string,@function
cos_dict_put_string:                    # @cos_dict_put_string
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp319:
	.cfi_def_cfa_offset 32
	movq	%rcx, 8(%rsp)
	movl	%r8d, 16(%rsp)
	movl	$0, (%rsp)
	leaq	(%rsp), %rcx
	movl	$7, %r8d
	callq	cos_dict_put_copy
	addq	$24, %rsp
	retq
.Lfunc_end58:
	.size	cos_dict_put_string, .Lfunc_end58-cos_dict_put_string
	.cfi_endproc

	.globl	cos_dict_put_string_copy
	.align	16, 0x90
	.type	cos_dict_put_string_copy,@function
cos_dict_put_string_copy:               # @cos_dict_put_string_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp320:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp321:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp322:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp323:
	.cfi_def_cfa_offset 64
.Ltmp324:
	.cfi_offset %rbx, -32
.Ltmp325:
	.cfi_offset %r14, -24
.Ltmp326:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, 16(%rsp)
	movl	%eax, 24(%rsp)
	movl	$0, 8(%rsp)
	movq	%r14, %rdi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$2, %r8d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end59:
	.size	cos_dict_put_string_copy, .Lfunc_end59-cos_dict_put_string_copy
	.cfi_endproc

	.globl	cos_dict_put_c_strings
	.align	16, 0x90
	.type	cos_dict_put_c_strings,@function
cos_dict_put_c_strings:                 # @cos_dict_put_c_strings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp327:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp328:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp329:
	.cfi_def_cfa_offset 48
.Ltmp330:
	.cfi_offset %rbx, -24
.Ltmp331:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rdx, 8(%rsp)
	movq	%rdx, %rdi
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, (%rsp)
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cos_dict_put_copy
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end60:
	.size	cos_dict_put_c_strings, .Lfunc_end60-cos_dict_put_c_strings
	.cfi_endproc

	.globl	cos_dict_move_all
	.align	16, 0x90
	.type	cos_dict_move_all,@function
cos_dict_move_all:                      # @cos_dict_move_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp332:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp333:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp334:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp335:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp336:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp337:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp338:
	.cfi_def_cfa_offset 80
.Ltmp339:
	.cfi_offset %rbx, -56
.Ltmp340:
	.cfi_offset %r12, -48
.Ltmp341:
	.cfi_offset %r13, -40
.Ltmp342:
	.cfi_offset %r14, -32
.Ltmp343:
	.cfi_offset %r15, -24
.Ltmp344:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	16(%rsi), %r14
	movq	16(%rdi), %r13
	jmp	.LBB61_1
	.align	16, 0x90
.LBB61_7:                               # %if.else
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	%r15, (%r13)
.LBB61_1:                               # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_3 Depth 2
                                        #       Child Loop BB61_5 Depth 3
	testq	%r14, %r14
	je	.LBB61_18
# BB#2:                                 # %while.body.lr.ph
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	%r13, %r15
	movq	%r14, %r13
.LBB61_3:                               # %while.body
                                        #   Parent Loop BB61_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_5 Depth 3
	movq	(%r13), %r14
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB61_7
# BB#4:                                 #   in Loop: Header=BB61_3 Depth=2
	movq	8(%r13), %r12
	movl	16(%r13), %ebp
	.align	16, 0x90
.LBB61_5:                               # %for.body.i
                                        #   Parent Loop BB61_1 Depth=1
                                        #     Parent Loop BB61_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	8(%rbx), %rdx
	movl	16(%rbx), %ecx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB61_8
# BB#6:                                 # %for.inc.i
                                        #   in Loop: Header=BB61_5 Depth=3
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB61_5
	jmp	.LBB61_7
	.align	16, 0x90
.LBB61_8:                               # %if.then
                                        #   in Loop: Header=BB61_3 Depth=2
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	32(%rax), %rax
	movq	1728(%rax), %r12
	movl	32(%r13), %eax
	cmpl	$2, %eax
	jne	.LBB61_9
# BB#11:                                # %sw.bb.4.i
                                        #   in Loop: Header=BB61_3 Depth=2
	movq	40(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB61_14
# BB#12:                                # %if.then.i.26
                                        #   in Loop: Header=BB61_3 Depth=2
	cmpq	$0, 8(%rbx)
	jne	.LBB61_14
# BB#13:                                # %if.then.8.i
                                        #   in Loop: Header=BB61_3 Depth=2
	movq	(%rbx), %rax
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	32(%rbx), %rax
	movq	1728(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB61_14
	.align	16, 0x90
.LBB61_9:                               # %if.then
                                        #   in Loop: Header=BB61_3 Depth=2
	testl	%eax, %eax
	jne	.LBB61_14
# BB#10:                                # %sw.bb.i
                                        #   in Loop: Header=BB61_3 Depth=2
	movq	40(%r13), %rsi
	movl	48(%r13), %edx
	movl	$.L.str.14, %ecx
	movq	%r12, %rdi
	callq	*160(%r12)
.LBB61_14:                              # %cos_value_free.exit
                                        #   in Loop: Header=BB61_3 Depth=2
	cmpl	$0, 24(%r13)
	je	.LBB61_16
# BB#15:                                # %if.then.i.20
                                        #   in Loop: Header=BB61_3 Depth=2
	movq	8(%r13), %rsi
	movl	16(%r13), %edx
	movl	$.L.str.14, %ecx
	movq	%r12, %rdi
	callq	*160(%r12)
.LBB61_16:                              # %cos_dict_element_free.exit
                                        #   in Loop: Header=BB61_3 Depth=2
	movl	$.L.str.14, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*24(%r12)
	testq	%r14, %r14
	movq	%r14, %r13
	jne	.LBB61_3
# BB#17:
	movq	%r15, %r13
.LBB61_18:                              # %while.end
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r13, 16(%rax)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	$0, 16(%rcx)
	movl	$0, 160(%rax)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	cos_dict_move_all, .Lfunc_end61-cos_dict_move_all
	.cfi_endproc

	.globl	cos_dict_find
	.align	16, 0x90
	.type	cos_dict_find,@function
cos_dict_find:                          # @cos_dict_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp346:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp347:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp348:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp349:
	.cfi_def_cfa_offset 48
.Ltmp350:
	.cfi_offset %rbx, -40
.Ltmp351:
	.cfi_offset %r14, -32
.Ltmp352:
	.cfi_offset %r15, -24
.Ltmp353:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	16(%rdi), %rbp
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	je	.LBB62_5
# BB#1:
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB62_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rdx
	movl	16(%rbp), %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB62_3
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB62_2 Depth=1
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB62_2
	jmp	.LBB62_5
.LBB62_3:                               # %if.then
	addq	$32, %rbp
	movq	%rbp, %r14
.LBB62_5:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	cos_dict_find, .Lfunc_end62-cos_dict_find
	.cfi_endproc

	.globl	cos_dict_find_c_key
	.align	16, 0x90
	.type	cos_dict_find_c_key,@function
cos_dict_find_c_key:                    # @cos_dict_find_c_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp354:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp355:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp356:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp357:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp358:
	.cfi_def_cfa_offset 48
.Ltmp359:
	.cfi_offset %rbx, -40
.Ltmp360:
	.cfi_offset %r12, -32
.Ltmp361:
	.cfi_offset %r14, -24
.Ltmp362:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	16(%r15), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB63_5
# BB#1:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB63_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdx
	movl	16(%rbx), %ecx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB63_3
# BB#4:                                 # %for.inc.i
                                        #   in Loop: Header=BB63_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB63_2
	jmp	.LBB63_5
.LBB63_3:                               # %if.then.i
	addq	$32, %rbx
	movq	%rbx, %r15
.LBB63_5:                               # %cos_dict_find.exit
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end63:
	.size	cos_dict_find_c_key, .Lfunc_end63-cos_dict_find_c_key
	.cfi_endproc

	.globl	cos_dict_forall
	.align	16, 0x90
	.type	cos_dict_forall,@function
cos_dict_forall:                        # @cos_dict_forall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp363:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp364:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp365:
	.cfi_def_cfa_offset 32
.Ltmp366:
	.cfi_offset %rbx, -32
.Ltmp367:
	.cfi_offset %r14, -24
.Ltmp368:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	16(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB64_1
	.align	16, 0x90
.LBB64_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	leaq	32(%rbx), %rcx
	movq	%r15, %rdi
	callq	*%r14
	testl	%eax, %eax
	jne	.LBB64_5
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB64_4 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB64_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB64_5
.LBB64_1:
	xorl	%eax, %eax
.LBB64_5:                               # %cleanup.2
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end64:
	.size	cos_dict_forall, .Lfunc_end64-cos_dict_forall
	.cfi_endproc

	.globl	cos_param_list_writer_init
	.align	16, 0x90
	.type	cos_param_list_writer_init,@function
cos_param_list_writer_init:             # @cos_param_list_writer_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp370:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp371:
	.cfi_def_cfa_offset 32
.Ltmp372:
	.cfi_offset %rbx, -32
.Ltmp373:
	.cfi_offset %r14, -24
.Ltmp374:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	32(%rbx), %rax
	movq	1728(%rax), %rdx
	movl	$cos_param_list_writer_procs, %esi
	callq	gs_param_list_init
	movq	%rbx, 24(%rbp)
	movl	%r14d, 32(%rbp)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end65:
	.size	cos_param_list_writer_init, .Lfunc_end65-cos_param_list_writer_init
	.cfi_endproc

	.align	16, 0x90
	.type	cos_stream_release,@function
cos_stream_release:                     # @cos_stream_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp375:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp376:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp377:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp378:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp379:
	.cfi_def_cfa_offset 48
.Ltmp380:
	.cfi_offset %rbx, -40
.Ltmp381:
	.cfi_offset %r12, -32
.Ltmp382:
	.cfi_offset %r14, -24
.Ltmp383:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB66_3
# BB#1:                                 # %for.body.lr.ph
	movq	32(%r14), %rax
	movq	1728(%rax), %r12
	.align	16, 0x90
.LBB66_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*24(%r12)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB66_2
.LBB66_3:                               # %for.end
	movq	$0, 24(%r14)
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	cos_dict_release        # TAILCALL
.Lfunc_end66:
	.size	cos_stream_release, .Lfunc_end66-cos_stream_release
	.cfi_endproc

	.align	16, 0x90
	.type	cos_stream_write,@function
cos_stream_write:                       # @cos_stream_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp384:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp385:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp386:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp387:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp388:
	.cfi_def_cfa_offset 48
.Ltmp389:
	.cfi_offset %rbx, -40
.Ltmp390:
	.cfi_offset %r12, -32
.Ltmp391:
	.cfi_offset %r14, -24
.Ltmp392:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	5848(%r14), %r15
	movq	64(%rbx), %rax
	testq	%rax, %rax
	je	.LBB67_3
# BB#1:                                 # %if.then
	movq	%rax, (%rsp)
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	callq	s_close_filters
	testl	%eax, %eax
	js	.LBB67_5
# BB#2:                                 # %if.end
	movq	$0, 64(%rbx)
.LBB67_3:                               # %if.end.7
	movl	$.L.str.37, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	16(%rbx), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r12, %r8
	callq	cos_elements_write
	movq	56(%rbx), %rdx
	movl	$.L.str.48, %esi
	movq	%r15, %rdi
	callq	pprintld1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cos_stream_contents_write
	movl	%eax, %ebx
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	callq	stream_puts
	jmp	.LBB67_4
.LBB67_5:                               # %cleanup
	movl	$-12, %ebx
.LBB67_4:                               # %cleanup.14
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end67:
	.size	cos_stream_write, .Lfunc_end67-cos_stream_write
	.cfi_endproc

	.align	16, 0x90
	.type	cos_stream_equal,@function
cos_stream_equal:                       # @cos_stream_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp394:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp395:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp396:
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
.Ltmp397:
	.cfi_def_cfa_offset 144
.Ltmp398:
	.cfi_offset %rbx, -40
.Ltmp399:
	.cfi_offset %r14, -32
.Ltmp400:
	.cfi_offset %r15, -24
.Ltmp401:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	16(%rsp), %rdi
	callq	gs_md5_init
	cmpl	$0, 180(%rbx)
	jne	.LBB68_2
# BB#1:                                 # %if.then
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	cos_stream_hash
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB68_7
.LBB68_2:                               # %if.end.2
	cmpl	$0, 180(%r15)
	jne	.LBB68_4
# BB#3:                                 # %if.then.5
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	cos_stream_hash
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB68_7
.LBB68_4:                               # %if.end.11
	leaq	184(%rbx), %rdi
	leaq	184(%r15), %rsi
	movl	$16, %edx
	callq	memcmp
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB68_7
# BB#5:                                 # %if.end.16
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	cos_dict_equal
	testl	%eax, %eax
	js	.LBB68_7
# BB#6:                                 # %if.end.20
	setne	%al
	movzbl	%al, %ebp
.LBB68_7:                               # %cleanup
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	cos_stream_equal, .Lfunc_end68-cos_stream_equal
	.cfi_endproc

	.align	16, 0x90
	.type	cos_stream_hash,@function
cos_stream_hash:                        # @cos_stream_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp403:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp404:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp405:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp406:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp407:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp408:
	.cfi_def_cfa_offset 80
.Ltmp409:
	.cfi_offset %rbx, -56
.Ltmp410:
	.cfi_offset %r12, -48
.Ltmp411:
	.cfi_offset %r13, -40
.Ltmp412:
	.cfi_offset %r14, -32
.Ltmp413:
	.cfi_offset %r15, -24
.Ltmp414:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r15
	cmpl	$0, 180(%r15)
	je	.LBB69_2
# BB#1:                                 # %entry.if.end.4_crit_edge
	leaq	184(%r15), %rbx
.LBB69_9:                               # %if.end.4
	movl	$16, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gs_md5_append
	cmpl	$0, 160(%r15)
	je	.LBB69_11
# BB#10:                                # %if.end.4.if.end.19_crit_edge
	addq	$164, %r15
	movq	%r15, %r14
	jmp	.LBB69_18
.LBB69_2:                               # %if.then
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	24(%r15), %r13
	movq	22344(%r12), %rbx
	movq	5848(%r12), %rdi
	callq	*208(%rdi)
	movq	22352(%r12), %rdi
	callq	*208(%rdi)
	movq	%rbx, %rdi
	callq	gp_ftell_64
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$-1, %eax
	testq	%r13, %r13
	je	.LBB69_19
# BB#3:                                 # %while.body.lr.ph.i
	leaq	72(%r15), %rbp
	leaq	184(%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rbp, %rdi
	callq	gs_md5_init
	.align	16, 0x90
.LBB69_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	16(%r13), %edx
	movl	$1, %esi
	movl	$.L.str.47, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB69_19
# BB#5:                                 # %if.end.16.i
                                        #   in Loop: Header=BB69_4 Depth=1
	movq	8(%r13), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gp_fseek_64
	movl	16(%r13), %edx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	fread
	movl	16(%r13), %edx
	cmpq	%rdx, %rax
	jne	.LBB69_6
# BB#7:                                 # %if.end.30.i
                                        #   in Loop: Header=BB69_4 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_md5_append
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.47, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	(%r13), %r13
	testq	%r13, %r13
	jne	.LBB69_4
# BB#8:                                 # %if.end
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	gp_fseek_64
	movq	%rbp, %rdi
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rsi
	callq	gs_md5_finish
	movl	$1, 180(%r15)
	movq	16(%rsp), %r13          # 8-byte Reload
	jmp	.LBB69_9
.LBB69_11:                              # %if.then.7
	leaq	72(%r15), %rbp
	movq	%rbp, %rdi
	callq	gs_md5_init
	leaq	164(%r15), %r14
	movq	16(%r15), %rbx
	jmp	.LBB69_12
	.align	16, 0x90
.LBB69_20:                              # %sw.bb.i.i
                                        #   in Loop: Header=BB69_12 Depth=1
	movq	40(%rbx), %rsi
	movl	48(%rbx), %edx
	movq	%rbp, %rdi
	callq	gs_md5_append
	movq	(%rbx), %rbx
.LBB69_12:                              # %if.then.7
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB69_17
# BB#13:                                # %for.body.i
                                        #   in Loop: Header=BB69_12 Depth=1
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	movq	%rbp, %rdi
	callq	gs_md5_append
	cmpl	$2, 32(%rbx)
	jb	.LBB69_20
# BB#14:                                # %for.body.i
                                        #   in Loop: Header=BB69_12 Depth=1
	jne	.LBB69_16
# BB#15:                                # %sw.bb.3.i.i
                                        #   in Loop: Header=BB69_12 Depth=1
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	*24(%rax)
.LBB69_16:                              # %cos_value_hash.exit.i
                                        #   in Loop: Header=BB69_12 Depth=1
	movq	(%rbx), %rbx
	jmp	.LBB69_12
.LBB69_17:                              # %cos_dict_hash.exit
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_md5_finish
	movl	$1, 160(%r15)
.LBB69_18:                              # %if.end.19
	movl	$16, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	gs_md5_append
	xorl	%eax, %eax
.LBB69_19:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB69_6:                               # %if.then.24.i
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.47, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	$-12, %eax
	jmp	.LBB69_19
.Lfunc_end69:
	.size	cos_stream_hash, .Lfunc_end69-cos_stream_hash
	.cfi_endproc

	.globl	cos_stream_alloc
	.align	16, 0x90
	.type	cos_stream_alloc,@function
cos_stream_alloc:                       # @cos_stream_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp415:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp416:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp417:
	.cfi_def_cfa_offset 32
.Ltmp418:
	.cfi_offset %rbx, -24
.Ltmp419:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	movl	$st_cos_object, %esi
	movq	%rax, %rdx
	callq	*72(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB70_2
# BB#1:                                 # %if.then.i
	movq	$cos_stream_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%r14, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	movq	%rbx, %rdi
	addq	$164, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
.LBB70_2:                               # %cos_object_init.exit
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end70:
	.size	cos_stream_alloc, .Lfunc_end70-cos_stream_alloc
	.cfi_endproc

	.globl	cos_stream_length
	.align	16, 0x90
	.type	cos_stream_length,@function
cos_stream_length:                      # @cos_stream_length
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	retq
.Lfunc_end71:
	.size	cos_stream_length, .Lfunc_end71-cos_stream_length
	.cfi_endproc

	.globl	cos_stream_elements_write
	.align	16, 0x90
	.type	cos_stream_elements_write,@function
cos_stream_elements_write:              # @cos_stream_elements_write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	5848(%rax), %rdx
	movq	8(%rdi), %r8
	movq	16(%rdi), %rsi
	movl	$1, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	jmp	cos_elements_write      # TAILCALL
.Lfunc_end72:
	.size	cos_stream_elements_write, .Lfunc_end72-cos_stream_elements_write
	.cfi_endproc

	.globl	cos_stream_contents_write
	.align	16, 0x90
	.type	cos_stream_contents_write,@function
cos_stream_contents_write:              # @cos_stream_contents_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp421:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp422:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp423:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp424:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp425:
	.cfi_def_cfa_offset 56
	subq	$392, %rsp              # imm = 0x188
.Ltmp426:
	.cfi_def_cfa_offset 448
.Ltmp427:
	.cfi_offset %rbx, -56
.Ltmp428:
	.cfi_offset %r12, -48
.Ltmp429:
	.cfi_offset %r13, -40
.Ltmp430:
	.cfi_offset %r14, -32
.Ltmp431:
	.cfi_offset %r15, -24
.Ltmp432:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	5848(%rbx), %r14
	movq	22344(%rbx), %r13
	movl	30392(%rbx), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	cmpl	$0, 9648(%rbx)
	movl	$0, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	je	.LBB73_2
# BB#1:                                 # %if.then
	movq	8(%r12), %rsi
	leaq	16(%rsp), %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	callq	pdf_encrypt_init
	testl	%eax, %eax
	js	.LBB73_10
.LBB73_2:                               # %if.end.4
	movq	%r14, %rdi
	callq	*208(%r14)
	movq	22352(%rbx), %rdi
	callq	*208(%rdi)
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	movl	$0, %eax
	je	.LBB73_10
	.align	16, 0x90
.LBB73_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rax
	movq	%rcx, %r15
	movq	(%r15), %rcx
	movq	%rax, (%r15)
	testq	%rcx, %rcx
	jne	.LBB73_3
# BB#4:                                 # %for.body.20.preheader
	xorl	%ebx, %ebx
	movq	%r15, %rbp
	.align	16, 0x90
.LBB73_5:                               # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jle	.LBB73_7
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB73_5 Depth=1
	movq	8(%rbp), %rdx
	movl	16(%rbp), %ecx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	pdf_copy_data_safe
	jmp	.LBB73_8
	.align	16, 0x90
.LBB73_7:                               # %if.else
                                        #   in Loop: Header=BB73_5 Depth=1
	movq	%r13, %rdi
	callq	gp_ftell_64
	movq	%rax, %r12
	movq	8(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	gp_fseek_64
	movl	16(%rbp), %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	(%rsp), %rcx            # 8-byte Reload
	callq	pdf_copy_data
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gp_fseek_64
.LBB73_8:                               # %for.inc.31
                                        #   in Loop: Header=BB73_5 Depth=1
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB73_5
	.align	16, 0x90
.LBB73_9:                               # %for.body.36
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rcx
	movq	(%rcx), %r15
	movq	%rbx, (%rcx)
	xorl	%eax, %eax
	testq	%r15, %r15
	movq	%rcx, %rbx
	jne	.LBB73_9
.LBB73_10:                              # %cleanup
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	cos_stream_contents_write, .Lfunc_end73-cos_stream_contents_write
	.cfi_endproc

	.globl	cos_stream_dict
	.align	16, 0x90
	.type	cos_stream_dict,@function
cos_stream_dict:                        # @cos_stream_dict
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end74:
	.size	cos_stream_dict, .Lfunc_end74-cos_stream_dict
	.cfi_endproc

	.globl	cos_stream_add
	.align	16, 0x90
	.type	cos_stream_add,@function
cos_stream_add:                         # @cos_stream_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp433:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp434:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp435:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp436:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp437:
	.cfi_def_cfa_offset 48
.Ltmp438:
	.cfi_offset %rbx, -40
.Ltmp439:
	.cfi_offset %r14, -32
.Ltmp440:
	.cfi_offset %r15, -24
.Ltmp441:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	32(%rbx), %rbp
	movq	22352(%rbp), %rdi
	callq	stell
	movq	%rax, %r15
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB75_3
# BB#1:                                 # %land.lhs.true
	movl	16(%rax), %edx
	movl	%r14d, %ecx
	movq	8(%rax), %rsi
	addq	%rcx, %rsi
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jne	.LBB75_3
# BB#2:                                 # %if.then
	addl	%r14d, %edx
	movl	%edx, 16(%rax)
	jmp	.LBB75_5
.LBB75_3:                               # %if.else
	movq	1728(%rbp), %rdi
	movl	$st_cos_stream_piece, %esi
	movl	$.L.str.15, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB75_6
# BB#4:                                 # %if.end
	movl	%r14d, %ecx
	subq	%rcx, %r15
	movq	%r15, 8(%rax)
	movl	%r14d, 16(%rax)
	movq	24(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	%rax, 24(%rbx)
.LBB75_5:                               # %if.end.20
	addq	%rcx, 56(%rbx)
	xorl	%ecx, %ecx
.LBB75_6:                               # %cleanup.23
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end75:
	.size	cos_stream_add, .Lfunc_end75-cos_stream_add
	.cfi_endproc

	.globl	cos_stream_add_bytes
	.align	16, 0x90
	.type	cos_stream_add_bytes,@function
cos_stream_add_bytes:                   # @cos_stream_add_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp442:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp443:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp444:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp445:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp446:
	.cfi_def_cfa_offset 48
.Ltmp447:
	.cfi_offset %rbx, -40
.Ltmp448:
	.cfi_offset %r14, -32
.Ltmp449:
	.cfi_offset %r15, -24
.Ltmp450:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	32(%rbx), %rax
	movq	22352(%rax), %rdi
	callq	stream_write
	movq	32(%rbx), %rbp
	movq	22352(%rbp), %rdi
	callq	stell
	movq	%rax, %r15
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB76_3
# BB#1:                                 # %land.lhs.true.i
	movl	16(%rax), %edx
	movl	%r14d, %ecx
	movq	8(%rax), %rsi
	addq	%rcx, %rsi
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jne	.LBB76_3
# BB#2:                                 # %if.then.i
	addl	%r14d, %edx
	movl	%edx, 16(%rax)
	jmp	.LBB76_5
.LBB76_3:                               # %if.else.i
	movq	1728(%rbp), %rdi
	movl	$st_cos_stream_piece, %esi
	movl	$.L.str.15, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB76_6
# BB#4:                                 # %if.end.i
	movl	%r14d, %ecx
	subq	%rcx, %r15
	movq	%r15, 8(%rax)
	movl	%r14d, 16(%rax)
	movq	24(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	%rax, 24(%rbx)
.LBB76_5:                               # %if.end.20.i
	addq	%rcx, 56(%rbx)
	xorl	%ecx, %ecx
.LBB76_6:                               # %cos_stream_add.exit
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	cos_stream_add_bytes, .Lfunc_end76-cos_stream_add_bytes
	.cfi_endproc

	.globl	cos_stream_add_stream_contents
	.align	16, 0x90
	.type	cos_stream_add_stream_contents,@function
cos_stream_add_stream_contents:         # @cos_stream_add_stream_contents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp451:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp452:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp453:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp454:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp455:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp456:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp457:
	.cfi_def_cfa_offset 272
.Ltmp458:
	.cfi_offset %rbx, -56
.Ltmp459:
	.cfi_offset %r12, -48
.Ltmp460:
	.cfi_offset %r13, -40
.Ltmp461:
	.cfi_offset %r14, -32
.Ltmp462:
	.cfi_offset %r15, -24
.Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	spseek
	movl	$-12, %r14d
	testl	%eax, %eax
	js	.LBB77_6
# BB#1:
	leaq	16(%rsp), %rbx
	leaq	12(%rsp), %r13
	.align	16, 0x90
.LBB77_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$200, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rcx
	callq	sgets
	movl	12(%rsp), %edx
	testl	%edx, %edx
	je	.LBB77_3
# BB#4:                                 # %do.cond
                                        #   in Loop: Header=BB77_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB77_2
	jmp	.LBB77_5
.LBB77_3:                               # %if.then.3
	cmpl	$-1, %eax
	jne	.LBB77_6
.LBB77_5:                               # %do.end
	movl	%ebp, %r14d
.LBB77_6:                               # %cleanup
	movl	%r14d, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end77:
	.size	cos_stream_add_stream_contents, .Lfunc_end77-cos_stream_add_stream_contents
	.cfi_endproc

	.globl	cos_stream_release_pieces
	.align	16, 0x90
	.type	cos_stream_release_pieces,@function
cos_stream_release_pieces:              # @cos_stream_release_pieces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp464:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp465:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp466:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp467:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp468:
	.cfi_def_cfa_offset 48
.Ltmp469:
	.cfi_offset %rbx, -48
.Ltmp470:
	.cfi_offset %r12, -40
.Ltmp471:
	.cfi_offset %r13, -32
.Ltmp472:
	.cfi_offset %r14, -24
.Ltmp473:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	32(%r12), %rax
	movq	22352(%rax), %r14
	movq	%r14, %rdi
	callq	stell
	movq	%rax, %r15
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB78_1
# BB#2:                                 # %land.rhs.lr.ph
	movq	32(%r12), %rax
	movq	1728(%rax), %r13
	movq	%r15, %rbx
	.align	16, 0x90
.LBB78_3:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%rsi), %eax
	movq	8(%rsi), %rcx
	addq	%rax, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB78_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB78_3 Depth=1
	subq	%rax, %rbx
	movq	(%rsi), %rax
	movq	%rax, 24(%r12)
	movl	$.L.str.16, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	jne	.LBB78_3
	jmp	.LBB78_5
.LBB78_1:
	movq	%r15, %rbx
.LBB78_5:                               # %while.end
	cmpq	%rbx, %r15
	je	.LBB78_7
# BB#6:                                 # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	spseek
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB78_8
.LBB78_7:                               # %if.end.18
	xorl	%eax, %eax
.LBB78_8:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end78:
	.size	cos_stream_release_pieces, .Lfunc_end78-cos_stream_release_pieces
	.cfi_endproc

	.globl	cos_write_stream_alloc
	.align	16, 0x90
	.type	cos_write_stream_alloc,@function
cos_write_stream_alloc:                 # @cos_write_stream_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp474:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp475:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp476:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp477:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp478:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp479:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp480:
	.cfi_def_cfa_offset 64
.Ltmp481:
	.cfi_offset %rbx, -56
.Ltmp482:
	.cfi_offset %r12, -48
.Ltmp483:
	.cfi_offset %r13, -40
.Ltmp484:
	.cfi_offset %r14, -32
.Ltmp485:
	.cfi_offset %r15, -24
.Ltmp486:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r15
	movq	1728(%rsi), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	s_alloc
	movq	%rax, %r14
	movl	$st_cos_write_stream_state, %esi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	s_alloc_state
	movq	%rax, %r12
	movl	$512, %esi              # imm = 0x200
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*64(%rbx)
	movq	%rax, %rbp
	testq	%r14, %r14
	je	.LBB79_4
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB79_4
# BB#2:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB79_4
# BB#3:                                 # %if.end
	movq	$cos_write_stream_template, (%r12)
	movq	%r15, 112(%r12)
	movl	$0, 180(%r15)
	addq	$72, %r15
	movq	%r15, %rdi
	callq	gs_md5_init
	movq	112(%r12), %rdi
	addq	$164, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 120(%r12)
	movq	%r14, 128(%r12)
	movq	22352(%rax), %rax
	movq	%rax, 136(%r12)
	movl	$512, %edx              # imm = 0x200
	movl	$cos_s_procs, %ecx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	s_std_init
	movq	%r12, 256(%r14)
	jmp	.LBB79_5
.LBB79_4:                               # %fail
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	*24(%rbx)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	*24(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB79_5:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end79:
	.size	cos_write_stream_alloc, .Lfunc_end79-cos_write_stream_alloc
	.cfi_endproc

	.globl	cos_stream_from_pipeline
	.align	16, 0x90
	.type	cos_stream_from_pipeline,@function
cos_stream_from_pipeline:               # @cos_stream_from_pipeline
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$cos_write_stream_process, %eax
	cmpq	%rax, 224(%rdi)
	je	.LBB80_3
# BB#1:
	movl	$cos_write_stream_process, %eax
	.align	16, 0x90
.LBB80_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	240(%rdi), %rdi
	cmpq	%rax, 224(%rdi)
	jne	.LBB80_2
.LBB80_3:                               # %while.end
	movq	256(%rdi), %rax
	movq	112(%rax), %rax
	retq
.Lfunc_end80:
	.size	cos_stream_from_pipeline, .Lfunc_end80-cos_stream_from_pipeline
	.cfi_endproc

	.globl	cos_write_stream_from_pipeline
	.align	16, 0x90
	.type	cos_write_stream_from_pipeline,@function
cos_write_stream_from_pipeline:         # @cos_write_stream_from_pipeline
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$cos_write_stream_process, %eax
	cmpq	%rax, 224(%rdi)
	je	.LBB81_3
# BB#1:
	movl	$cos_write_stream_process, %eax
	.align	16, 0x90
.LBB81_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	240(%rdi), %rdi
	cmpq	%rax, 224(%rdi)
	jne	.LBB81_2
.LBB81_3:                               # %while.end
	movq	%rdi, %rax
	retq
.Lfunc_end81:
	.size	cos_write_stream_from_pipeline, .Lfunc_end81-cos_write_stream_from_pipeline
	.cfi_endproc

	.align	16, 0x90
	.type	cos_array_element_enum_ptrs,@function
cos_array_element_enum_ptrs:            # @cos_array_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jle	.LBB82_7
# BB#1:                                 # %cond.false
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB82_6
# BB#2:                                 # %sw.bb.i
	movl	16(%rsi), %ecx
	xorl	%eax, %eax
	leal	-2(%rcx), %edx
	cmpl	$2, %edx
	jae	.LBB82_3
# BB#5:                                 # %sw.bb.6.i
	movq	24(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	jmp	.LBB82_6
.LBB82_7:                               # %cond.true
	movl	$st_cos_element, %r9d
	jmp	basic_enum_ptrs         # TAILCALL
.LBB82_3:                               # %sw.bb.i
	testl	%ecx, %ecx
	jne	.LBB82_6
# BB#4:                                 # %sw.bb.1.i
	movq	24(%rsi), %rax
	movq	%rax, (%r8)
	movl	32(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	retq
.LBB82_6:                               # %cond.end
	retq
.Lfunc_end82:
	.size	cos_array_element_enum_ptrs, .Lfunc_end82-cos_array_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cos_array_element_reloc_ptrs,@function
cos_array_element_reloc_ptrs:           # @cos_array_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp487:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp488:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp489:
	.cfi_def_cfa_offset 32
.Ltmp490:
	.cfi_offset %rbx, -24
.Ltmp491:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_cos_element, %edx
	callq	basic_reloc_ptrs
	movl	16(%rbx), %eax
	leal	-2(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB83_1
# BB#3:                                 # %sw.bb.1.i
	movq	(%r14), %rax
	movq	24(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 24(%rbx)
	jmp	.LBB83_4
.LBB83_1:                               # %entry
	testl	%eax, %eax
	jne	.LBB83_4
# BB#2:                                 # %sw.bb.i
	movq	(%r14), %rax
	movq	8(%rax), %rax
	addq	$24, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB83_4:                               # %cos_value_reloc_ptrs.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end83:
	.size	cos_array_element_reloc_ptrs, .Lfunc_end83-cos_array_element_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cos_dict_element_enum_ptrs,@function
cos_dict_element_enum_ptrs:             # @cos_dict_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jle	.LBB84_13
# BB#1:                                 # %cond.false
	cmpl	$2, %ecx
	jl	.LBB84_8
# BB#2:                                 # %cond.true.3
	xorl	%eax, %eax
	cmpl	$2, %ecx
	jne	.LBB84_12
# BB#3:                                 # %sw.bb.i
	movl	32(%rsi), %ecx
	xorl	%eax, %eax
	leal	-2(%rcx), %edx
	cmpl	$2, %edx
	jae	.LBB84_4
# BB#7:                                 # %sw.bb.6.i
	movq	40(%rsi), %rax
	movq	%rax, (%r8)
	jmp	.LBB84_11
.LBB84_13:                              # %cond.true
	movl	$st_cos_element, %r9d
	jmp	basic_enum_ptrs         # TAILCALL
.LBB84_8:                               # %cond.false.6
	cmpl	$0, 24(%rsi)
	je	.LBB84_10
# BB#9:                                 # %cond.true.7
	movq	8(%rsi), %rax
	movq	%rax, (%r8)
	movl	16(%rsi), %eax
.LBB84_6:                               # %cond.end.15
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	retq
.LBB84_10:                              # %cond.false.11
	movq	$0, (%r8)
.LBB84_11:                              # %cond.end.15
	movl	$ptr_struct_procs, %eax
.LBB84_12:                              # %cond.end.15
	retq
.LBB84_4:                               # %sw.bb.i
	testl	%ecx, %ecx
	jne	.LBB84_12
# BB#5:                                 # %sw.bb.1.i
	movq	40(%rsi), %rax
	movq	%rax, (%r8)
	movl	48(%rsi), %eax
	jmp	.LBB84_6
.Lfunc_end84:
	.size	cos_dict_element_enum_ptrs, .Lfunc_end84-cos_dict_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cos_dict_element_reloc_ptrs,@function
cos_dict_element_reloc_ptrs:            # @cos_dict_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp492:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp493:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp494:
	.cfi_def_cfa_offset 32
.Ltmp495:
	.cfi_offset %rbx, -24
.Ltmp496:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_cos_element, %edx
	callq	basic_reloc_ptrs
	cmpl	$0, 24(%rbx)
	je	.LBB85_2
# BB#1:                                 # %if.then
	movq	(%r14), %rax
	leaq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
.LBB85_2:                               # %if.end
	movl	32(%rbx), %eax
	leal	-2(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB85_3
# BB#5:                                 # %sw.bb.1.i
	movq	(%r14), %rax
	movq	40(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 40(%rbx)
	jmp	.LBB85_6
.LBB85_3:                               # %if.end
	testl	%eax, %eax
	jne	.LBB85_6
# BB#4:                                 # %sw.bb.i
	movq	(%r14), %rax
	movq	8(%rax), %rax
	addq	$40, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB85_6:                               # %cos_value_reloc_ptrs.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end85:
	.size	cos_dict_element_reloc_ptrs, .Lfunc_end85-cos_dict_element_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cos_param_put_typed,@function
cos_param_put_typed:                    # @cos_param_put_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp497:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp498:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp499:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp500:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp501:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp502:
	.cfi_def_cfa_offset 56
	subq	$632, %rsp              # imm = 0x278
.Ltmp503:
	.cfi_def_cfa_offset 688
.Ltmp504:
	.cfi_offset %rbx, -56
.Ltmp505:
	.cfi_offset %r12, -48
.Ltmp506:
	.cfi_offset %r13, -40
.Ltmp507:
	.cfi_offset %r14, -32
.Ltmp508:
	.cfi_offset %r15, -24
.Ltmp509:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movq	8(%r12), %r13
	movq	24(%r12), %rax
	movq	32(%rax), %r15
	movq	%rsi, %rdi
	callq	strlen
	movslq	%eax, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	$-13, %eax
	cmpq	$99, %rcx
	ja	.LBB86_19
# BB#1:                                 # %if.end
	movl	16(%r14), %ecx
	movl	$-20, %eax
	leal	-9(%rcx), %edx
	cmpl	$2, %edx
	jb	.LBB86_19
# BB#2:                                 # %if.end
	cmpl	$7, %ecx
	jne	.LBB86_3
# BB#9:                                 # %sw.bb
	movq	1728(%r15), %rdi
	movl	$st_cos_object, %esi
	movl	$.L.str.46, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB86_19
# BB#10:                                # %cos_array_alloc.exit.thread
	movq	$cos_array_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%r15, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	movq	%rbx, %rdi
	addq	$164, %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	cmpl	$0, 8(%r14)
	je	.LBB86_11
	.align	16, 0x90
.LBB86_14:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	(%r14), %rcx
	movl	(%rcx,%rax,4), %esi
	movq	%rbx, %rdi
	callq	cos_array_add_int
	testl	%eax, %eax
	js	.LBB86_19
# BB#13:                                # %for.cond
                                        #   in Loop: Header=BB86_14 Depth=1
	incl	%ebp
	cmpl	8(%r14), %ebp
	jb	.LBB86_14
	jmp	.LBB86_11
.LBB86_3:                               # %if.end
	cmpl	$8, %ecx
	jne	.LBB86_4
# BB#15:                                # %sw.bb.53
	movq	1728(%r15), %rdi
	movl	$st_cos_object, %esi
	movl	$.L.str.46, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB86_19
# BB#16:                                # %cos_array_alloc.exit75.thread
	movq	$cos_array_procs, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%r15, 32(%rbx)
	movq	$0, 40(%rbx)
	movb	$1, 48(%rbx)
	movb	$0, 49(%rbx)
	movb	$0, 50(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 180(%rbx)
	movq	%rbx, %rdi
	addq	$164, %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	cmpl	$0, 8(%r14)
	je	.LBB86_11
	.align	16, 0x90
.LBB86_18:                              # %do.body.67
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	(%r14), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cos_array_add_real
	testl	%eax, %eax
	js	.LBB86_19
# BB#17:                                # %for.cond.60
                                        #   in Loop: Header=BB86_18 Depth=1
	incl	%ebp
	cmpl	8(%r14), %ebp
	jb	.LBB86_18
.LBB86_11:                              # %av
	movq	%rbx, 616(%rsp)
	movl	$2, 608(%rsp)
	jmp	.LBB86_12
.LBB86_4:                               # %sw.default
	leaq	16(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	movq	param_printer_params_default+32(%rip), %rax
	movq	%rax, 480(%rsp)
	movups	param_printer_params_default+16(%rip), %xmm0
	movaps	%xmm0, 464(%rsp)
	movups	param_printer_params_default(%rip), %xmm0
	movaps	%xmm0, 448(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 464(%rsp)
	movaps	%xmm0, 448(%rsp)
	movl	32(%r12), %eax
	movl	%eax, 480(%rsp)
	leaq	368(%rsp), %rbp
	leaq	448(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	s_init_param_printer
	movq	%rbx, %rdi
	callq	swrite_position_only
	movq	368(%rsp), %rax
	movl	$.L.str.44, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	*(%rax)
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r15
	movl	$.L.str.45, %edx
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	*136(%r13)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB86_8
# BB#5:                                 # %if.end.14
	leaq	16(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	swrite_string
	movq	368(%rsp), %rax
	leaq	368(%rsp), %rdi
	movl	$.L.str.44, %esi
	movq	%r14, %rdx
	callq	*(%rax)
	movzbl	1(%rbx), %ecx
	movl	$2, %eax
	cmpl	$32, %ecx
	je	.LBB86_7
# BB#6:                                 # %select.mid
	movl	$1, %eax
.LBB86_7:                               # %select.end
	movl	%eax, %ecx
	movq	%rbx, %rsi
	addq	%rcx, %rsi
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memmove
	movl	$.L.str.45, %r8d
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	*152(%r13)
	movq	%rax, 616(%rsp)
	movl	%ebp, 624(%rsp)
	movl	$0, 608(%rsp)
.LBB86_12:                              # %sw.epilog
	leaq	497(%rsp), %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movb	$47, 496(%rsp)
	movq	24(%r12), %rdi
	incl	%ebx
	leaq	496(%rsp), %rsi
	leaq	608(%rsp), %rcx
	movl	$5, %r8d
	movl	%ebx, %edx
	callq	cos_dict_put_copy
	jmp	.LBB86_19
.LBB86_8:                               # %cleanup
	movl	$-25, %eax
.LBB86_19:                              # %cleanup.94
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end86:
	.size	cos_param_put_typed, .Lfunc_end86-cos_param_put_typed
	.cfi_endproc

	.align	16, 0x90
	.type	cos_write_stream_process,@function
cos_write_stream_process:               # @cos_write_stream_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp510:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp511:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp512:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp513:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp514:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp515:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp516:
	.cfi_def_cfa_offset 64
.Ltmp517:
	.cfi_offset %rbx, -56
.Ltmp518:
	.cfi_offset %r12, -48
.Ltmp519:
	.cfi_offset %r13, -40
.Ltmp520:
	.cfi_offset %r14, -32
.Ltmp521:
	.cfi_offset %r15, -24
.Ltmp522:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	8(%rbx), %ebp
	subl	(%rbx), %ebp
	movq	120(%r14), %r13
	movq	136(%r14), %r12
	movq	22352(%r13), %rdi
	callq	stell
	movq	%rax, %r15
	movq	(%rbx), %rsi
	incq	%rsi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	stream_write
	movq	112(%r14), %rdi
	addq	$72, %rdi
	movq	(%rbx), %rsi
	incq	%rsi
	movl	%ebp, %edx
	callq	gs_md5_append
	movq	8(%rbx), %rax
	movq	%rax, (%rbx)
	movq	%r12, %rdi
	callq	*208(%r12)
	movq	112(%r14), %r12
	movq	22352(%r13), %rdi
	callq	stell
	movq	%rax, %rbx
	subq	%r15, %rbx
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	movq	32(%r12), %rbp
	movq	22352(%rbp), %rdi
	callq	stell
	movq	%rax, %r14
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.LBB87_3
# BB#1:                                 # %land.lhs.true.i
	movl	16(%rax), %edx
	movq	%rbx, %rcx
	andq	%r15, %rcx
	movq	8(%rax), %rsi
	addq	%rcx, %rsi
	addq	%rdx, %rsi
	cmpq	%r14, %rsi
	jne	.LBB87_3
# BB#2:                                 # %if.then.i
	addl	%ebx, %edx
	movl	%edx, 16(%rax)
	jmp	.LBB87_5
.LBB87_3:                               # %if.else.i
	movq	1728(%rbp), %rdi
	movl	$st_cos_stream_piece, %esi
	movl	$.L.str.15, %edx
	callq	*72(%rdi)
	movl	$-2, %ecx
	testq	%rax, %rax
	je	.LBB87_6
# BB#4:                                 # %if.end.i
	movq	%rbx, %rcx
	andq	%r15, %rcx
	subq	%rcx, %r14
	movq	%r14, 8(%rax)
	movl	%ebx, 16(%rax)
	movq	24(%r12), %rdx
	movq	%rdx, (%rax)
	movq	%rax, 24(%r12)
.LBB87_5:                               # %if.end.20.i
	addq	%rcx, 56(%r12)
	xorl	%ecx, %ecx
.LBB87_6:                               # %cos_stream_add.exit
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end87:
	.size	cos_write_stream_process, .Lfunc_end87-cos_write_stream_process
	.cfi_endproc

	.align	16, 0x90
	.type	cos_write_stream_close,@function
cos_write_stream_close:                 # @cos_write_stream_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp523:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp524:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp525:
	.cfi_def_cfa_offset 32
.Ltmp526:
	.cfi_offset %rbx, -32
.Ltmp527:
	.cfi_offset %r14, -24
.Ltmp528:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	256(%rbx), %rbp
	callq	*208(%rbx)
	leaq	136(%rbp), %rdi
	movq	120(%rbp), %rax
	movq	22352(%rax), %rsi
	callq	s_close_filters
	movl	%eax, %r14d
	movq	112(%rbp), %rsi
	leaq	72(%rsi), %rdi
	addq	$184, %rsi
	callq	gs_md5_finish
	movq	112(%rbp), %rax
	movl	$1, 180(%rax)
	testl	%r14d, %r14d
	js	.LBB88_1
# BB#2:                                 # %cond.false
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	s_std_close             # TAILCALL
.LBB88_1:                               # %cond.end
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end88:
	.size	cos_write_stream_close, .Lfunc_end88-cos_write_stream_close
	.cfi_endproc

	.type	cos_generic_procs,@object # @cos_generic_procs
	.section	.rodata,"a",@progbits
	.globl	cos_generic_procs
	.align	8
cos_generic_procs:
	.quad	cos_generic_release
	.quad	cos_generic_write
	.quad	cos_generic_equal
	.quad	cos_generic_hash
	.size	cos_generic_procs, 32

	.type	cos_reference_procs,@object # @cos_reference_procs
	.globl	cos_reference_procs
	.align	8
cos_reference_procs:
	.quad	cos_reference_release
	.quad	cos_generic_write
	.quad	cos_generic_equal
	.quad	cos_generic_hash
	.size	cos_reference_procs, 32

	.type	st_cos_object,@object   # @st_cos_object
	.align	8
st_cos_object:
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cos_object_reloc_ptrs
	.size	st_cos_object, 64

	.type	cos_array_procs,@object # @cos_array_procs
	.globl	cos_array_procs
	.align	8
cos_array_procs:
	.quad	cos_array_release
	.quad	cos_array_write
	.quad	cos_array_equal
	.quad	cos_array_hash
	.size	cos_array_procs, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cos_array_put(old value)"
	.size	.L.str, 25

	.type	st_cos_array_element,@object # @st_cos_array_element
	.section	.rodata,"a",@progbits
	.align	8
st_cos_array_element:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.29
	.quad	0
	.quad	0
	.quad	cos_array_element_enum_ptrs
	.quad	cos_array_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cos_array_element, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"cos_array_put(element)"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%g"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cos_array_unadd"
	.size	.L.str.4, 16

	.type	cos_dict_procs,@object  # @cos_dict_procs
	.section	.rodata,"a",@progbits
	.globl	cos_dict_procs
	.align	8
cos_dict_procs:
	.quad	cos_dict_release
	.quad	cos_dict_write
	.quad	cos_dict_equal
	.quad	cos_dict_hash
	.size	cos_dict_procs, 32

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"<<>>\n"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"<<\n/Limits [\n"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\n]\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/Names ["
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"]\n>>\n"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"true"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"false"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"cos_dict_put_c_key_floats"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cos_dict_move_all_from"
	.size	.L.str.14, 23

	.type	cos_param_list_writer_procs,@object # @cos_param_list_writer_procs
	.section	.rodata,"a",@progbits
	.align	8
cos_param_list_writer_procs:
	.quad	cos_param_put_typed
	.quad	0
	.quad	0
	.quad	0
	.quad	gs_param_request_default
	.quad	gs_param_requested_default
	.quad	0
	.quad	0
	.quad	0
	.size	cos_param_list_writer_procs, 72

	.type	cos_stream_procs,@object # @cos_stream_procs
	.globl	cos_stream_procs
	.align	8
cos_stream_procs:
	.quad	cos_stream_release
	.quad	cos_stream_write
	.quad	cos_stream_equal
	.quad	cos_stream_hash
	.size	cos_stream_procs, 32

	.type	st_cos_stream_piece,@object # @st_cos_stream_piece
	.align	8
st_cos_stream_piece:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.50
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cos_element_reloc_ptrs
	.size	st_cos_stream_piece, 64

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"cos_stream_add"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cos_stream_release_pieces"
	.size	.L.str.16, 26

	.type	st_cos_write_stream_state,@object # @st_cos_write_stream_state
	.section	.rodata,"a",@progbits
	.align	8
st_cos_write_stream_state:
	.long	144                     # 0x90
	.zero	4
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cos_ws_state_reloc_ptrs
	.size	st_cos_write_stream_state, 64

	.type	cos_write_stream_template,@object # @cos_write_stream_template
	.align	8
cos_write_stream_template:
	.quad	st_cos_write_stream_state
	.quad	0
	.quad	cos_write_stream_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	cos_write_stream_template, 56

	.type	cos_s_procs,@object     # @cos_s_procs
	.align	8
cos_s_procs:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_write_reset
	.quad	s_std_write_flush
	.quad	cos_write_stream_close
	.quad	cos_write_stream_process
	.quad	0
	.size	cos_s_procs, 56

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"/R%ld"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%ld 0 R"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"cos_object_t"
	.size	.L.str.19, 13

	.type	cos_object_reloc_ptrs,@object # @cos_object_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cos_object_reloc_ptrs:
	.short	5                       # 0x5
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cos_object_enum_ptrs
	.size	cos_object_reloc_ptrs, 24

	.type	cos_object_enum_ptrs,@object # @cos_object_enum_ptrs
	.align	16
cos_object_enum_ptrs:
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	40                      # 0x28
	.short	0                       # 0x0
	.short	64                      # 0x40
	.size	cos_object_enum_ptrs, 20

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"["
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Too many entries in array,\n max 8191 in PDF/A, reverting to normal PDF output\n"
	.size	.L.str.21, 79

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Too many entries in array,\n max 8191 in PDF/A. Cannot simply elide dictionary, reverting to normal output\n"
	.size	.L.str.22, 107

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Too many entries in array,\n max 8191 in PDF/A. aborting conversion\n"
	.size	.L.str.23, 68

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Too many entries in array,\n max 8191 in PDF/A. Unrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.24, 116

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"null\n"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"]"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"cos_copy_element_value"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"cos_uncopy_element_value"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"cos_array_element_t"
	.size	.L.str.29, 20

	.type	st_cos_element,@object  # @st_cos_element
	.section	.rodata,"a",@progbits
	.align	8
st_cos_element:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.30
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cos_element_reloc_ptrs
	.size	st_cos_element, 64

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"cos_element_t"
	.size	.L.str.30, 14

	.type	cos_element_reloc_ptrs,@object # @cos_element_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cos_element_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cos_element_enum_ptrs
	.size	cos_element_reloc_ptrs, 24

	.type	cos_element_enum_ptrs,@object # @cos_element_enum_ptrs
	.align	2
cos_element_enum_ptrs:
	.zero	4
	.size	cos_element_enum_ptrs, 4

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"cos_dict_delete"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Too many entries in dictionary,\n max 4095 in PDF/A, reverting to normal PDF output\n"
	.size	.L.str.33, 84

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Too many entries in dictionary,\n max 4095 in PDF/A. Cannot simply elide dictionary, reverting to normal output\n"
	.size	.L.str.34, 112

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Too many entries in dictionary,\n max 4095 in PDF/A. aborting conversion\n"
	.size	.L.str.35, 73

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Too many entries in dictionary,\n max 4095 in PDF/A. Unrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.36, 121

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"<<"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	">>"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"cos_dict_put(new key)"
	.size	.L.str.39, 22

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"cos_dict_put(old value)"
	.size	.L.str.40, 24

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"cos_dict_put(key)"
	.size	.L.str.41, 18

	.type	st_cos_dict_element,@object # @st_cos_dict_element
	.section	.rodata,"a",@progbits
	.align	8
st_cos_dict_element:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.43
	.quad	0
	.quad	0
	.quad	cos_dict_element_enum_ptrs
	.quad	cos_dict_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cos_dict_element, 64

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"cos_dict_put(element)"
	.size	.L.str.42, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"cos_dict_element_t"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.zero	1
	.size	.L.str.44, 1

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"cos_param_put(string)"
	.size	.L.str.45, 22

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"cos_param_put(array)"
	.size	.L.str.46, 21

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"hash_cos_stream"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/Length %ld>>stream\n"
	.size	.L.str.48, 21

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\nendstream\n"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"cos_stream_piece_t"
	.size	.L.str.50, 19

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"cos_write_stream_state_t"
	.size	.L.str.51, 25

	.type	cos_ws_state_reloc_ptrs,@object # @cos_ws_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cos_ws_state_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_stream_state
	.quad	cos_ws_state_enum_ptrs
	.size	cos_ws_state_reloc_ptrs, 24

	.type	cos_ws_state_enum_ptrs,@object # @cos_ws_state_enum_ptrs
	.align	16
cos_ws_state_enum_ptrs:
	.short	0                       # 0x0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.short	120                     # 0x78
	.short	0                       # 0x0
	.short	128                     # 0x80
	.short	0                       # 0x0
	.short	136                     # 0x88
	.size	cos_ws_state_enum_ptrs, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
