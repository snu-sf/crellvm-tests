	.text
	.file	"gsfcmap.bc"
	.align	16, 0x90
	.type	no_next_lookup,@function
no_next_lookup:                         # @no_next_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	no_next_lookup, .Lfunc_end0-no_next_lookup
	.cfi_endproc

	.globl	gs_cmap_create_identity
	.align	16, 0x90
	.type	gs_cmap_create_identity,@function
gs_cmap_create_identity:                # @gs_cmap_create_identity
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, %ebp
	movq	%rdi, %r14
	testl	%ebp, %ebp
	movl	$.L.str.1, %eax
	movl	$.L.str.2, %ebx
	cmovneq	%rax, %rbx
	movl	$-15, %eax
	cmpl	$2, %esi
	jne	.LBB1_3
# BB#1:                                 # %if.end.i
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, 16(%rsp)
	movq	$identity_procs, 8(%rsp)
	movl	$1, (%rsp)
	movl	$st_cmap_identity, %esi
	movl	$gs_cmap_identity_alloc.identity_cidsi, %r9d
	movl	%eax, %r8d
	movq	%r14, %rdi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	callq	gs_cmap_alloc
	testl	%eax, %eax
	js	.LBB1_3
# BB#2:                                 # %if.end.5.i
	movq	(%r14), %rax
	movl	$2, 112(%rax)
	movl	$2, 116(%rax)
	movl	$0, 120(%rax)
	xorl	%eax, %eax
.LBB1_3:                                # %gs_cmap_identity_alloc.exit
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_cmap_create_identity, .Lfunc_end1-gs_cmap_create_identity
	.cfi_endproc

	.globl	gs_cmap_create_char_identity
	.align	16, 0x90
	.type	gs_cmap_create_char_identity,@function
gs_cmap_create_char_identity:           # @gs_cmap_create_char_identity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 64
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, %ebp
	movq	%rdi, %r14
	testl	%ebp, %ebp
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %ebx
	cmovneq	%rax, %rbx
	movl	$-15, %eax
	cmpl	$2, %esi
	jne	.LBB2_3
# BB#1:                                 # %if.end.i
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, 16(%rsp)
	movq	$identity_procs, 8(%rsp)
	movl	$1, (%rsp)
	movl	$st_cmap_identity, %esi
	movl	$gs_cmap_identity_alloc.identity_cidsi, %r9d
	movl	%eax, %r8d
	movq	%r14, %rdi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	callq	gs_cmap_alloc
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.end.5.i
	movq	(%r14), %rax
	movl	$2, 112(%rax)
	movl	$1, 116(%rax)
	movl	$2, 120(%rax)
	xorl	%eax, %eax
.LBB2_3:                                # %gs_cmap_identity_alloc.exit
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_cmap_create_char_identity, .Lfunc_end2-gs_cmap_create_char_identity
	.cfi_endproc

	.globl	gs_cmap_is_identity
	.align	16, 0x90
	.type	gs_cmap_is_identity,@function
gs_cmap_is_identity:                    # @gs_cmap_is_identity
	.cfi_startproc
