	.text
	.file	"psstat.bc"
	.globl	new_ps_status
	.align	16, 0x90
	.type	new_ps_status,@function
new_ps_status:                          # @new_ps_status
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
	movl	$168, %eax
	movl	%eax, %edi
	callq	xmalloc
	movabsq	$.L.str, %rdi
	movq	%rax, -8(%rbp)
	callq	xstrdup
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	callq	xstrdup
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 56(%rax)
	callq	multivalued_table_new
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	callq	multivalued_table_new
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	callq	new_dict_entry_table
	movq	-8(%rbp), %rcx
	movq	%rax, 88(%rcx)
	callq	new_dict_entry_table
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	callq	output_new
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	new_ps_status, .Lfunc_end0-new_ps_status
	.cfi_endproc

	.align	16, 0x90
	.type	new_dict_entry_table,@function
new_dict_entry_table:                   # @new_dict_entry_table
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
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$key_hash_1, %rdx
	movabsq	$key_hash_2, %rcx
	movabsq	$key_hash_cmp, %r8
	movq	%rax, new_dict_entry_table.res
	movq	new_dict_entry_table.res, %rdi
	callq	hash_init
	movq	new_dict_entry_table.res, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	new_dict_entry_table, .Lfunc_end1-new_dict_entry_table
	.cfi_endproc

	.globl	ps_status_free
	.align	16, 0x90
	.type	ps_status_free,@function
ps_status_free:                         # @ps_status_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	callq	multivalued_table_free
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	callq	multivalued_table_free
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	callq	free_dict_entry_table
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	callq	free_dict_entry_table
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	callq	output_free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ps_status_free, .Lfunc_end2-ps_status_free
	.cfi_endproc

	.align	16, 0x90
	.type	free_dict_entry_table,@function
free_dict_entry_table:                  # @free_dict_entry_table
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
	subq	$16, %rsp
	movabsq	$free_dict_entry, %rax
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
.Lfunc_end3:
	.size	free_dict_entry_table, .Lfunc_end3-free_dict_entry_table
	.cfi_endproc

	.globl	initialize_ps_status
	.align	16, 0x90
	.type	initialize_ps_status,@function
