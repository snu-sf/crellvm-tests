	.text
	.file	"jobs.bc"
	.globl	a2ps_job_unlink_tmpfiles
	.align	16, 0x90
	.type	a2ps_job_unlink_tmpfiles,@function
a2ps_job_unlink_tmpfiles:               # @a2ps_job_unlink_tmpfiles
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
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$10, -16(%rbp)
	jae	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 1544(%rcx,%rax,8)
	je	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	1544(%rcx,%rax,8), %rdi
	callq	unlink
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	movabsq	$file_job_unlink_tmpfile, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rdi
	movq	%rax, %rsi
	callq	da_map
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	a2ps_job_unlink_tmpfiles, .Lfunc_end0-a2ps_job_unlink_tmpfiles
	.cfi_endproc

	.globl	a2ps_job_new
	.align	16, 0x90
	.type	a2ps_job_new,@function
a2ps_job_new:                           # @a2ps_job_new
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
	subq	$96, %rsp
	movl	$1640, %eax             # imm = 0x668
	movl	%eax, %edi
	callq	xmalloc
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$4, %esi
	movq	%rax, -24(%rbp)
	callq	set_quoting_style
	movl	$2, %edi
	movabsq	$.L.str, %rsi
	callq	setlocale
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	setlocale
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	bindtextdomain
	movabsq	$.L.str.1, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	textdomain
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	stdout, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	lister_initialize
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2, %ecx
	movl	%ecx, %esi
	callq	lister_before_set
	movabsq	$.L.str.3, %rdi
	movl	$2, msg_verbosity
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	getenv
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	movq	-32(%rbp), %rsi
	callq	msg_verbosity_argmatch
	movl	%eax, msg_verbosity
.LBB1_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	a2ps_common_reset
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	callq	new_medium_table
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	callq	user_options_table_new
	movabsq	$.L.str.5, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	getenv
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB1_5
# BB#4:                                 # %if.then.13
	movq	-32(%rbp), %rax
	movq	%rax, simple_backup_suffix
