	.text
	.file	"ialloc.bc"
	.globl	ialloc_init
	.align	16, 0x90
	.type	ialloc_init,@function
ialloc_init:                            # @ialloc_init
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	ialloc_alloc_state
	movq	%rax, %r12
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	ialloc_alloc_state
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	ialloc_alloc_state
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB0_1
# BB#3:                                 # %entry
	testq	%r14, %r14
	je	.LBB0_1
# BB#4:                                 # %entry
	testq	%rax, %rax
	movl	$0, %edi
	je	.LBB0_2
# BB#5:                                 # %if.end
	movq	%r14, (%r12)
	cmpl	$0, (%rsp)              # 4-byte Folded Reload
	movq	%r12, %rbx
	movq	%r14, %rdi
	je	.LBB0_10
# BB#6:                                 # %if.then.6
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	ialloc_alloc_state
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	ialloc_alloc_state
	movq	%rax, %rdi
	testq	%rbx, %rbx
	je	.LBB0_7
# BB#8:                                 # %if.then.6
	testq	%rdi, %rdi
	movq	(%rsp), %rax            # 8-byte Reload
	je	.LBB0_2
# BB#9:                                 # %if.end.13
	movq	%rdi, (%rbx)
.LBB0_10:                               # %if.end.15
	movq	$0, 16(%r13)
	movq	%r12, 40(%r13)
	movq	%rbx, 32(%r13)
	movq	%rax, 24(%r13)
	movq	$gs_gc_reclaim, 8(%r13)
	movq	$0, 56(%r13)
	movl	$8, 224(%rbx)
	movl	$8, 224(%rdi)
	movl	$12, 224(%r12)
	movl	$12, 224(%r14)
	movl	$4, 224(%rax)
	movq	%rbx, (%r13)
	movl	224(%rbx), %eax
	movl	%eax, 48(%r13)
	xorl	%eax, %eax
	jmp	.LBB0_11
.LBB0_1:
	xorl	%edi, %edi
	jmp	.LBB0_2
.LBB0_7:
	movq	(%rsp), %rax            # 8-byte Reload
.LBB0_2:                                # %fail
	movq	%rax, %rbp
	callq	ialloc_free_state
	movq	%rbx, %rdi
	callq	ialloc_free_state
	movq	%rbp, %rdi
	callq	ialloc_free_state
	movq	%r14, %rdi
	callq	ialloc_free_state
	movq	%r12, %rdi
	callq	ialloc_free_state
	movl	$-25, %eax
.LBB0_11:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ialloc_init, .Lfunc_end0-ialloc_init
	.cfi_endproc

	.globl	ialloc_set_space
	.align	16, 0x90
	.type	ialloc_set_space,@function
ialloc_set_space:                       # @ialloc_set_space
	.cfi_startproc
# BB#0:                                 # %entry
	shrl	$2, %esi
	movq	16(%rdi,%rsi,8), %rax
	movq	%rax, (%rdi)
	movl	224(%rax), %eax
	movl	%eax, 48(%rdi)
	retq
.Lfunc_end1:
	.size	ialloc_set_space, .Lfunc_end1-ialloc_set_space
	.cfi_endproc

	.globl	imemory_space
	.align	16, 0x90
	.type	imemory_space,@function
imemory_space:                          # @imemory_space
	.cfi_startproc
# BB#0:                                 # %entry
	movl	224(%rdi), %eax
	retq
.Lfunc_end2:
	.size	imemory_space, .Lfunc_end2-imemory_space
	.cfi_endproc

	.globl	imemory_new_mask
	.align	16, 0x90
	.type	imemory_new_mask,@function
imemory_new_mask:                       # @imemory_new_mask
	.cfi_startproc
# BB#0:                                 # %entry
	movl	556(%rdi), %eax
	retq
.Lfunc_end3:
	.size	imemory_new_mask, .Lfunc_end3-imemory_new_mask
	.cfi_endproc

	.globl	imemory_save_level
	.align	16, 0x90
	.type	imemory_save_level,@function
imemory_save_level:                     # @imemory_save_level
	.cfi_startproc
# BB#0:                                 # %entry
	movl	552(%rdi), %eax
	retq
.Lfunc_end4:
	.size	imemory_save_level, .Lfunc_end4-imemory_save_level
	.cfi_endproc

	.globl	ialloc_reset_requested
	.align	16, 0x90
	.type	ialloc_reset_requested,@function
ialloc_reset_requested:                 # @ialloc_reset_requested
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	movq	$0, 264(%rax)
	movq	32(%rdi), %rax
	movq	$0, 264(%rax)
	movq	40(%rdi), %rax
	movq	$0, 264(%rax)
	retq
.Lfunc_end5:
	.size	ialloc_reset_requested, .Lfunc_end5-ialloc_reset_requested
	.cfi_endproc

	.globl	gs_register_ref_root
	.align	16, 0x90
	.type	gs_register_ref_root,@function
