	.text
	.file	"gsmemory.bc"
	.globl	gs_no_struct_enum_ptrs
	.align	16, 0x90
	.type	gs_no_struct_enum_ptrs,@function
gs_no_struct_enum_ptrs:                 # @gs_no_struct_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gs_no_struct_enum_ptrs, .Lfunc_end0-gs_no_struct_enum_ptrs
	.cfi_endproc

	.globl	gs_no_struct_reloc_ptrs
	.align	16, 0x90
	.type	gs_no_struct_reloc_ptrs,@function
gs_no_struct_reloc_ptrs:                # @gs_no_struct_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end1:
	.size	gs_no_struct_reloc_ptrs, .Lfunc_end1-gs_no_struct_reloc_ptrs
	.cfi_endproc

	.globl	basic_enum_ptrs
	.align	16, 0x90
	.type	basic_enum_ptrs,@function
basic_enum_ptrs:                        # @basic_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB2_10
# BB#1:                                 # %if.end
	movq	56(%r9), %rdx
	movzwl	(%rdx), %r11d
	cmpl	%ecx, %r11d
	jle	.LBB2_7
# BB#2:                                 # %if.then.3
	movslq	%ecx, %rax
	movq	16(%rdx), %rbx
	movzwl	2(%rbx,%rax,4), %r10d
	movzwl	(%rbx,%rax,4), %eax
	cmpl	$2, %eax
	je	.LBB2_6
# BB#3:                                 # %if.then.3
	cmpl	$1, %eax
	jne	.LBB2_4
# BB#9:                                 # %sw.bb.6
	movq	(%rsi,%r10), %rax
	movq	%rax, (%r8)
	movl	8(%rsi,%r10), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	jmp	.LBB2_10
.LBB2_6:                                # %sw.bb.10
	movq	(%rsi,%r10), %rax
	movq	%rax, (%r8)
	movl	8(%rsi,%r10), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
	popq	%rbx
	retq
.LBB2_4:                                # %if.then.3
	testl	%eax, %eax
	jne	.LBB2_7
# BB#5:                                 # %sw.bb
	movq	(%rsi,%r10), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	popq	%rbx
	retq
.LBB2_7:                                # %if.end.16
	movq	8(%rdx), %r10
	xorl	%eax, %eax
	testq	%r10, %r10
	je	.LBB2_10
# BB#8:                                 # %if.end.18
	movq	32(%r10), %rax
	movzwl	2(%rdx), %edx
	addq	%rdx, %rsi
	movl	(%r9), %edx
	subl	%r11d, %ecx
	movq	%r10, %r9
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB2_10:                               # %cleanup.26
	popq	%rbx
	retq
.Lfunc_end2:
	.size	basic_enum_ptrs, .Lfunc_end2-basic_enum_ptrs
	.cfi_endproc

	.globl	basic_reloc_ptrs
	.align	16, 0x90
	.type	basic_reloc_ptrs,@function
basic_reloc_ptrs:                       # @basic_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 64
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	56(%r14), %r13
	cmpw	$0, (%r13)
	je	.LBB3_9
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	16(%r13), %rcx
	movzwl	2(%rcx,%rax,4), %edx
	leaq	(%rdx,%r15), %rbx
	movzwl	(%rcx,%rax,4), %eax
	cmpl	$2, %eax
	je	.LBB3_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$1, %eax
	jne	.LBB3_4
# BB#6:                                 # %sw.bb.4
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r12), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*8(%rax)
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_7:                                # %sw.bb.5
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r12), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*16(%rax)
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	testl	%eax, %eax
	jne	.LBB3_8
# BB#5:                                 # %sw.bb
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r12), %rax
	movq	(%rbx), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	.align	16, 0x90
.LBB3_8:                                # %sw.epilog
                                        #   in Loop: Header=BB3_2 Depth=1
	incl	%ebp
	movzwl	(%r13), %eax
	cmpl	%eax, %ebp
	jb	.LBB3_2
.LBB3_9:                                # %for.end
	movq	8(%r13), %rdx
	testq	%rdx, %rdx
	je	.LBB3_10