.LBB1_5:                                # %if.end.14
	movabsq	$.L.str.7, %rdi
	callq	getenv
	movabsq	$.L.str.6, %rdi
	movq	%rax, %rsi
	callq	get_version
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-24(%rbp), %rsi
	movl	%eax, 104(%rsi)
	callq	time
	leaq	-8(%rbp), %rdi
	movq	%rax, -8(%rbp)
	callq	localtime
	movl	$56, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	movq	-24(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 132(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 148(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 152(%rax)
	callq	encodings_map_new
	movabsq	$.L.str.8, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, 160(%rdx)
	callq	output_new
	movq	-24(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-24(%rbp), %rax
	movl	$0, 176(%rax)
	movq	-24(%rbp), %rdi
	callq	init_face_eo_font
	movabsq	$.L.str.9, %rdi
	callq	xstrdup
	movq	-24(%rbp), %rdx
	movq	%rax, 264(%rdx)
	movq	-24(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	a2ps_printers_new
	movabsq	$.L.str.10, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, 272(%rdx)
	movq	-24(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-24(%rbp), %rax
	movb	$1, 296(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 300(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 304(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 308(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 312(%rax)
	movq	-24(%rbp), %rax
	movl	$-2, 316(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 320(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 324(%rax)
	callq	xstrdup
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdx
	movq	%rax, 328(%rdx)
	movq	-24(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-24(%rbp), %rax
	movl	$8, 352(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 360(%rax)
	movq	-24(%rbp), %rax
	movss	%xmm0, 364(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 392(%rax)
	callq	encodings_table_new
	movq	-24(%rbp), %rdx
	movq	%rax, 400(%rdx)
	callq	fonts_map_new
	movq	-24(%rbp), %rdx
	movq	%rax, 408(%rdx)
	callq	font_info_table_new
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, 416(%rdx)
	callq	xstrdup
	movq	-24(%rbp), %rdx
	movq	%rax, 424(%rdx)
	movq	-24(%rbp), %rax
	movq	$0, 432(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 440(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 448(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 464(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 472(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 480(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 488(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 496(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 752(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 1008(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 1264(%rax)
	callq	macro_meta_sequence_table_new
	movq	-24(%rbp), %rdx
	movq	%rax, 1520(%rdx)
	movq	-24(%rbp), %rdi
	callq	a2ps_job_register_user
	callq	new_ps_status
	movabsq	$.L.str.12, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, 1528(%rdx)
	callq	output_new
	movq	-24(%rbp), %rdx
	movq	%rax, 1536(%rdx)
	movq	-24(%rbp), %rdi
	callq	tmpfiles_reset
	callq	page_range_new
	movabsq	$.L.str.13, %rdi
	movl	$10, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movabsq	$file_job_self_print, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-24(%rbp), %r10
	movq	%rax, 1624(%r10)
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	da_new
	movq	-24(%rbp), %rcx
	movq	%rax, 1632(%rcx)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	a2ps_job_new, .Lfunc_end1-a2ps_job_new
	.cfi_endproc

	.align	16, 0x90
	.type	a2ps_job_register_user,@function
a2ps_job_register_user:                 # @a2ps_job_register_user
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
	subq	$64, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	userdata_get
	cmpq	$0, -40(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	macro_meta_sequence_add
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB2_2:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	macro_meta_sequence_add
	movb	%al, -50(%rbp)          # 1-byte Spill
.LBB2_4:                                # %if.end.6
	cmpq	$0, -24(%rbp)
	je	.LBB2_6
# BB#5:                                 # %if.then.8
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	macro_meta_sequence_add
	movb	%al, -51(%rbp)          # 1-byte Spill
.LBB2_6:                                # %if.end.11
	cmpq	$0, -16(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.13
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	macro_meta_sequence_add
	movb	%al, -52(%rbp)          # 1-byte Spill
.LBB2_8:                                # %if.end.16
	leaq	-40(%rbp), %rdi
	callq	userdata_free
	callq	xgethostname
	movabsq	$.L.str.19, %rsi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	macro_meta_sequence_add
	movq	-48(%rbp), %rdi
	movb	%al, -53(%rbp)          # 1-byte Spill
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	a2ps_job_register_user, .Lfunc_end2-a2ps_job_register_user
	.cfi_endproc

	.align	16, 0x90
	.type	tmpfiles_reset,@function
tmpfiles_reset:                         # @tmpfiles_reset
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
	movq	$0, -16(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$10, -16(%rbp)
	jae	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	$0, 1544(%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tmpfiles_reset, .Lfunc_end3-tmpfiles_reset
	.cfi_endproc

	.globl	a2ps_job_finalize
	.align	16, 0x90
	.type	a2ps_job_finalize,@function
a2ps_job_finalize:                      # @a2ps_job_finalize
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
	subq	$48, %rsp
	movabsq	$.L.str.14, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	macro_meta_sequence_get
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	a2ps_common_finalize
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	a2ps_printers_finalize
	movq	-8(%rbp), %rdi
	callq	load_main_encodings_map
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	376(%rsi), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	get_encoding_by_alias
	movq	-8(%rbp), %rsi
	movq	%rax, 384(%rsi)
	movq	-8(%rbp), %rax
	cmpq	$0, 384(%rax)
	jne	.LBB4_5
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	cmpq	$0, 376(%rdi)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB4_3
# BB#2:                                 # %cond.true
	movabsq	$.L.str, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_4
.LBB4_3:                                # %cond.false
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB4_4:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB4_5:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	344(%rax), %rsi
	callq	a2ps_get_medium
	movq	-8(%rbp), %rsi
	movq	%rax, 336(%rsi)
	movq	-8(%rbp), %rdi
	callq	load_main_fonts_map
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	a2ps_job_finalize, .Lfunc_end4-a2ps_job_finalize
	.cfi_endproc

	.globl	a2ps_job_free
	.align	16, 0x90
	.type	a2ps_job_free,@function
a2ps_job_free:                          # @a2ps_job_free
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
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rdi
	movq	stderr, %rsi
	callq	da_self_print
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free_medium_table
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	a2ps_common_free
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	encodings_map_free
	movq	-8(%rbp), %rax
	addq	$184, %rax
	movq	%rax, %rdi
	callq	face_eo_font_free
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	output_free
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	a2ps_printers_free
# BB#3:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB5_5
# BB#4:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	free
.LBB5_5:                                # %if.end.4
	jmp	.LBB5_6
.LBB5_6:                                # %do.end
	movq	-8(%rbp), %rax
	movq	400(%rax), %rdi
	callq	encodings_table_free
	movq	-8(%rbp), %rax
	movq	408(%rax), %rdi
	callq	fonts_map_free
	movq	-8(%rbp), %rax
	movq	416(%rax), %rdi
	callq	font_info_table_free
# BB#7:                                 # %do.body.5
	movq	-8(%rbp), %rax
	cmpq	$0, 424(%rax)
	je	.LBB5_9
# BB#8:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	424(%rax), %rdi
	callq	free
.LBB5_9:                                # %if.end.9
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.10
	jmp	.LBB5_11
.LBB5_11:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 432(%rax)
	je	.LBB5_13
# BB#12:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	432(%rax), %rdi
	callq	free
.LBB5_13:                               # %if.end.15
	jmp	.LBB5_14
.LBB5_14:                               # %do.end.16
	jmp	.LBB5_15
.LBB5_15:                               # %do.body.17
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB5_17
# BB#16:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdi
	callq	free
.LBB5_17:                               # %if.end.21
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.22
	jmp	.LBB5_19
.LBB5_19:                               # %do.body.23
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB5_21
# BB#20:                                # %if.then.25
	movq	-8(%rbp), %rax
	movq	448(%rax), %rdi
	callq	free
.LBB5_21:                               # %if.end.27
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.28
	jmp	.LBB5_23
.LBB5_23:                               # %do.body.29
	movq	-8(%rbp), %rax
	cmpq	$0, 456(%rax)
	je	.LBB5_25
# BB#24:                                # %if.then.31
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	free
.LBB5_25:                               # %if.end.33
	jmp	.LBB5_26
.LBB5_26:                               # %do.end.34
	jmp	.LBB5_27
.LBB5_27:                               # %do.body.35
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB5_29
# BB#28:                                # %if.then.37
	movq	-8(%rbp), %rax
	movq	464(%rax), %rdi
	callq	free
.LBB5_29:                               # %if.end.39
	jmp	.LBB5_30
.LBB5_30:                               # %do.end.40
	jmp	.LBB5_31
.LBB5_31:                               # %do.body.41
	movq	-8(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB5_33
# BB#32:                                # %if.then.43
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdi
	callq	free
.LBB5_33:                               # %if.end.45
	jmp	.LBB5_34
.LBB5_34:                               # %do.end.46
	jmp	.LBB5_35
.LBB5_35:                               # %do.body.47
	movq	-8(%rbp), %rax
	cmpq	$0, 480(%rax)
	je	.LBB5_37
# BB#36:                                # %if.then.49
	movq	-8(%rbp), %rax
	movq	480(%rax), %rdi
	callq	free
.LBB5_37:                               # %if.end.51
	jmp	.LBB5_38
.LBB5_38:                               # %do.end.52
	jmp	.LBB5_39
.LBB5_39:                               # %do.body.53
	movq	-8(%rbp), %rax
	cmpq	$0, 488(%rax)
	je	.LBB5_41
# BB#40:                                # %if.then.55
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdi
	callq	free
.LBB5_41:                               # %if.end.57
	jmp	.LBB5_42
.LBB5_42:                               # %do.end.58
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	1520(%rax), %rdi
	callq	macro_meta_sequence_table_free
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rdi
	callq	ps_status_free
	movl	msg_verbosity, %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	je	.LBB5_44
# BB#43:                                # %if.then.61
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	stderr, %rsi
	callq	output_self_print
.LBB5_44:                               # %if.end.62
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_free
	movq	-8(%rbp), %rdi
	callq	a2ps_job_unlink_tmpfiles
	movq	-8(%rbp), %rdi
	callq	tmpfiles_free
	movq	-8(%rbp), %rax
	movq	1624(%rax), %rdi
	callq	page_range_free
	movabsq	$file_job_free, %rax
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	%rax, %rsi
	callq	da_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	a2ps_job_free, .Lfunc_end5-a2ps_job_free
	.cfi_endproc

	.align	16, 0x90
	.type	tmpfiles_free,@function
tmpfiles_free:                          # @tmpfiles_free
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
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$10, -16(%rbp)
	jae	.LBB6_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 1544(%rcx,%rax,8)
	je	.LBB6_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	1544(%rcx,%rax,8), %rdi
	callq	free
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_6
.LBB6_6:                                # %do.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tmpfiles_free, .Lfunc_end6-tmpfiles_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"a2ps"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/usr/local/share/locale"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"A2PS_VERBOSITY"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"$A2PS_VERBOSITY"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"SIMPLE_BACKUP_SUFFIX"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"$VERSION_CONTROL"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"VERSION_CONTROL"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PS encodings"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"stdin"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"bw"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"a2ps output"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Main trunk"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"List of the jobs"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"user.home"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"unknown encoding `%s'"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"user.login"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"user.name"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"user.comments"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"user.host"
	.size	.L.str.19, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