gs_register_ref_root:                   # @gs_register_ref_root
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	168(%rdi), %rax
	movl	$ptr_ref_procs, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end6:
	.size	gs_register_ref_root, .Lfunc_end6-gs_register_ref_root
	.cfi_endproc

	.globl	gs_alloc_ref_array
	.align	16, 0x90
	.type	gs_alloc_ref_array,@function
gs_alloc_ref_array:                     # @gs_alloc_ref_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rdi, %rbx
	movq	344(%rbx), %rbp
	cmpq	328(%rbx), %rbp
	jne	.LBB7_4
# BB#1:                                 # %land.lhs.true
	movl	%r15d, %eax
	movq	352(%rbx), %rcx
	subq	%rbp, %rcx
	shrq	$4, %rcx
	cmpq	%rcx, %rax
	jae	.LBB7_4
# BB#2:                                 # %land.lhs.true.7
	movq	336(%rbx), %rcx
	shlq	$4, %rax
	leaq	(%rbp,%rax), %rdx
	movq	%rdx, %rdi
	subq	%rcx, %rdi
	cmpq	$799, %rdi              # imm = 0x31F
	ja	.LBB7_4
# BB#3:                                 # %if.then
	addl	%eax, -20(%rcx)
	movq	%rdx, 328(%rbx)
	movq	%rdx, 344(%rbx)
	movw	$3072, -16(%rbp,%rax)   # imm = 0xC00
	addq	$-16, %rbp
	jmp	.LBB7_14
.LBB7_4:                                # %if.else
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	488(%rbx), %r14
	movq	$0, 32(%rsp)
	cmpq	(%rbx), %rbx
	je	.LBB7_6
# BB#5:                                 # %if.then.38
	leaq	32(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	alloc_save_change_alloc
	testl	%eax, %eax
	js	.LBB7_15
.LBB7_6:                                # %if.end.42
	leal	1(%r15), %esi
	movl	$st_refs, %edx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	*104(%rbx)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB7_15
# BB#7:                                 # %if.end.48
	movl	%r15d, %ecx
	shlq	$4, %rcx
	movq	%rbp, %rax
	addq	%rcx, %rax
	movw	$3072, (%rbp,%rcx)      # imm = 0xC00
	cmpq	%r14, 488(%rbx)
	je	.LBB7_9
# BB#8:                                 # %if.end.48.if.then.60_crit_edge
	addq	$16, %rax
	jmp	.LBB7_10
.LBB7_9:                                # %lor.lhs.false
	addq	$16, %rax
	cmpq	%rax, 328(%rbx)
	je	.LBB7_10
# BB#11:                                # %if.else.67
	movq	%rbx, 16(%rsp)
	movq	296(%rbx), %rax
	movq	%rax, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	callq	chunk_locate_ptr
	movq	24(%rsp), %rax
	movl	$1, 100(%rax)
	jmp	.LBB7_12
.LBB7_10:                               # %if.then.60
	movq	%rbp, 336(%rbx)
	movq	%rax, 344(%rbx)
	movl	$1, 404(%rbx)
.LBB7_12:                               # %if.end.72
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.LBB7_14
# BB#13:                                # %if.then.73
	movq	%rax, 600(%rbx)
	movq	%rbp, 8(%rax)
.LBB7_14:                               # %if.end.78
	movq	%rbp, 8(%rsi)
	orl	224(%rbx), %r12d
	addl	$1024, %r12d            # imm = 0x400
	movw	%r12w, (%rsi)
	movl	%r15d, 4(%rsi)
	xorl	%eax, %eax
.LBB7_15:                               # %cleanup.84
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_alloc_ref_array, .Lfunc_end7-gs_alloc_ref_array
	.cfi_endproc

	.globl	gs_resize_ref_array
	.align	16, 0x90
	.type	gs_resize_ref_array,@function
gs_resize_ref_array:                    # @gs_resize_ref_array
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rsi), %r8d
	movl	$-100, %eax
	movl	%r8d, %r9d
	subl	%edx, %r9d
	jb	.LBB8_7
# BB#1:                                 # %lor.lhs.false
	movzbl	1(%rsi), %ecx
	cmpl	$4, %ecx
	jne	.LBB8_7
# BB#2:                                 # %if.end
	movq	344(%rdi), %rax
	cmpq	328(%rdi), %rax
	jne	.LBB8_5
# BB#3:                                 # %land.lhs.true
	incl	%r8d
	shlq	$4, %r8
	addq	8(%rsi), %r8
	cmpq	%rax, %r8
	je	.LBB8_4
.LBB8_5:                                # %do.end.30
	movl	%r9d, %eax
	shlq	$4, %rax
	addq	%rax, 536(%rdi)