# BB#11:                                # %if.then
	movq	40(%rdx), %rax
	movzwl	2(%r13), %ecx
	addq	%rcx, %r15
	movl	(%r14), %esi
	movq	%r15, %rdi
	movq	%r12, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB3_10:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	basic_reloc_ptrs, .Lfunc_end3-basic_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	const_string_elt_enum_ptrs,@function
const_string_elt_enum_ptrs:             # @const_string_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %edi
	xorl	%eax, %eax
	shrl	$4, %edi
	je	.LBB4_3
# BB#1:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jg	.LBB4_3
# BB#2:                                 # %if.then.3.i
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	shlq	$4, %rdx
	movq	(%rsi,%rdx), %rax
	movq	%rax, (%r8)
	movl	8(%rsi,%rdx), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
.LBB4_3:                                # %cleanup
	retq
.Lfunc_end4:
	.size	const_string_elt_enum_ptrs, .Lfunc_end4-const_string_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	const_string_elt_reloc_ptrs,@function
const_string_elt_reloc_ptrs:            # @const_string_elt_reloc_ptrs
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
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-16, %ebp
	je	.LBB5_3
# BB#1:                                 # %for.body.preheader
	shrl	$4, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$16, %esi
	movl	$st_const_string, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$16, %rbx
	incl	%ebp
	jne	.LBB5_2
.LBB5_3:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	const_string_elt_reloc_ptrs, .Lfunc_end5-const_string_elt_reloc_ptrs
	.cfi_endproc

	.globl	enum_bytestring
	.align	16, 0x90
	.type	enum_bytestring,@function
enum_bytestring:                        # @enum_bytestring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rsi), %rax
	testq	%rax, %rax
	je	.LBB6_2
# BB#1:                                 # %cond.true
	movq	%rax, (%rdi)
	movl	$ptr_struct_procs, %eax
	retq
.LBB6_2:                                # %cond.false
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movl	8(%rsi), %eax
	movl	%eax, 8(%rdi)
	movl	$ptr_string_procs, %eax
	retq
.Lfunc_end6:
	.size	enum_bytestring, .Lfunc_end6-enum_bytestring
	.cfi_endproc

	.globl	enum_const_bytestring
	.align	16, 0x90
	.type	enum_const_bytestring,@function
enum_const_bytestring:                  # @enum_const_bytestring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rsi), %rax
	testq	%rax, %rax
	je	.LBB7_2
# BB#1:                                 # %cond.true
	movq	%rax, (%rdi)
	movl	$ptr_struct_procs, %eax
	retq
.LBB7_2:                                # %cond.false
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movl	8(%rsi), %eax
	movl	%eax, 8(%rdi)
	movl	$ptr_const_string_procs, %eax
	retq
.Lfunc_end7:
	.size	enum_const_bytestring, .Lfunc_end7-enum_const_bytestring
	.cfi_endproc

	.globl	reloc_bytestring
	.align	16, 0x90
	.type	reloc_bytestring,@function
reloc_bytestring:                       # @reloc_bytestring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_2
# BB#1:                                 # %if.end
	movq	(%r14), %rbx
	subq	%rdi, %rbx
	movq	(%rsi), %rax
	callq	*(%rax)
	movq	%rax, 16(%r14)
	addq	%rax, %rbx
	movq	%rbx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB8_2:                                # %if.else
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end8:
	.size	reloc_bytestring, .Lfunc_end8-reloc_bytestring
	.cfi_endproc

	.globl	reloc_const_bytestring
	.align	16, 0x90
	.type	reloc_const_bytestring,@function
reloc_const_bytestring:                 # @reloc_const_bytestring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB9_2
# BB#1:                                 # %if.end
	movq	(%r14), %rbx
	subq	%rdi, %rbx
	movq	(%rsi), %rax
	callq	*(%rax)
	movq	%rax, 16(%r14)
	addq	%rax, %rbx
	movq	%rbx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB9_2:                                # %if.else
	movq	(%rsi), %rax
	movq	16(%rax), %rax
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end9:
	.size	reloc_const_bytestring, .Lfunc_end9-reloc_const_bytestring
	.cfi_endproc

	.globl	gs_alloc_memset
	.align	16, 0x90
	.type	gs_alloc_memset,@function
gs_alloc_memset:                        # @gs_alloc_memset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 48
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	testq	%rbx, %rbx
	je	.LBB10_2
	.align	16, 0x90