# BB#0:                                 # %entry
	movq	104(%rdi), %rax
	movq	24(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	gs_cmap_is_identity, .Lfunc_end3-gs_cmap_is_identity
	.cfi_endproc

	.globl	gs_cmap_decode_next
	.align	16, 0x90
	.type	gs_cmap_decode_next,@function
gs_cmap_decode_next:                    # @gs_cmap_decode_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	104(%rdi), %rax
	movq	(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	gs_cmap_decode_next, .Lfunc_end4-gs_cmap_decode_next
	.cfi_endproc

	.globl	gs_cmap_ranges_enum_init
	.align	16, 0x90
	.type	gs_cmap_ranges_enum_init,@function
gs_cmap_ranges_enum_init:               # @gs_cmap_ranges_enum_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	104(%rdi), %rax
	movq	8(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end5:
	.size	gs_cmap_ranges_enum_init, .Lfunc_end5-gs_cmap_ranges_enum_init
	.cfi_endproc

	.globl	gs_cmap_enum_next_range
	.align	16, 0x90
	.type	gs_cmap_enum_next_range,@function
gs_cmap_enum_next_range:                # @gs_cmap_enum_next_range
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end6:
	.size	gs_cmap_enum_next_range, .Lfunc_end6-gs_cmap_enum_next_range
	.cfi_endproc

	.globl	gs_cmap_lookups_enum_init
	.align	16, 0x90
	.type	gs_cmap_lookups_enum_init,@function
gs_cmap_lookups_enum_init:              # @gs_cmap_lookups_enum_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	104(%rdi), %rax
	movq	16(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	gs_cmap_lookups_enum_init, .Lfunc_end7-gs_cmap_lookups_enum_init
	.cfi_endproc

	.globl	gs_cmap_enum_next_lookup
	.align	16, 0x90
	.type	gs_cmap_enum_next_lookup,@function
gs_cmap_enum_next_lookup:               # @gs_cmap_enum_next_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end8:
	.size	gs_cmap_enum_next_lookup, .Lfunc_end8-gs_cmap_enum_next_lookup
	.cfi_endproc

	.globl	gs_cmap_enum_next_entry
	.align	16, 0x90
	.type	gs_cmap_enum_next_entry,@function
gs_cmap_enum_next_entry:                # @gs_cmap_enum_next_entry
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	jmpq	*8(%rax)                # TAILCALL
.Lfunc_end9:
	.size	gs_cmap_enum_next_entry, .Lfunc_end9-gs_cmap_enum_next_entry
	.cfi_endproc

	.globl	gs_cmap_init
	.align	16, 0x90
	.type	gs_cmap_init,@function
gs_cmap_init:                           # @gs_cmap_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%esi, %esi
	movl	$112, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gs_next_ids
	movq	%rax, 8(%rbx)
	movl	%ebp, 40(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 48(%rbx)
	movq	$0, 56(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_cmap_init, .Lfunc_end10-gs_cmap_init
	.cfi_endproc

	.globl	gs_cmap_alloc
	.align	16, 0x90
	.type	gs_cmap_alloc,@function
gs_cmap_alloc:                          # @gs_cmap_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 80
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movl	%r8d, 8(%rsp)           # 4-byte Spill
	movq	%rcx, %r14
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	96(%rsp), %r15
	movl	80(%rsp), %r13d
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$st_cid_system_info_element, %edx
	movl	$.L.str.6, %ecx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	*104(%r15)
	movq	%rax, %rbp
	testq	%rbx, %rbx
	je	.LBB11_2
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB11_2
# BB#3:                                 # %if.end
	xorl	%esi, %esi
	movl	$112, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	gs_next_ids
	movq	%rax, 8(%rbx)
	movl	%r13d, 40(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 48(%rbx)
	movq	$0, 56(%rbx)
	movl	$1, (%rbx)
	movq	%r14, 16(%rbx)
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, 24(%rbx)
	movslq	%r13d, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	testq	%r12, %r12
	je	.LBB11_5
# BB#4:                                 # %if.then.9
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	memcpy
	jmp	.LBB11_6
.LBB11_2:                               # %if.then
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*24(%r15)
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	movl	$-25, %eax
	jmp	.LBB11_7
.LBB11_5:                               # %if.else
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
.LBB11_6:                               # %if.end.14
	movq	%rbp, 32(%rbx)
	movl	$1065353216, 44(%rbx)   # imm = 0x3F800000
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 72(%rbx)
	movq	88(%rsp), %rax
	movq	%rax, 104(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
	xorl	%eax, %eax
.LBB11_7:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gs_cmap_alloc, .Lfunc_end11-gs_cmap_alloc
	.cfi_endproc

	.globl	gs_cmap_free
	.align	16, 0x90
	.type	gs_cmap_free,@function
gs_cmap_free:                           # @gs_cmap_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -24
.Ltmp41:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	32(%r14), %rsi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	gs_cmap_free, .Lfunc_end12-gs_cmap_free
	.cfi_endproc

	.globl	gs_cmap_ranges_enum_setup
	.align	16, 0x90
	.type	gs_cmap_ranges_enum_setup,@function
gs_cmap_ranges_enum_setup:              # @gs_cmap_ranges_enum_setup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movl	$0, 32(%rdi)
	retq
.Lfunc_end13:
	.size	gs_cmap_ranges_enum_setup, .Lfunc_end13-gs_cmap_ranges_enum_setup
	.cfi_endproc

	.globl	gs_cmap_lookups_enum_setup
	.align	16, 0x90
	.type	gs_cmap_lookups_enum_setup,@function
gs_cmap_lookups_enum_setup:             # @gs_cmap_lookups_enum_setup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 48(%rdi)
	movq	%rdx, 56(%rdi)
	movl	$0, 68(%rdi)
	movl	$0, 64(%rdi)
	retq
.Lfunc_end14:
	.size	gs_cmap_lookups_enum_setup, .Lfunc_end14-gs_cmap_lookups_enum_setup
	.cfi_endproc

	.globl	gs_cmap_compute_identity
	.align	16, 0x90
	.type	gs_cmap_compute_identity,@function
gs_cmap_compute_identity:               # @gs_cmap_compute_identity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 112
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	32(%rbx), %rax
	movq	(%rax), %rdi
	movl	8(%rax), %esi
	movl	$.L.str.9, %edx
	movl	$7, %ecx
	callq	bytes_compare
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB15_13
# BB#1:                                 # %if.end
	movq	104(%rbx), %rax
	leaq	(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	*16(%rax)
	movq	56(%rsp), %rax
	movq	%rbp, %rdi
	callq	*(%rax)
	testl	%eax, %eax
	je	.LBB15_3
# BB#2:
	movl	$1, %ebp
.LBB15_13:                              # %cleanup
	movl	%ebp, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB15_3:                               # %for.body.lr.ph
	leaq	(%rsp), %rbx
.LBB15_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_9 Depth 2
	movl	40(%rsp), %eax
	testl	%r14d, %r14d
	js	.LBB15_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_4 Depth=1
	cmpl	%r14d, %eax
	je	.LBB15_9
	jmp	.LBB15_6
.LBB15_8:                               # %land.lhs.true.10
                                        #   in Loop: Header=BB15_4 Depth=1
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jg	.LBB15_13
	.align	16, 0x90
.LBB15_9:                               # %while.cond
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%rsp), %rax
	movq	%rbx, %rdi
	callq	*8(%rax)
	testl	%eax, %eax
	jne	.LBB15_6
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB15_9 Depth=2
	xorl	%ebp, %ebp
	cmpl	$0, 16(%rsp)
	jne	.LBB15_13
# BB#11:                                # %sw.epilog
                                        #   in Loop: Header=BB15_9 Depth=2
	movslq	8(%rsp), %rdx
	cmpl	32(%rsp), %edx
	jne	.LBB15_13
# BB#12:                                # %if.end.25
                                        #   in Loop: Header=BB15_9 Depth=2
	movq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB15_9
	jmp	.LBB15_13
	.align	16, 0x90
.LBB15_6:                               # %for.cond.backedge
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	56(%rsp), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	testl	%eax, %eax
	je	.LBB15_4
# BB#7:
	movl	$1, %ebp
	jmp	.LBB15_13
.Lfunc_end15:
	.size	gs_cmap_compute_identity, .Lfunc_end15-gs_cmap_compute_identity
	.cfi_endproc

	.globl	gs_cmap_ToUnicode_alloc
	.align	16, 0x90
	.type	gs_cmap_ToUnicode_alloc,@function
gs_cmap_ToUnicode_alloc:                # @gs_cmap_ToUnicode_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 80
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rdi, %rbx
	movq	%rbx, 16(%rsp)
	movq	$gs_cmap_ToUnicode_procs, 8(%rsp)
	movl	$0, (%rsp)
	movl	$st_cmap_ToUnicode, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	callq	gs_cmap_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB16_4
# BB#1:                                 # %if.end
	leal	(%r15,%r15), %ebp
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*64(%rbx)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB16_2
# BB#3:                                 # %if.end.5
	movslq	%ebp, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	memset
	movq	(%r12), %rax
	movq	%r13, 96(%rax)
	movl	$2, (%rax)
	movl	$1, 40(%rax)
	movl	%r14d, 116(%rax)
	movl	%r15d, 112(%rax)
	movl	$1, 80(%rax)
	movl	$1, 120(%rax)
	jmp	.LBB16_4
.LBB16_2:                               # %if.then.3
	movq	(%r12), %rbp
	movq	32(%rbp), %rsi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$-25, %ebp
.LBB16_4:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_cmap_ToUnicode_alloc, .Lfunc_end16-gs_cmap_ToUnicode_alloc
	.cfi_endproc

	.globl	gs_cmap_ToUnicode_free
	.align	16, 0x90
	.type	gs_cmap_ToUnicode_free,@function
gs_cmap_ToUnicode_free:                 # @gs_cmap_ToUnicode_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	96(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rbx)
	movq	32(%r14), %rsi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	gs_cmap_ToUnicode_free, .Lfunc_end17-gs_cmap_ToUnicode_free
	.cfi_endproc

	.globl	gs_cmap_ToUnicode_add_pair
	.align	16, 0x90
	.type	gs_cmap_ToUnicode_add_pair,@function
gs_cmap_ToUnicode_add_pair:             # @gs_cmap_ToUnicode_add_pair
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	%esi, 112(%rdi)
	jle	.LBB18_2
# BB#1:                                 # %if.end
	movq	96(%rdi), %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx), %rsi
	movb	%dh, (%rax,%rcx,2)  # NOREX
	orl	$1, %esi
	movslq	%esi, %rsi
	movb	%dl, (%rax,%rsi)
	cmpl	%edx, %ecx
	sete	%al
	movzbl	%al, %eax
	andl	%eax, 120(%rdi)
.LBB18_2:                               # %cleanup
	retq
.Lfunc_end18:
	.size	gs_cmap_ToUnicode_add_pair, .Lfunc_end18-gs_cmap_ToUnicode_add_pair
	.cfi_endproc

	.align	16, 0x90
	.type	identity_decode_next,@function
identity_decode_next:                   # @identity_decode_next
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
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movl	112(%rdi), %r11d
	movl	8(%rsi), %eax
	movl	(%rdx), %r12d
	leal	(%r12,%r11), %r10d
	cmpl	%r10d, %eax
	jae	.LBB19_2
# BB#1:                                 # %if.then
	movq	$2147483647, (%r9)      # imm = 0x7FFFFFFF
	cmpl	%eax, %r12d
	movl	$2, %ecx
	movl	$-1, %eax
	cmovel	%ecx, %eax
	jmp	.LBB19_11
.LBB19_2:                               # %if.end
	xorl	%eax, %eax
	testl	%r11d, %r11d
	jle	.LBB19_10
# BB#3:                                 # %for.body.i.preheader
	movq	(%rsi), %r14
	leal	-1(%r11), %r15d
	testb	$3, %r11b
	movl	$0, %esi
	je	.LBB19_6
# BB#4:                                 # %for.body.i.prol.preheader
	leaq	(%r14,%r12), %r13
	movl	%r11d, %ebx
	andl	$3, %ebx
	xorl	%esi, %esi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB19_5:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movzbl	(%r13,%rsi), %ebp
	orl	%ebp, %eax
	incq	%rsi
	cmpl	%esi, %ebx
	jne	.LBB19_5
.LBB19_6:                               # %for.body.i.preheader.split
	cmpl	$3, %r15d
	jb	.LBB19_9
# BB#7:                                 # %for.body.i.preheader.split.split
	subl	%esi, %r11d
	addq	%rsi, %r12
	leaq	3(%r14,%r12), %rsi
	.align	16, 0x90
.LBB19_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movzbl	-3(%rsi), %ebx
	orl	%eax, %ebx
	shll	$8, %ebx
	movzbl	-2(%rsi), %eax
	orl	%ebx, %eax
	shll	$8, %eax
	movzbl	-1(%rsi), %ebx
	orl	%eax, %ebx
	shll	$8, %ebx
	movzbl	(%rsi), %eax
	orl	%ebx, %eax
	addq	$4, %rsi
	addl	$-4, %r11d
	jne	.LBB19_8
.LBB19_9:                               # %get_integer_bytes.exit.loopexit
	movl	%eax, %eax
.LBB19_10:                              # %get_integer_bytes.exit
	movq	%rax, %rsi
	subq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movq	%rsi, (%r9)
	movq	%rax, (%r8)
	movl	%r10d, (%rdx)
	movl	$0, (%rcx)
	movl	120(%rdi), %eax
.LBB19_11:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	identity_decode_next, .Lfunc_end19-identity_decode_next
	.cfi_endproc

	.align	16, 0x90
	.type	identity_enum_ranges,@function
identity_enum_ranges:                   # @identity_enum_ranges
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, 16(%rsi)
	movq	$identity_range_procs, 24(%rsi)
	movl	$0, 32(%rsi)
	retq
.Lfunc_end20:
	.size	identity_enum_ranges, .Lfunc_end20-identity_enum_ranges
	.cfi_endproc

	.align	16, 0x90
	.type	identity_enum_lookups,@function
identity_enum_lookups:                  # @identity_enum_lookups
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	movl	$gs_cmap_no_lookups_procs, %eax
	movl	$identity_lookup_procs, %ecx
	cmovneq	%rax, %rcx
	movq	%rdi, 48(%rdx)
	movq	%rcx, 56(%rdx)
	movl	$0, 68(%rdx)
	movl	$0, 64(%rdx)
	retq
.Lfunc_end21:
	.size	identity_enum_lookups, .Lfunc_end21-identity_enum_lookups
	.cfi_endproc

	.align	16, 0x90
	.type	identity_is_identity,@function
identity_is_identity:                   # @identity_is_identity
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end22:
	.size	identity_is_identity, .Lfunc_end22-identity_is_identity
	.cfi_endproc

	.align	16, 0x90
	.type	identity_next_range,@function
identity_next_range:                    # @identity_next_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 32
.Ltmp82:
	.cfi_offset %rbx, -32
.Ltmp83:
	.cfi_offset %r14, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1, %ebp
	cmpl	$0, 32(%rbx)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	16(%rbx), %r14
	movslq	112(%r14), %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	leaq	4(%rbx), %rdi
	movslq	112(%r14), %rdx
	movl	$255, %esi
	callq	memset
	movl	112(%r14), %eax
	movl	%eax, 8(%rbx)
	movl	$1, 32(%rbx)
.LBB23_2:                               # %return
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	identity_next_range, .Lfunc_end23-identity_next_range
	.cfi_endproc

	.align	16, 0x90
	.type	identity_next_lookup,@function
identity_next_lookup:                   # @identity_next_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp88:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp91:
	.cfi_def_cfa_offset 64
.Ltmp92:
	.cfi_offset %rbx, -56
.Ltmp93:
	.cfi_offset %r12, -48
.Ltmp94:
	.cfi_offset %r13, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1, %r14d
	cmpl	$0, 64(%rbx)
	jne	.LBB24_4
# BB#1:                                 # %if.then
	movq	48(%rbx), %r13
	movl	112(%r13), %r12d
	movslq	%r12d, %rbp
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memset
	leaq	4(%rbx), %r15
	movl	$255, %esi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	memset
	movl	116(%r13), %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
	movl	%ebp, 8(%rbx)
	movl	$1, 12(%rbx)
	movl	$2, %eax
	cmpl	$0, 120(%r13)
	jne	.LBB24_3
# BB#2:                                 # %select.mid
	xorl	%eax, %eax
.LBB24_3:                               # %select.end
	movl	%eax, 16(%rbx)
	movl	%r12d, 32(%rbx)
	movl	$0, 40(%rbx)
	movl	$1, 64(%rbx)
.LBB24_4:                               # %return
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	identity_next_lookup, .Lfunc_end24-identity_next_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	identity_next_entry,@function
identity_next_entry:                    # @identity_next_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 48
.Ltmp103:
	.cfi_offset %rbx, -48
.Ltmp104:
	.cfi_offset %r12, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	48(%r15), %rax
	movslq	112(%rax), %r12
	movl	116(%rax), %ebp
	movl	%r12d, %ebx
	subl	%ebp, %ebx
	leaq	72(%r15), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	leaq	4(%r15), %rsi
	movslq	%ebx, %rbx
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	leal	-1(%r12), %eax
	subl	%ebp, %eax
	cltq
	leaq	4(%r15,%rax), %rcx
	.align	16, 0x90
.LBB25_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	testq	%rbx, %rbx
	jle	.LBB25_4
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB25_1 Depth=1
	decq	%rbx
	incb	(%rcx)
	leaq	-1(%rcx), %rcx
	je	.LBB25_1
# BB#3:                                 # %if.then
	movq	%r14, 24(%r15)
	xorl	%eax, %eax
.LBB25_4:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	identity_next_entry, .Lfunc_end25-identity_next_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_ToUnicode_decode_next,@function
gs_cmap_ToUnicode_decode_next:          # @gs_cmap_ToUnicode_decode_next
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-28, %eax
	retq
.Lfunc_end26:
	.size	gs_cmap_ToUnicode_decode_next, .Lfunc_end26-gs_cmap_ToUnicode_decode_next
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_ToUnicode_enum_ranges,@function
gs_cmap_ToUnicode_enum_ranges:          # @gs_cmap_ToUnicode_enum_ranges
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, 16(%rsi)
	movq	$gs_cmap_ToUnicode_range_procs, 24(%rsi)
	movl	$0, 32(%rsi)
	retq
.Lfunc_end27:
	.size	gs_cmap_ToUnicode_enum_ranges, .Lfunc_end27-gs_cmap_ToUnicode_enum_ranges
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_ToUnicode_enum_lookups,@function
gs_cmap_ToUnicode_enum_lookups:         # @gs_cmap_ToUnicode_enum_lookups
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	movl	$gs_cmap_no_lookups_procs, %eax
	movl	$gs_cmap_ToUnicode_lookup_procs, %ecx
	cmovneq	%rax, %rcx
	movq	%rdi, 48(%rdx)
	movq	%rcx, 56(%rdx)
	movl	$0, 68(%rdx)
	movl	$0, 64(%rdx)
	retq
.Lfunc_end28:
	.size	gs_cmap_ToUnicode_enum_lookups, .Lfunc_end28-gs_cmap_ToUnicode_enum_lookups
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_ToUnicode_is_identity,@function
gs_cmap_ToUnicode_is_identity:          # @gs_cmap_ToUnicode_is_identity
	.cfi_startproc
# BB#0:                                 # %entry
	movl	120(%rdi), %eax
	retq
.Lfunc_end29:
	.size	gs_cmap_ToUnicode_is_identity, .Lfunc_end29-gs_cmap_ToUnicode_is_identity
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_ToUnicode_next_range,@function
gs_cmap_ToUnicode_next_range:           # @gs_cmap_ToUnicode_next_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 32
.Ltmp111:
	.cfi_offset %rbx, -32
.Ltmp112:
	.cfi_offset %r14, -24
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1, %ebp
	cmpl	$0, 32(%rbx)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movq	16(%rbx), %r14
	movslq	116(%r14), %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	leaq	4(%rbx), %rdi
	movslq	116(%r14), %rdx
	movl	$255, %esi
	callq	memset
	movl	116(%r14), %eax
	movl	%eax, 8(%rbx)
	movl	$1, 32(%rbx)
.LBB30_2:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gs_cmap_ToUnicode_next_range, .Lfunc_end30-gs_cmap_ToUnicode_next_range
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_ToUnicode_next_lookup,@function
gs_cmap_ToUnicode_next_lookup:          # @gs_cmap_ToUnicode_next_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rcx
	movl	64(%rdi), %edx
	leal	1(%rdx), %eax
	movl	%eax, 64(%rdi)
	movl	$1, %eax
	testl	%edx, %edx
	jne	.LBB31_2
# BB#1:                                 # %if.end
	leaq	72(%rdi), %rax
	movq	%rax, 24(%rdi)
	movl	$0, 68(%rdi)
	movabsq	$8589934593, %rax       # imm = 0x200000001
	movq	%rax, 12(%rdi)
	movl	116(%rcx), %eax
	movl	%eax, 8(%rdi)
	movl	$2, 32(%rdi)
	movl	$0, 40(%rdi)
	xorl	%eax, %eax
.LBB31_2:                               # %cleanup
	retq
.Lfunc_end31:
	.size	gs_cmap_ToUnicode_next_lookup, .Lfunc_end31-gs_cmap_ToUnicode_next_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_ToUnicode_next_entry,@function
gs_cmap_ToUnicode_next_entry:           # @gs_cmap_ToUnicode_next_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp115:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 48
.Ltmp119:
	.cfi_offset %rbx, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	48(%rdi), %r8
	movl	112(%r8), %r9d
	movl	68(%rdi), %edx
	movl	$1, %eax
	cmpl	%r9d, %edx
	jae	.LBB32_15
# BB#1:                                 # %for.body.lr.ph
	movq	96(%r8), %r11
	leal	1(%rdx,%rdx), %ecx
	.align	16, 0x90
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %esi
	movb	(%r11,%rsi), %bl
	movl	%ecx, %ecx
	testb	%bl, %bl
	jne	.LBB32_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpb	$0, (%r11,%rcx)
	jne	.LBB32_5
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	incq	%rdx
	addl	$2, %ecx
	cmpq	%r9, %rdx
	jb	.LBB32_2
	jmp	.LBB32_15
.LBB32_5:                               # %if.end.18
	leaq	(%rsi,%r11), %rsi
	movb	(%r11,%rcx), %al
	leal	3(%rdx,%rdx), %ecx
	movzbl	%bl, %r14d
	movl	%edx, %ebp
	.align	16, 0x90
.LBB32_6:                               # %for.cond.31
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %r10d
	movzbl	%al, %ebp
	cmpl	$255, %ebp
	je	.LBB32_11
# BB#7:                                 # %for.cond.31
                                        #   in Loop: Header=BB32_6 Depth=1
	leal	1(%r10), %ebp
	cmpl	%r9d, %ebp
	jae	.LBB32_11
# BB#8:                                 # %for.cond.31
                                        #   in Loop: Header=BB32_6 Depth=1
	movzbl	%bpl, %ebx
	testl	%ebx, %ebx
	je	.LBB32_11
# BB#9:                                 # %if.end.43
                                        #   in Loop: Header=BB32_6 Depth=1
	leal	-1(%rcx), %ebx
	movzbl	(%r11,%rbx), %ebx
	cmpl	%r14d, %ebx
	jne	.LBB32_11
# BB#10:                                # %lor.lhs.false.52
                                        #   in Loop: Header=BB32_6 Depth=1
	incb	%al
	movl	%ecx, %ebx
	addl	$2, %ecx
	movzbl	(%r11,%rbx), %r15d
	movzbl	%al, %ebx
	cmpl	%r15d, %ebx
	je	.LBB32_6
.LBB32_11:                              # %for.cond.31.for.end.66_crit_edge
	leal	1(%r10), %eax
	movl	%eax, 68(%rdi)
	cmpl	$2, 116(%r8)
	jl	.LBB32_13
# BB#12:                                # %if.then.71
	movb	%dh, (%rdi)  # NOREX
	movslq	116(%r8), %rcx
	movb	%dl, -1(%rcx,%rdi)
	movb	%ah, 4(%rdi)  # NOREX
	movslq	116(%r8), %rax
	movb	%r10b, 3(%rax,%rdi)
	jmp	.LBB32_14
.LBB32_13:                              # %if.else
	movb	%dl, (%rdi)
	movb	%r10b, 4(%rdi)
.LBB32_14:                              # %if.end.110
	addq	$72, %rdi
	movl	$2, %edx
	callq	memcpy
	xorl	%eax, %eax
.LBB32_15:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gs_cmap_ToUnicode_next_entry, .Lfunc_end32-gs_cmap_ToUnicode_next_entry
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_cmap_t"
	.size	.L.str, 10

	.type	cmap_data,@object       # @cmap_data
	.section	.rodata,"a",@progbits
	.align	8
cmap_data:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cmap_ptrs
	.size	cmap_data, 24

	.type	st_cmap,@object         # @st_cmap
	.globl	st_cmap
	.align	8
st_cmap:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cmap_data
	.size	st_cmap, 64

	.type	gs_cmap_no_lookups_procs,@object # @gs_cmap_no_lookups_procs
	.globl	gs_cmap_no_lookups_procs
	.align	8
gs_cmap_no_lookups_procs:
	.quad	no_next_lookup
	.quad	0
	.size	gs_cmap_no_lookups_procs, 16

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Identity-V"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Identity-H"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Identity-BF-V"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Identity-BF-H"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gs_cmap_alloc(CMap)"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_cmap_alloc(CIDSystemInfo)"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_cmap_free(CIDSystemInfo)"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gs_cmap_free(CMap)"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Artifex"
	.size	.L.str.9, 8

	.type	gs_cmap_ToUnicode_procs,@object # @gs_cmap_ToUnicode_procs
	.section	.rodata,"a",@progbits
	.align	8
gs_cmap_ToUnicode_procs:
	.quad	gs_cmap_ToUnicode_decode_next
	.quad	gs_cmap_ToUnicode_enum_ranges
	.quad	gs_cmap_ToUnicode_enum_lookups
	.quad	gs_cmap_ToUnicode_is_identity
	.size	gs_cmap_ToUnicode_procs, 32

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"gs_cmap_ToUnicode_alloc"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Free ToUnicode glyph data"
	.size	.L.str.11, 26

	.type	cmap_ptrs,@object       # @cmap_ptrs
	.section	.rodata,"a",@progbits
	.align	16
cmap_ptrs:
	.short	2                       # 0x2
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	56                      # 0x38
	.short	0                       # 0x0
	.short	96                      # 0x60
	.size	cmap_ptrs, 16

	.type	gs_cmap_identity_alloc.identity_cidsi,@object # @gs_cmap_identity_alloc.identity_cidsi
	.align	8
gs_cmap_identity_alloc.identity_cidsi:
	.quad	.L.str.12
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.13
	.long	8                       # 0x8
	.zero	4
	.long	0                       # 0x0
	.zero	4
	.size	gs_cmap_identity_alloc.identity_cidsi, 40

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Adobe"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Identity"
	.size	.L.str.13, 9

	.type	identity_procs,@object  # @identity_procs
	.section	.rodata,"a",@progbits
	.align	8
identity_procs:
	.quad	identity_decode_next
	.quad	identity_enum_ranges
	.quad	identity_enum_lookups
	.quad	identity_is_identity
	.size	identity_procs, 32

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"gs_cmap_identity_t"
	.size	.L.str.14, 19

	.type	st_cmap_identity,@object # @st_cmap_identity
	.section	.rodata,"a",@progbits
	.align	8
st_cmap_identity:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cmap_data
	.size	st_cmap_identity, 64

	.type	identity_range_procs,@object # @identity_range_procs
	.align	8
identity_range_procs:
	.quad	identity_next_range
	.size	identity_range_procs, 8

	.type	identity_lookup_procs,@object # @identity_lookup_procs
	.align	8
identity_lookup_procs:
	.quad	identity_next_lookup
	.quad	identity_next_entry
	.size	identity_lookup_procs, 16

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"gs_cmap_ToUnicode_t"
	.size	.L.str.15, 20

	.type	cmap_ToUnicode_reloc_ptrs,@object # @cmap_ToUnicode_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cmap_ToUnicode_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_cmap
	.quad	0
	.size	cmap_ToUnicode_reloc_ptrs, 24

	.type	st_cmap_ToUnicode,@object # @st_cmap_ToUnicode
	.align	8
st_cmap_ToUnicode:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cmap_ToUnicode_reloc_ptrs
	.size	st_cmap_ToUnicode, 64

	.type	gs_cmap_ToUnicode_range_procs,@object # @gs_cmap_ToUnicode_range_procs
	.align	8
gs_cmap_ToUnicode_range_procs:
	.quad	gs_cmap_ToUnicode_next_range
	.size	gs_cmap_ToUnicode_range_procs, 8

	.type	gs_cmap_ToUnicode_lookup_procs,@object # @gs_cmap_ToUnicode_lookup_procs
	.align	8
gs_cmap_ToUnicode_lookup_procs:
	.quad	gs_cmap_ToUnicode_next_lookup
	.quad	gs_cmap_ToUnicode_next_entry
	.size	gs_cmap_ToUnicode_lookup_procs, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