.LBB8_6:                                # %if.end.35
	movl	%edx, 4(%rsi)
	xorl	%eax, %eax
.LBB8_7:                                # %cleanup
	retq
.LBB8_4:                                # %if.then.11
	movl	%r9d, %ecx
	shlq	$4, %rcx
	subq	%rcx, %rax
	movq	%rax, 344(%rdi)
	movq	%rax, 328(%rdi)
	movq	336(%rdi), %rdi
	subl	%ecx, -20(%rdi)
	movw	$3072, -16(%rax)        # imm = 0xC00
	jmp	.LBB8_6
.Lfunc_end8:
	.size	gs_resize_ref_array, .Lfunc_end8-gs_resize_ref_array
	.cfi_endproc

	.globl	gs_free_ref_array
	.align	16, 0x90
	.type	gs_free_ref_array,@function
gs_free_ref_array:                      # @gs_free_ref_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 64
.Ltmp32:
	.cfi_offset %rbx, -48
.Ltmp33:
	.cfi_offset %r12, -40
.Ltmp34:
	.cfi_offset %r13, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %r15, -16
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	4(%r12), %ebx
	movq	8(%r12), %r14
	movzbl	1(%r12), %eax
	cmpl	$4, %eax
	jne	.LBB9_16
# BB#1:                                 # %if.else
	movq	344(%r15), %rax
	cmpq	328(%r15), %rax
	jne	.LBB9_8
# BB#2:                                 # %land.lhs.true
	leal	1(%rbx), %ecx
	shlq	$4, %rcx
	leaq	(%rcx,%r14), %rcx
	cmpq	%rax, %rcx
	je	.LBB9_3
.LBB9_8:                                # %if.else.40
	movl	220(%r15), %ecx
	shrl	$4, %ecx
	decq	%rcx
	movb	$4, %al
	cmpq	%rcx, %rbx
	jb	.LBB9_16
# BB#9:                                 # %if.then.46
	movq	%r15, (%rsp)
	movq	296(%r15), %rax
	movq	%rax, 8(%rsp)
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	chunk_locate_ptr
	testl	%eax, %eax
	je	.LBB9_15
# BB#10:                                # %land.lhs.true.47
	movq	8(%rsp), %rdi
	movq	8(%rdi), %rax
	addq	$24, %rax
	cmpq	%rax, %r14
	jne	.LBB9_15
# BB#11:                                # %land.lhs.true.52
	leal	1(%rbx), %eax
	shlq	$4, %rax
	leaq	(%rax,%r14), %rax
	cmpq	64(%rdi), %rax
	je	.LBB9_12
.LBB9_15:                               # %cleanup
	movb	1(%r12), %al
.LBB9_16:                               # %do.end.75
	movzbl	%al, %eax
	cmpl	$4, %eax
	je	.LBB9_45
# BB#17:                                # %do.end.75
	cmpl	$5, %eax
	jne	.LBB9_18
# BB#20:                                # %sw.bb.84
	movq	8(%r12), %rax
	testl	%ebx, %ebx
	movq	%rax, %rsi
	je	.LBB9_43
# BB#21:                                # %for.body.preheader
	leal	-1(%rbx), %r8d
	testb	$3, %bl
	je	.LBB9_22
# BB#23:                                # %for.body.prol.preheader
	movl	%ebx, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	movq	%rax, %rsi
	.align	16, 0x90
.LBB9_24:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB9_26
# BB#25:                                #   in Loop: Header=BB9_24 Depth=1
	addq	$2, %rsi
	jmp	.LBB9_27
	.align	16, 0x90
.LBB9_26:                               # %select.mid
                                        #   in Loop: Header=BB9_24 Depth=1
	addq	$16, %rsi
.LBB9_27:                               # %select.end
                                        #   in Loop: Header=BB9_24 Depth=1
	incl	%edx
	cmpl	%edx, %edi
	jne	.LBB9_24
	jmp	.LBB9_28
.LBB9_45:                               # %sw.bb.98
	shll	$4, %ebx
	jmp	.LBB9_46
.LBB9_18:                               # %do.end.75
	cmpl	$6, %eax
	jne	.LBB9_44
# BB#19:                                # %sw.bb
	addl	%ebx, %ebx
.LBB9_46:                               # %sw.epilog
	movl	%ebx, %esi
	jmp	.LBB9_47
.LBB9_44:                               # %sw.default
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.3, %edi
	movl	$353, %esi              # imm = 0x161
	callq	lprintf_file_and_line
	movzbl	1(%r12), %esi
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	movl	%ebx, %edx
	movq	%r14, %rcx
	callq	errprintf_nomem
	jmp	.LBB9_48
.LBB9_22:
	xorl	%edx, %edx
	movq	%rax, %rsi