.LBB10_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmovbq	%rbx, %rax
	movslq	%eax, %r15
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	callq	memset
	addq	%r15, %rbp
	subq	%r15, %rbx
	jne	.LBB10_1
.LBB10_2:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_alloc_memset, .Lfunc_end10-gs_alloc_memset
	.cfi_endproc

	.globl	gs_resize_struct_array
	.align	16, 0x90
	.type	gs_resize_struct_array,@function
gs_resize_struct_array:                 # @gs_resize_struct_array
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB11_1
# BB#2:                                 # %if.end
	movq	16(%rdi), %rax
	movq	%r8, %rcx
	jmpq	*%rax                   # TAILCALL
.LBB11_1:                               # %if.then
	movq	104(%rdi), %rax
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end11:
	.size	gs_resize_struct_array, .Lfunc_end11-gs_resize_struct_array
	.cfi_endproc

	.globl	gs_raw_alloc_struct_immovable
	.align	16, 0x90
	.type	gs_raw_alloc_struct_immovable,@function
gs_raw_alloc_struct_immovable:          # @gs_raw_alloc_struct_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movl	(%rsi), %esi
	jmpq	*%rax                   # TAILCALL
.Lfunc_end12:
	.size	gs_raw_alloc_struct_immovable, .Lfunc_end12-gs_raw_alloc_struct_immovable
	.cfi_endproc

	.globl	gs_struct_type_size
	.align	16, 0x90
	.type	gs_struct_type_size,@function
gs_struct_type_size:                    # @gs_struct_type_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rdi), %eax
	retq
.Lfunc_end13:
	.size	gs_struct_type_size, .Lfunc_end13-gs_struct_type_size
	.cfi_endproc

	.globl	gs_ignore_free_object
	.align	16, 0x90
	.type	gs_ignore_free_object,@function
gs_ignore_free_object:                  # @gs_ignore_free_object
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end14:
	.size	gs_ignore_free_object, .Lfunc_end14-gs_ignore_free_object
	.cfi_endproc

	.globl	gs_ignore_free_string
	.align	16, 0x90
	.type	gs_ignore_free_string,@function
gs_ignore_free_string:                  # @gs_ignore_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end15:
	.size	gs_ignore_free_string, .Lfunc_end15-gs_ignore_free_string
	.cfi_endproc

	.globl	gs_free_const_object
	.align	16, 0x90
	.type	gs_free_const_object,@function
gs_free_const_object:                   # @gs_free_const_object
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end16:
	.size	gs_free_const_object, .Lfunc_end16-gs_free_const_object
	.cfi_endproc

	.globl	gs_free_const_string
	.align	16, 0x90
	.type	gs_free_const_string,@function
gs_free_const_string:                   # @gs_free_const_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end17:
	.size	gs_free_const_string, .Lfunc_end17-gs_free_const_string
	.cfi_endproc

	.globl	gs_free_bytestring
	.align	16, 0x90
	.type	gs_free_bytestring,@function
gs_free_bytestring:                     # @gs_free_bytestring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	24(%rdi), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.LBB18_2:                               # %if.else
	movq	160(%rdi), %r8
	movq	(%rsi), %rcx
	movl	8(%rsi), %edx
	movq	%rcx, %rsi
	movq	%rax, %rcx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end18:
	.size	gs_free_bytestring, .Lfunc_end18-gs_free_bytestring
	.cfi_endproc

	.globl	gs_free_const_bytestring
	.align	16, 0x90
	.type	gs_free_const_bytestring,@function
gs_free_const_bytestring:               # @gs_free_const_bytestring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	24(%rdi), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.LBB19_2:                               # %if.else
	movq	(%rsi), %rcx
	movl	8(%rsi), %edx
	movq	160(%rdi), %r8
	movq	%rcx, %rsi
	movq	%rax, %rcx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end19:
	.size	gs_free_const_bytestring, .Lfunc_end19-gs_free_const_bytestring
	.cfi_endproc

	.globl	gs_ignore_consolidate_free
	.align	16, 0x90
	.type	gs_ignore_consolidate_free,@function
gs_ignore_consolidate_free:             # @gs_ignore_consolidate_free
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end20:
	.size	gs_ignore_consolidate_free, .Lfunc_end20-gs_ignore_consolidate_free
	.cfi_endproc

	.globl	gs_struct_type_name
	.align	16, 0x90
	.type	gs_struct_type_name,@function
