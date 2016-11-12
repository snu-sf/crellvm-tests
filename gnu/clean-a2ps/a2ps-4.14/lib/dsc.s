	.text
	.file	"dsc.bc"
	.globl	multivalued_table_new
	.align	16, 0x90
	.type	multivalued_table_new,@function
multivalued_table_new:                  # @multivalued_table_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$mv_key_hash_1, %rdi
	movabsq	$mv_key_hash_2, %rdx
	movabsq	$mv_key_hash_cmp, %r8
	movq	%rax, multivalued_table_new.res
	movq	multivalued_table_new.res, %rax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	callq	hash_init
	movq	multivalued_table_new.res, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	multivalued_table_new, .Lfunc_end0-multivalued_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	mv_key_hash_1,@function
mv_key_hash_1:                          # @mv_key_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB1_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$15, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_3
.LBB1_5:                                # %while.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mv_key_hash_1, .Lfunc_end1-mv_key_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	mv_key_hash_2,@function
mv_key_hash_2:                          # @mv_key_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB2_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB2_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_5:                                # %while.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mv_key_hash_2, .Lfunc_end2-mv_key_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	mv_key_hash_cmp,@function
mv_key_hash_cmp:                        # @mv_key_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB3_3:                                # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB3_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_7
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_6
.LBB3_6:                                # %do.cond
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB3_3
.LBB3_7:                                # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mv_key_hash_cmp, .Lfunc_end3-mv_key_hash_cmp
	.cfi_endproc

	.globl	multivalued_table_free
	.align	16, 0x90
	.type	multivalued_table_free,@function
multivalued_table_free:                 # @multivalued_table_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$multivalued_entry_free, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	multivalued_table_free, .Lfunc_end4-multivalued_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_free,@function
multivalued_entry_free:                 # @multivalued_entry_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	string_htable_free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	multivalued_entry_free, .Lfunc_end5-multivalued_entry_free
	.cfi_endproc

	.globl	exist_resource
	.align	16, 0x90
	.type	exist_resource,@function
exist_resource:                         # @exist_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	64(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	multivalued_entry_get_sub_item
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	exist_resource, .Lfunc_end6-exist_resource
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_get_sub_item,@function
multivalued_entry_get_sub_item:         # @multivalued_entry_get_sub_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	multivalued_entry_get_sub_table
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	string_htable_get
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	multivalued_entry_get_sub_item, .Lfunc_end7-multivalued_entry_get_sub_item
	.cfi_endproc

	.globl	add_supplied_resource
	.align	16, 0x90
	.type	add_supplied_resource,@function
add_supplied_resource:                  # @add_supplied_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	72(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	multivalued_entry_add_couple
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	add_supplied_resource, .Lfunc_end8-add_supplied_resource
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_add_couple,@function
multivalued_entry_add_couple:           # @multivalued_entry_add_couple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	multivalued_entry_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	multivalued_entry_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	multivalued_entry_add
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	string_htable_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	multivalued_entry_add_couple, .Lfunc_end9-multivalued_entry_add_couple
	.cfi_endproc

	.globl	dump_supplied_resources
	.align	16, 0x90
	.type	dump_supplied_resources,@function