.LBB9_28:                               # %for.body.preheader.split
	cmpl	$3, %r8d
	jb	.LBB9_43
# BB#29:                                # %for.body.preheader.split.split
	subl	%edx, %ebx
	.align	16, 0x90
.LBB9_30:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB9_32
# BB#31:                                #   in Loop: Header=BB9_30 Depth=1
	addq	$2, %rsi
	jmp	.LBB9_33
	.align	16, 0x90
.LBB9_32:                               # %select.mid92
                                        #   in Loop: Header=BB9_30 Depth=1
	addq	$16, %rsi
.LBB9_33:                               # %select.end91
                                        #   in Loop: Header=BB9_30 Depth=1
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB9_35
# BB#34:                                #   in Loop: Header=BB9_30 Depth=1
	addq	$2, %rsi
	jmp	.LBB9_36
	.align	16, 0x90
.LBB9_35:                               # %select.mid97
                                        #   in Loop: Header=BB9_30 Depth=1
	addq	$16, %rsi
.LBB9_36:                               # %select.end96
                                        #   in Loop: Header=BB9_30 Depth=1
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB9_38
# BB#37:                                #   in Loop: Header=BB9_30 Depth=1
	addq	$2, %rsi
	jmp	.LBB9_39
	.align	16, 0x90
.LBB9_38:                               # %select.mid99
                                        #   in Loop: Header=BB9_30 Depth=1
	addq	$16, %rsi
.LBB9_39:                               # %select.end98
                                        #   in Loop: Header=BB9_30 Depth=1
	movzwl	(%rsi), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	jbe	.LBB9_41
# BB#40:                                #   in Loop: Header=BB9_30 Depth=1
	addq	$2, %rsi
	jmp	.LBB9_42
	.align	16, 0x90
.LBB9_41:                               # %select.mid101
                                        #   in Loop: Header=BB9_30 Depth=1
	addq	$16, %rsi
.LBB9_42:                               # %select.end100
                                        #   in Loop: Header=BB9_30 Depth=1
	addl	$-4, %ebx
	jne	.LBB9_30
.LBB9_43:                               # %for.end
	subl	%eax, %esi
.LBB9_47:                               # %sw.epilog
	movl	%esi, %ebx
	shrl	$4, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	refset_null_new
	addq	%rbx, 536(%r15)
.LBB9_48:                               # %cleanup.118
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB9_3:                                # %if.then.10
	movq	336(%r15), %rax
	cmpq	%rax, %r14
	je	.LBB9_4
# BB#7:                                 # %do.end.25
	shll	$4, %ebx
	subl	%ebx, -20(%rax)
	leaq	16(%r14), %rax
	movq	%rax, 328(%r15)
	movq	%rax, 344(%r15)
	movw	$3072, (%r14)           # imm = 0xC00
	jmp	.LBB9_48
.LBB9_4:                                # %if.then.14
	cmpq	(%r15), %r15
	je	.LBB9_6
# BB#5:                                 # %if.then.17
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	alloc_save_remove
.LBB9_6:                                # %if.end
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	*24(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 336(%r15)
	jmp	.LBB9_48
.LBB9_12:                               # %do.end.62
	cmpq	(%r15), %r15
	je	.LBB9_14
# BB#13:                                # %if.then.66
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	alloc_save_remove
	movq	8(%rsp), %rdi
.LBB9_14:                               # %if.end.67
	movq	%r15, %rsi
	callq	alloc_free_chunk
	jmp	.LBB9_48
.Lfunc_end9:
	.size	gs_free_ref_array, .Lfunc_end9-gs_free_ref_array
	.cfi_endproc

	.globl	gs_alloc_string_ref
	.align	16, 0x90
	.type	gs_alloc_string_ref,@function
gs_alloc_string_ref:                    # @gs_alloc_string_ref
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
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 48
.Ltmp42:
	.cfi_offset %rbx, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	%r14d, %esi
	movq	%r8, %rdx
	callq	*136(%rbx)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB10_2
# BB#1:                                 # %if.end
	movq	%rcx, 8(%r15)
	orl	224(%rbx), %ebp
	addl	$4608, %ebp             # imm = 0x1200
	movw	%bp, (%r15)
	movl	%r14d, 4(%r15)
	xorl	%eax, %eax
.LBB10_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_alloc_string_ref, .Lfunc_end10-gs_alloc_string_ref
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_dual_memory_t"
	.size	.L.str, 17

	.type	st_gs_dual_memory,@object # @st_gs_dual_memory
	.section	.rodata,"a",@progbits
	.globl	st_gs_dual_memory
	.align	8
st_gs_dual_memory:
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_dual_memory, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_alloc_ref_array"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_free_ref_array"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"./psi/ialloc.c"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unknown type 0x%x in free_ref_array(%u,0x%lx)!"
	.size	.L.str.4, 47


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