gs_struct_type_name:                    # @gs_struct_type_name
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	retq
.Lfunc_end21:
	.size	gs_struct_type_name, .Lfunc_end21-gs_struct_type_name
	.cfi_endproc

	.globl	gs_register_struct_root
	.align	16, 0x90
	.type	gs_register_struct_root,@function
gs_register_struct_root:                # @gs_register_struct_root
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	168(%rdi), %rax
	movl	$ptr_struct_procs, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end22:
	.size	gs_register_struct_root, .Lfunc_end22-gs_register_struct_root
	.cfi_endproc

	.globl	rc_free_struct_only
	.align	16, 0x90
	.type	rc_free_struct_only,@function
rc_free_struct_only:                    # @rc_free_struct_only
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB23_1
# BB#2:                                 # %if.then
	movq	24(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB23_1:                               # %if.end
	retq
.Lfunc_end23:
	.size	rc_free_struct_only, .Lfunc_end23-rc_free_struct_only
	.cfi_endproc

	.type	gs_alloc_fill_alloc,@object # @gs_alloc_fill_alloc
	.section	.rodata,"a",@progbits
	.globl	gs_alloc_fill_alloc
gs_alloc_fill_alloc:
	.byte	161                     # 0xa1
	.size	gs_alloc_fill_alloc, 1

	.type	gs_alloc_fill_block,@object # @gs_alloc_fill_block
	.globl	gs_alloc_fill_block
gs_alloc_fill_block:
	.byte	177                     # 0xb1
	.size	gs_alloc_fill_block, 1

	.type	gs_alloc_fill_collected,@object # @gs_alloc_fill_collected
	.globl	gs_alloc_fill_collected
gs_alloc_fill_collected:
	.byte	193                     # 0xc1
	.size	gs_alloc_fill_collected, 1

	.type	gs_alloc_fill_deleted,@object # @gs_alloc_fill_deleted
	.globl	gs_alloc_fill_deleted
gs_alloc_fill_deleted:
	.byte	209                     # 0xd1
	.size	gs_alloc_fill_deleted, 1

	.type	gs_alloc_fill_free,@object # @gs_alloc_fill_free
	.globl	gs_alloc_fill_free
gs_alloc_fill_free:
	.byte	241                     # 0xf1
	.size	gs_alloc_fill_free, 1

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(free)"
	.size	.L.str, 7

	.type	st_free,@object         # @st_free
	.section	.rodata,"a",@progbits
	.globl	st_free
	.align	8
st_free:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_free, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"bytes"
	.size	.L.str.1, 6

	.type	st_bytes,@object        # @st_bytes
	.section	.rodata,"a",@progbits
	.globl	st_bytes
	.align	8
st_bytes:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_bytes, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_gc_root_t"
	.size	.L.str.2, 13

	.type	gc_root_reloc_ptrs,@object # @gc_root_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gc_root_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gc_root_enum_ptrs
	.size	gc_root_reloc_ptrs, 24

	.type	st_gc_root_t,@object    # @st_gc_root_t
	.globl	st_gc_root_t
	.align	8
st_gc_root_t:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gc_root_reloc_ptrs
	.size	st_gc_root_t, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_const_string[]"
	.size	.L.str.3, 18

	.type	st_const_string_element,@object # @st_const_string_element
	.section	.rodata,"a",@progbits
	.globl	st_const_string_element
	.align	8
st_const_string_element:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	const_string_elt_enum_ptrs
	.quad	const_string_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_const_string_element, 64

	.type	gc_root_enum_ptrs,@object # @gc_root_enum_ptrs
	.align	2
gc_root_enum_ptrs:
	.zero	4
	.size	gc_root_enum_ptrs, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_const_string"
	.size	.L.str.4, 16

	.type	const_string_sdata,@object # @const_string_sdata
	.section	.rodata,"a",@progbits
	.align	8
const_string_sdata:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	const_string_elts
	.size	const_string_sdata, 24

	.type	st_const_string,@object # @st_const_string
	.align	8
st_const_string:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	const_string_sdata
	.size	st_const_string, 64

	.type	const_string_elts,@object # @const_string_elts
	.align	2
const_string_elts:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.size	const_string_elts, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
