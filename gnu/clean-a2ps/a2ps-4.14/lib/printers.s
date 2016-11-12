	.text
	.file	"printers.bc"
	.globl	a2ps_printers_new
	.align	16, 0x90
	.type	a2ps_printers_new,@function
a2ps_printers_new:                      # @a2ps_printers_new
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
	subq	$32, %rsp
	movl	$120, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	printer_table_new
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	printer_create
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	printer_create
	movabsq	$.L.str.2, %rdi
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	callq	xstrdup
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	movb	$1, 88(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-16(%rbp), %rax
	movb	$1, 104(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	a2ps_printers_new, .Lfunc_end0-a2ps_printers_new
	.cfi_endproc

	.align	16, 0x90
	.type	printer_table_new,@function
printer_table_new:                      # @printer_table_new
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$printer_hash_1, %rdi
	movabsq	$printer_hash_2, %rdx
	movabsq	$printer_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	printer_table_new, .Lfunc_end1-printer_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	printer_create,@function
printer_create:                         # @printer_create
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	printer_create, .Lfunc_end2-printer_create
	.cfi_endproc

	.globl	a2ps_printers_free
	.align	16, 0x90
	.type	a2ps_printers_free,@function
a2ps_printers_free:                     # @a2ps_printers_free
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	printer_table_free
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	printer_free
	movq	-8(%rbp), %rdi
	addq	$40, %rdi
	callq	printer_free
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB3_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	free
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %do.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.body.3
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB3_7
# BB#6:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	free
.LBB3_7:                                # %if.end.7
	jmp	.LBB3_8
.LBB3_8:                                # %do.end.8
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	ppd_free
# BB#9:                                 # %do.body.9
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB3_11
# BB#10:                                # %if.then.11
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	free
.LBB3_11:                               # %if.end.13
	jmp	.LBB3_12
.LBB3_12:                               # %do.end.14
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.15
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB3_15
# BB#14:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	free
.LBB3_15:                               # %if.end.19
	jmp	.LBB3_16
.LBB3_16:                               # %do.end.20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	a2ps_printers_free, .Lfunc_end3-a2ps_printers_free
	.cfi_endproc

	.align	16, 0x90
	.type	printer_table_free,@function
printer_table_free:                     # @printer_table_free
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
	movabsq	$printer_free, %rax
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
	.size	printer_table_free, .Lfunc_end4-printer_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	printer_free,@function
printer_free:                           # @printer_free
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %do.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.body.2
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB5_7:                                # %if.end.6
	jmp	.LBB5_8
.LBB5_8:                                # %do.end.7
	jmp	.LBB5_9
.LBB5_9:                                # %do.body.8
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_11
# BB#10:                                # %if.then.10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB5_11:                               # %if.end.12
	jmp	.LBB5_12
.LBB5_12:                               # %do.end.13
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	printer_free, .Lfunc_end5-printer_free
	.cfi_endproc

	.globl	a2ps_flag_destination_to_string
	.align	16, 0x90
	.type	a2ps_flag_destination_to_string,@function
a2ps_flag_destination_to_string:        # @a2ps_flag_destination_to_string
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
	subq	$16, %rsp
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	96(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	272(%rdx), %rdx
	movb	88(%rdx), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	cmpl	$0, %eax
	setne	%sil
	movzbl	%sil, %eax
	andl	$1, %eax
	movl	%eax, %esi
	callq	destination_to_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	a2ps_flag_destination_to_string, .Lfunc_end6-a2ps_flag_destination_to_string
	.cfi_endproc

	.align	16, 0x90
	.type	destination_to_string,@function
destination_to_string:                  # @destination_to_string
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
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB7_6
.LBB7_2:                                # %if.then
	testb	$1, -9(%rbp)
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	xstrdup
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	xstrdup
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB7_5:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB7_10
.LBB7_6:                                # %if.else
	testb	$1, -9(%rbp)
	je	.LBB7_8
# BB#7:                                 # %cond.true.9
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %cond.false.11
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_9:                                # %cond.end.13
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	shlq	$0, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_10:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	destination_to_string, .Lfunc_end7-destination_to_string
	.cfi_endproc

	.globl	a2ps_destination_to_string
	.align	16, 0x90
	.type	a2ps_destination_to_string,@function
a2ps_destination_to_string:             # @a2ps_destination_to_string
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	112(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movb	104(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	destination_to_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	a2ps_destination_to_string, .Lfunc_end8-a2ps_destination_to_string
	.cfi_endproc

	.globl	a2ps_printers_finalize
	.align	16, 0x90
	.type	a2ps_printers_finalize,@function
a2ps_printers_finalize:                 # @a2ps_printers_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, %rdi
	je	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_5
.LBB9_2:                                # %if.else
	movq	-8(%rbp), %rax
	testb	$1, 88(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	callq	a2ps_printers_ppdkey_get
	movq	%rax, -16(%rbp)
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %if.end.3
	cmpq	$0, -16(%rbp)
	jne	.LBB9_7
# BB#6:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB9_7:                                # %if.end.6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_a2ps_ppd_get
	movq	-8(%rbp), %rsi
	movq	%rax, 80(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	a2ps_printers_finalize, .Lfunc_end9-a2ps_printers_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	a2ps_printers_ppdkey_get,@function
a2ps_printers_ppdkey_get:               # @a2ps_printers_ppdkey_get
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_6
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	printer_table_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB10_5
# BB#4:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	a2ps_printers_ppdkey_get, .Lfunc_end10-a2ps_printers_ppdkey_get
	.cfi_endproc

	.globl	a2ps_printers_add
	.align	16, 0x90
	.type	a2ps_printers_add,@function
a2ps_printers_add:                      # @a2ps_printers_add
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
	subq	$80, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	strspn
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$62, %ecx
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$124, %ecx
	je	.LBB11_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.3, %rsi
	movq	-40(%rbp), %rdi
	callq	strtok
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.4, %rsi
	movq	%rax, -32(%rbp)
	callq	strtok
	movq	%rax, -40(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movabsq	$.L.str.3, %rsi
	movq	-40(%rbp), %rdi
	callq	strspn
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB11_4:                               # %if.end
	movabsq	$.L.str, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_6
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	printer_set
	jmp	.LBB11_10
.LBB11_6:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_8
# BB#7:                                 # %if.then.19
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	printer_set
	jmp	.LBB11_9
.LBB11_8:                               # %if.else.20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	printer_table_add
.LBB11_9:                               # %if.end.22
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.23
	movb	$1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	a2ps_printers_add, .Lfunc_end11-a2ps_printers_add
	.cfi_endproc

	.align	16, 0x90
	.type	printer_set,@function
printer_set:                            # @printer_set
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	cmpq	$0, -32(%rbp)
	je	.LBB12_8
# BB#6:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB12_8
# BB#7:                                 # %cond.true
	movq	-32(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB12_9
.LBB12_9:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
# BB#10:                                # %do.end.7
	jmp	.LBB12_11
.LBB12_11:                              # %do.body.8
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#12:                                # %do.body.10
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB12_14:                              # %if.end.15
	jmp	.LBB12_15
.LBB12_15:                              # %do.end.16
	cmpq	$0, -40(%rbp)
	je	.LBB12_18
# BB#16:                                # %lor.lhs.false.19
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB12_18
# BB#17:                                # %cond.true.23
	movq	-40(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_19
.LBB12_18:                              # %cond.false.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_19
.LBB12_19:                              # %cond.end.26
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
# BB#20:                                # %do.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	printer_set, .Lfunc_end12-printer_set
	.cfi_endproc

	.align	16, 0x90
	.type	printer_table_add,@function
printer_table_add:                      # @printer_table_add
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	printer_table_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	printer_new
	movq	%rax, -40(%rbp)
.LBB13_2:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	printer_set
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	callq	hash_insert
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	printer_table_add, .Lfunc_end13-printer_table_add
	.cfi_endproc

	.globl	a2ps_printers_default_ppdkey_get
	.align	16, 0x90
	.type	a2ps_printers_default_ppdkey_get,@function
a2ps_printers_default_ppdkey_get:       # @a2ps_printers_default_ppdkey_get
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	a2ps_printers_default_ppdkey_get, .Lfunc_end14-a2ps_printers_default_ppdkey_get
	.cfi_endproc

	.globl	a2ps_printers_default_ppdkey_set
	.align	16, 0x90
	.type	a2ps_printers_default_ppdkey_set,@function
a2ps_printers_default_ppdkey_set:       # @a2ps_printers_default_ppdkey_set
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	free
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB15_8
# BB#6:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB15_8
# BB#7:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB15_9
.LBB15_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB15_9
.LBB15_9:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#10:                                # %do.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	a2ps_printers_default_ppdkey_set, .Lfunc_end15-a2ps_printers_default_ppdkey_set
	.cfi_endproc

	.globl	a2ps_printers_request_ppdkey_get
	.align	16, 0x90
	.type	a2ps_printers_request_ppdkey_get,@function
a2ps_printers_request_ppdkey_get:       # @a2ps_printers_request_ppdkey_get
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	a2ps_printers_request_ppdkey_get, .Lfunc_end16-a2ps_printers_request_ppdkey_get
	.cfi_endproc

	.globl	a2ps_printers_request_ppdkey_set
	.align	16, 0x90
	.type	a2ps_printers_request_ppdkey_set,@function
a2ps_printers_request_ppdkey_set:       # @a2ps_printers_request_ppdkey_set
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB17_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	free
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB17_8
# BB#6:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB17_8
# BB#7:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB17_9
.LBB17_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB17_9
.LBB17_9:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
# BB#10:                                # %do.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	a2ps_printers_request_ppdkey_set, .Lfunc_end17-a2ps_printers_request_ppdkey_set
	.cfi_endproc

	.globl	a2ps_printers_flag_output_set
	.align	16, 0x90
	.type	a2ps_printers_flag_output_set,@function
a2ps_printers_flag_output_set:          # @a2ps_printers_flag_output_set
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
	subq	$48, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movb	-17(%rbp), %al
	movq	-8(%rbp), %rsi
	andb	$1, %al
	movb	%al, 88(%rsi)
	testb	$1, -17(%rbp)
	jne	.LBB18_8
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -16(%rbp)
	je	.LBB18_8
# BB#2:                                 # %land.lhs.true.4
	movq	-16(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_8
# BB#3:                                 # %if.then
	jmp	.LBB18_4
.LBB18_4:                               # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB18_6
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	free
.LBB18_6:                               # %if.end
	jmp	.LBB18_7
.LBB18_7:                               # %do.end
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	jmp	.LBB18_19
.LBB18_8:                               # %if.else
	jmp	.LBB18_9
.LBB18_9:                               # %do.body.10
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#10:                                # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB18_12
# BB#11:                                # %if.then.14
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	free
.LBB18_12:                              # %if.end.16
	jmp	.LBB18_13
.LBB18_13:                              # %do.end.17
	cmpq	$0, -32(%rbp)
	je	.LBB18_16
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB18_16
# BB#15:                                # %cond.true
	movq	-32(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB18_17
.LBB18_16:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB18_17
.LBB18_17:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
# BB#18:                                # %do.end.23
	jmp	.LBB18_19
.LBB18_19:                              # %if.end.24
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	a2ps_printers_flag_output_set, .Lfunc_end18-a2ps_printers_flag_output_set
	.cfi_endproc

	.globl	a2ps_printers_flag_output_name_get
	.align	16, 0x90
	.type	a2ps_printers_flag_output_name_get,@function
a2ps_printers_flag_output_name_get:     # @a2ps_printers_flag_output_name_get
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	a2ps_printers_flag_output_name_get, .Lfunc_end19-a2ps_printers_flag_output_name_get
	.cfi_endproc

	.globl	a2ps_printers_flag_output_is_printer_get
	.align	16, 0x90
	.type	a2ps_printers_flag_output_is_printer_get,@function
a2ps_printers_flag_output_is_printer_get: # @a2ps_printers_flag_output_is_printer_get
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	88(%rdi), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	a2ps_printers_flag_output_is_printer_get, .Lfunc_end20-a2ps_printers_flag_output_is_printer_get
	.cfi_endproc

	.globl	a2ps_printers_font_known_p
	.align	16, 0x90
	.type	a2ps_printers_font_known_p,@function
a2ps_printers_font_known_p:             # @a2ps_printers_font_known_p
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	80(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	ppd_font_known_p
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	a2ps_printers_font_known_p, .Lfunc_end21-a2ps_printers_font_known_p
	.cfi_endproc

	.globl	a2ps_printers_list_short
	.align	16, 0x90
	.type	a2ps_printers_list_short,@function
a2ps_printers_list_short:               # @a2ps_printers_list_short
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
	subq	$32, %rsp
	movabsq	$.L.str.6, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	-8(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	8(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	printer_table_short_self_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	a2ps_printers_list_short, .Lfunc_end22-a2ps_printers_list_short
	.cfi_endproc

	.align	16, 0x90
	.type	printer_table_short_self_print,@function
printer_table_short_self_print:         # @printer_table_short_self_print
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$printer_hash_qcmp, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	hash_dump
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_3
.LBB23_3:                               # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$printer_key_len, %rcx
	movabsq	$printer_key_fputs, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	callq	lister_fprint_vertical
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	printer_table_short_self_print, .Lfunc_end23-printer_table_short_self_print
	.cfi_endproc

	.globl	a2ps_printers_list_long
	.align	16, 0x90
	.type	a2ps_printers_list_long,@function
a2ps_printers_list_long:                # @a2ps_printers_list_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.6, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$61, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rcx
	addq	$16, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	printer_self_print
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rcx
	addq	$40, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	printer_self_print
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	printer_table_self_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	a2ps_printers_list_long, .Lfunc_end24-a2ps_printers_list_long
	.cfi_endproc

	.align	16, 0x90
	.type	printer_self_print,@function
printer_self_print:                     # @printer_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.12, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	fputs
	movq	-8(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB25_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB25_2:                               # %if.end
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB25_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.14, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB25_4:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	printer_self_print, .Lfunc_end25-printer_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	printer_table_self_print,@function
printer_table_self_print:               # @printer_table_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$printer_self_print, %rax
	movabsq	$printer_hash_qcmp, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	hash_maparg
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	printer_table_self_print, .Lfunc_end26-printer_table_self_print
	.cfi_endproc

	.globl	a2ps_ppd_list_short
	.align	16, 0x90
	.type	a2ps_ppd_list_short,@function
a2ps_ppd_list_short:                    # @a2ps_ppd_list_short
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	_a2ps_ppd_list_short
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	a2ps_ppd_list_short, .Lfunc_end27-a2ps_ppd_list_short
	.cfi_endproc

	.globl	a2ps_ppd_list_long
	.align	16, 0x90
	.type	a2ps_ppd_list_long,@function
a2ps_ppd_list_long:                     # @a2ps_ppd_list_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	_a2ps_ppd_list_long
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	a2ps_ppd_list_long, .Lfunc_end28-a2ps_ppd_list_long
	.cfi_endproc

	.globl	a2ps_open_output_stream
	.align	16, 0x90
	.type	a2ps_open_output_stream,@function
a2ps_open_output_stream:                # @a2ps_open_output_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	testb	$1, 88(%rdi)
	jne	.LBB29_12
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	104(%rax), %edx
	callq	stream_wopen_backup
	movq	-8(%rbp), %rdi
	movq	%rax, 288(%rdi)
# BB#2:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#3:                                 # %do.body.3
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB29_5
# BB#4:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	free
.LBB29_5:                               # %if.end
	jmp	.LBB29_6
.LBB29_6:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB29_9
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB29_9
# BB#8:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB29_10
.LBB29_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB29_10
.LBB29_10:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 112(%rcx)
# BB#11:                                # %do.end.11
	movq	-16(%rbp), %rax
	movb	$1, 104(%rax)
	jmp	.LBB29_26
.LBB29_12:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	96(%rax), %rsi
	callq	a2ps_printers_command_get
	movabsq	$.L.str.7, %rdx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rsi
	callq	expand_user_string
	leaq	-32(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	104(%rax), %esi
	callq	stream_perl_open_backup
	movq	-8(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %esi
	cmpl	$62, %esi
	jne	.LBB29_14
# BB#13:                                # %if.then.21
	movq	-16(%rbp), %rax
	movb	$1, 104(%rax)
	movq	-32(%rbp), %rdi
	callq	xstrdup
	movq	-16(%rbp), %rdi
	movq	%rax, 112(%rdi)
	jmp	.LBB29_25
.LBB29_14:                              # %if.else.25
	jmp	.LBB29_15
.LBB29_15:                              # %do.body.26
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)
# BB#16:                                # %do.body.29
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB29_18
# BB#17:                                # %if.then.32
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	free
.LBB29_18:                              # %if.end.34
	jmp	.LBB29_19
.LBB29_19:                              # %do.end.35
	cmpq	$0, -56(%rbp)
	je	.LBB29_22
# BB#20:                                # %lor.lhs.false.38
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB29_22
# BB#21:                                # %cond.true.42
	movq	-56(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB29_23
.LBB29_22:                              # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB29_23
.LBB29_23:                              # %cond.end.45
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 112(%rcx)
# BB#24:                                # %do.end.48
	movq	-16(%rbp), %rax
	movb	$0, 104(%rax)
.LBB29_25:                              # %if.end.50
	jmp	.LBB29_26
.LBB29_26:                              # %if.end.51
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	a2ps_open_output_stream, .Lfunc_end29-a2ps_open_output_stream
	.cfi_endproc

	.align	16, 0x90
	.type	a2ps_printers_command_get,@function
a2ps_printers_command_get:              # @a2ps_printers_command_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB30_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB30_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_10
.LBB30_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	printer_table_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB30_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB30_7
# BB#6:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_10
.LBB30_7:                               # %if.end.14
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB30_9
# BB#8:                                 # %if.then.17
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movabsq	$.L.str.1, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.18, %r8
	movq	-24(%rbp), %r9
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB30_9:                               # %if.end.20
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB30_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	a2ps_printers_command_get, .Lfunc_end30-a2ps_printers_command_get
	.cfi_endproc

	.globl	a2ps_close_output_stream
	.align	16, 0x90
	.type	a2ps_close_output_stream,@function
a2ps_close_output_stream:               # @a2ps_close_output_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	288(%rdi), %rdi
	callq	stream_close
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	a2ps_close_output_stream, .Lfunc_end31-a2ps_close_output_stream
	.cfi_endproc

	.align	16, 0x90
	.type	printer_hash_1,@function
printer_hash_1:                         # @printer_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB32_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB32_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB32_3 Depth=1
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
	jmp	.LBB32_3
.LBB32_5:                               # %while.end
	jmp	.LBB32_6
.LBB32_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end32:
	.size	printer_hash_1, .Lfunc_end32-printer_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	printer_hash_2,@function
printer_hash_2:                         # @printer_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB33_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB33_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB33_3 Depth=1
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
	jmp	.LBB33_3
.LBB33_5:                               # %while.end
	jmp	.LBB33_6
.LBB33_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end33:
	.size	printer_hash_2, .Lfunc_end33-printer_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	printer_hash_cmp,@function
printer_hash_cmp:                       # @printer_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB34_2
.LBB34_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB34_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB34_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_7
.LBB34_5:                               # %if.end
                                        #   in Loop: Header=BB34_3 Depth=1
	jmp	.LBB34_6
.LBB34_6:                               # %do.cond
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB34_3
.LBB34_7:                               # %do.end
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
.Lfunc_end34:
	.size	printer_hash_cmp, .Lfunc_end34-printer_hash_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	printer_table_find,@function
printer_table_find:                     # @printer_table_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
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
.Lfunc_end35:
	.size	printer_table_find, .Lfunc_end35-printer_table_find
	.cfi_endproc

	.align	16, 0x90
	.type	printer_new,@function
printer_new:                            # @printer_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	printer_create
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	printer_new, .Lfunc_end36-printer_new
	.cfi_endproc

	.align	16, 0x90
	.type	printer_hash_qcmp,@function
printer_hash_qcmp:                      # @printer_hash_qcmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	callq	strverscmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	printer_hash_qcmp, .Lfunc_end37-printer_hash_qcmp
	.cfi_endproc

	.align	16, 0x90
	.type	printer_key_len,@function
printer_key_len:                        # @printer_key_len
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	strlen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	printer_key_len, .Lfunc_end38-printer_key_len
	.cfi_endproc

	.align	16, 0x90
	.type	printer_key_fputs,@function
printer_key_fputs:                      # @printer_key_fputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	printer_key_fputs, .Lfunc_end39-printer_key_fputs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Default Printer"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Unknown Printer"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"level1"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" \t"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Known Outputs (Printers, etc.)"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"output command"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"sent to the standard output"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sent to the default printer"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"saved into the file `%s'"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"sent to the printer `%s'"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"- "
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" (PPD: %s)"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"  %s\n"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"no command for the `%s' (%s%s)"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"-d"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.zero	1
	.size	.L.str.17, 1

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"-P "
	.size	.L.str.18, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