dump_supplied_resources:                # @dump_supplied_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	72(%rsi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$.L.str, %rdx
	movabsq	$.L.str.1, %rcx
	movq	-8(%rbp), %rdi
	cmpl	$0, -20(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movslq	-20(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	(%r9,%r8,8), %r8
	callq	multivalued_entry_dump
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dump_supplied_resources, .Lfunc_end10-dump_supplied_resources
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_dump,@function
multivalued_entry_dump:                 # @multivalued_entry_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	string_htable_dump_sorted
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB11_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movb	$0, %al
	callq	fprintf
	movl	$0, -12(%rbp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_6
.LBB11_6:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_1
.LBB11_7:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	multivalued_entry_dump, .Lfunc_end11-multivalued_entry_dump
	.cfi_endproc

	.globl	add_needed_resource
	.align	16, 0x90
	.type	add_needed_resource,@function
add_needed_resource:                    # @add_needed_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	64(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	multivalued_entry_add_couple
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	add_needed_resource, .Lfunc_end12-add_needed_resource
	.cfi_endproc

	.globl	dump_needed_resources
	.align	16, 0x90
	.type	dump_needed_resources,@function
dump_needed_resources:                  # @dump_needed_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	64(%rsi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB13_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	movl	$.L.str.2, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB13_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	movl	$.L.str.3, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_5
.LBB13_4:                               # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_6
.LBB13_5:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.1, %rcx
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	(%r8,%rax,8), %r8
	callq	multivalued_entry_dump
	movl	$0, -24(%rbp)
.LBB13_6:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_1
.LBB13_7:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dump_needed_resources, .Lfunc_end13-dump_needed_resources
	.cfi_endproc

	.globl	add_process_color
	.align	16, 0x90
	.type	add_process_color,@function
add_process_color:                      # @add_process_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	64(%rsi), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	multivalued_entry_add_couple
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	add_process_color, .Lfunc_end14-add_process_color
	.cfi_endproc

	.globl	dump_process_color
	.align	16, 0x90
	.type	dump_process_color,@function
dump_process_color:                     # @dump_process_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	64(%rsi), %rdi
	movq	%rax, %rsi
	callq	multivalued_entry_get_sub_table
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB15_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	string_htable_dump_sorted
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_7
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.5, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	$0, -28(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB15_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -48(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB15_7:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB15_8:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dump_process_color, .Lfunc_end15-dump_process_color
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_get_sub_table,@function
multivalued_entry_get_sub_table:        # @multivalued_entry_get_sub_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	multivalued_entry_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	multivalued_entry_get_sub_table, .Lfunc_end16-multivalued_entry_get_sub_table
	.cfi_endproc

	.globl	add_required_font
	.align	16, 0x90
	.type	add_required_font,@function
add_required_font:                      # @add_required_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	272(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	a2ps_printers_font_known_p
	cmpl	$0, %eax
	je	.LBB17_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	needed_resource_get
	cmpq	$0, %rax
	jne	.LBB17_3
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	add_needed_resource
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdx
	movq	1536(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	output
.LBB17_3:                               # %if.end
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	add_supplied_resource
.LBB17_5:                               # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	add_required_font, .Lfunc_end17-add_required_font
	.cfi_endproc

	.align	16, 0x90
	.type	needed_resource_get,@function
needed_resource_get:                    # @needed_resource_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	64(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	multivalued_entry_get_sub_item
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	needed_resource_get, .Lfunc_end18-needed_resource_get
	.cfi_endproc

	.globl	required_fonts_get
	.align	16, 0x90
	.type	required_fonts_get,@function
required_fonts_get:                     # @required_fonts_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.7, %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movq	72(%rdi), %rdi
	callq	multivalued_entry_get_sub_table
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	string_htable_dump_sorted
	movq	%rax, -8(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB19_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	required_fonts_get, .Lfunc_end19-required_fonts_get
	.cfi_endproc

	.globl	dump_setup
	.align	16, 0x90
	.type	dump_setup,@function
dump_setup:                             # @dump_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	104(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	output_dump
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	dump_setup, .Lfunc_end20-dump_setup
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_get,@function
multivalued_entry_get:                  # @multivalued_entry_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$multivalued_entry_get.token, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, multivalued_entry_get.token
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, multivalued_entry_get.res
	movq	multivalued_entry_get.res, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	multivalued_entry_get, .Lfunc_end21-multivalued_entry_get
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_new,@function
multivalued_entry_new:                  # @multivalued_entry_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	xstrdup
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	string_htable_new
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	multivalued_entry_new, .Lfunc_end22-multivalued_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	multivalued_entry_add,@function
multivalued_entry_add:                  # @multivalued_entry_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	multivalued_entry_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	multivalued_entry_free
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	multivalued_entry_add, .Lfunc_end23-multivalued_entry_add
	.cfi_endproc

	.type	multivalued_table_new.res,@object # @multivalued_table_new.res
	.local	multivalued_table_new.res
	.comm	multivalued_table_new.res,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%%%%DocumentSuppliedResources: %s %s\n"
	.size	.L.str, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%%%%+ %s %s\n"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"color"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%%%%DocumentNeededResources: %s %s\n"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%%DocumentProcessColors: "
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s "
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"font"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%%%%IncludeResource: font %s\n"
	.size	.L.str.8, 30

	.type	multivalued_entry_get.token,@object # @multivalued_entry_get.token
	.local	multivalued_entry_get.token
	.comm	multivalued_entry_get.token,16,8
	.type	multivalued_entry_get.res,@object # @multivalued_entry_get.res
	.local	multivalued_entry_get.res
	.comm	multivalued_entry_get.res,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