initialize_ps_status:                   # @initialize_ps_status
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 120(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 124(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 132(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 140(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 148(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 156(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 160(%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	initialize_ps_status, .Lfunc_end4-initialize_ps_status
	.cfi_endproc

	.globl	output_pagedevice
	.align	16, 0x90
	.type	output_pagedevice,@function
output_pagedevice:                      # @output_pagedevice
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movq	88(%rdi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	hash_dump
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-16(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	toupper
	movabsq	$.L.str.4, %rsi
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	addq	$1, %rdx
	movq	-32(%rbp), %r8
	movq	(%r8), %r8
	movq	(%r8), %r9
	movq	-32(%rbp), %r8
	movq	(%r8), %r8
	movq	8(%r8), %r8
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movl	%eax, %ecx
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r11, %r8
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movb	$0, %al
	callq	output
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	free
.LBB5_7:                                # %return
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	output_pagedevice, .Lfunc_end5-output_pagedevice
	.cfi_endproc

	.globl	pagedevice_dump
	.align	16, 0x90
	.type	pagedevice_dump,@function
pagedevice_dump:                        # @pagedevice_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	88(%rsi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	hash_dump
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movq	-32(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	toupper
	movabsq	$.L.str.7, %rsi
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	addq	$1, %rdx
	movq	-40(%rbp), %r8
	movq	(%r8), %r8
	movq	(%r8), %r9
	movq	-40(%rbp), %r8
	movq	(%r8), %r8
	movq	8(%r8), %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movl	%eax, %ecx
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movq	%r11, %r8
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movb	$0, %al
	callq	fprintf
	movl	%eax, -84(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
	movabsq	$.L.str.8, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	free
.LBB6_7:                                # %return
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pagedevice_dump, .Lfunc_end6-pagedevice_dump
	.cfi_endproc

	.globl	dump_requirements
	.align	16, 0x90
	.type	dump_requirements,@function
dump_requirements:                      # @dump_requirements
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	88(%rsi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	hash_dump
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_2
.LBB7_5:                                # %for.end
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB7_6:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dump_requirements, .Lfunc_end7-dump_requirements
	.cfi_endproc

	.globl	setpagedevice
	.align	16, 0x90
	.type	setpagedevice,@function
setpagedevice:                          # @setpagedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	88(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	dict_entry_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	setpagedevice, .Lfunc_end8-setpagedevice
	.cfi_endproc

	.align	16, 0x90
	.type	dict_entry_add,@function
dict_entry_add:                         # @dict_entry_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$24, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dict_entry_add, .Lfunc_end9-dict_entry_add
	.cfi_endproc

	.globl	delpagedevice
	.align	16, 0x90
	.type	delpagedevice,@function
delpagedevice:                          # @delpagedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	88(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	dict_entry_remove
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	delpagedevice, .Lfunc_end10-delpagedevice
	.cfi_endproc

	.align	16, 0x90
	.type	dict_entry_remove,@function
dict_entry_remove:                      # @dict_entry_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	dict_entry_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_delete
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	free_dict_entry
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dict_entry_remove, .Lfunc_end11-dict_entry_remove
	.cfi_endproc

	.globl	list_pagedevice
	.align	16, 0x90
	.type	list_pagedevice,@function
list_pagedevice:                        # @list_pagedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	88(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	dict_entry_table_dump
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	list_pagedevice, .Lfunc_end12-list_pagedevice
	.cfi_endproc

	.align	16, 0x90
	.type	dict_entry_table_dump,@function
dict_entry_table_dump:                  # @dict_entry_table_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
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
	je	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	dict_entry_print
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dict_entry_table_dump, .Lfunc_end13-dict_entry_table_dump
	.cfi_endproc

	.globl	setstatusdict
	.align	16, 0x90
	.type	setstatusdict,@function
setstatusdict:                          # @setstatusdict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	96(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	dict_entry_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	setstatusdict, .Lfunc_end14-setstatusdict
	.cfi_endproc

	.globl	delstatusdict
	.align	16, 0x90
	.type	delstatusdict,@function
delstatusdict:                          # @delstatusdict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	96(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	dict_entry_remove
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	delstatusdict, .Lfunc_end15-delstatusdict
	.cfi_endproc

	.globl	output_statusdict
	.align	16, 0x90
	.type	output_statusdict,@function
output_statusdict:                      # @output_statusdict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movq	96(%rdi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	hash_dump
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_9
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
.LBB16_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 16(%rax)
	je	.LBB16_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB16_2 Depth=1
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movb	$0, %al
	callq	output
	jmp	.LBB16_6
.LBB16_5:                               # %if.else
                                        #   in Loop: Header=BB16_2 Depth=1
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	output
.LBB16_6:                               # %if.end
                                        #   in Loop: Header=BB16_2 Depth=1
	jmp	.LBB16_7
.LBB16_7:                               # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_2
.LBB16_8:                               # %for.end
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB16_9:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	output_statusdict, .Lfunc_end16-output_statusdict
	.cfi_endproc

	.globl	list_statusdict
	.align	16, 0x90
	.type	list_statusdict,@function
list_statusdict:                        # @list_statusdict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	96(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	dict_entry_table_dump
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	list_statusdict, .Lfunc_end17-list_statusdict
	.cfi_endproc

	.align	16, 0x90
	.type	key_hash_1,@function
key_hash_1:                             # @key_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB18_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB18_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB18_3 Depth=1
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
	jmp	.LBB18_3
.LBB18_5:                               # %while.end
	jmp	.LBB18_6
.LBB18_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end18:
	.size	key_hash_1, .Lfunc_end18-key_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	key_hash_2,@function
key_hash_2:                             # @key_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB19_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB19_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB19_3 Depth=1
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
	jmp	.LBB19_3
.LBB19_5:                               # %while.end
	jmp	.LBB19_6
.LBB19_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end19:
	.size	key_hash_2, .Lfunc_end19-key_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	key_hash_cmp,@function
key_hash_cmp:                           # @key_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB20_2
.LBB20_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB20_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB20_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB20_7
.LBB20_5:                               # %if.end
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_6
.LBB20_6:                               # %do.cond
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB20_3
.LBB20_7:                               # %do.end
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
.Lfunc_end20:
	.size	key_hash_cmp, .Lfunc_end20-key_hash_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	free_dict_entry,@function
free_dict_entry:                        # @free_dict_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	free_dict_entry, .Lfunc_end21-free_dict_entry
	.cfi_endproc

	.align	16, 0x90
	.type	dict_entry_get,@function
dict_entry_get:                         # @dict_entry_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	dict_entry_get, .Lfunc_end22-dict_entry_get
	.cfi_endproc

	.align	16, 0x90
	.type	dict_entry_print,@function
dict_entry_print:                       # @dict_entry_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 16(%rsi)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB23_3
.LBB23_2:                               # %if.else
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB23_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dict_entry_print, .Lfunc_end23-dict_entry_print
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%!PS-Adobe-3.0"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"#!s|$p-|, |"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"setup"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%%%% Pagedevice definitions:\ncountdictstack\n%% Push our own mark, since there can be several PS marks pushed depending\n%% where the failure really occured.\n/a2ps_mark\n{\n"
	.size	.L.str.3, 170

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%%%%BeginFeature: *%s %c%s\n  (<<) cvx exec /%s (%s) cvx exec (>>) cvx exec setpagedevice\n%%%%EndFeature\n"
	.size	.L.str.4, 105

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"} stopped\n%% My cleartomark\n{ /a2ps_mark eq { exit } if } loop\ncountdictstack exch sub dup 0 gt\n{\n  { end } repeat\n}{\n  pop\n} ifelse\n"
	.size	.L.str.5, 134

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%% Pagedevice definitions:\ncountdictstack\n% Push our own mark, since there can be several PS marks pushed depending\n% where the failure really occured.\n/a2ps_mark\n{\n"
	.size	.L.str.6, 166

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%%%%BeginFeature: *%s %c%s\n  (<<) cvx exec /%s (%s) cvx exec (>>) cvx exec\n  systemdict /setpagedevice get exec\n%%%%EndFeature\n"
	.size	.L.str.7, 128

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"} stopped\n% My cleartomark\n{ /a2ps_mark eq { exit } if } loop\ncountdictstack exch sub dup 0 gt\n{\n  { end } repeat\n}{\n  pop\n} ifelse\n"
	.size	.L.str.8, 133

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%%Requirements: "
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s "
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%% Statustdict definitions:\n"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"statusdict begin\n"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"  /%s %s def\n"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"  %s %s\n"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"end\n"
	.size	.L.str.15, 5

	.type	new_dict_entry_table.res,@object # @new_dict_entry_table.res
	.local	new_dict_entry_table.res
	.comm	new_dict_entry_table.res,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s::%s "
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s:%s "
	.size	.L.str.17, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
