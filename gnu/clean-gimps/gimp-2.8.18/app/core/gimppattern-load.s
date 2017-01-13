	.text
	.file	"gimppattern-load.bc"
	.globl	gimp_pattern_load
	.align	16, 0x90
	.type	gimp_pattern_load,@function
gimp_pattern_load:                      # @gimp_pattern_load
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.2
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_9:                                # %if.end.4
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.5
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.9
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_load, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_15:                               # %if.end.11
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.12
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.4, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_18:                               # %if.end.21
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movl	-44(%rbp), %edi
	movq	%rcx, %rsi
	callq	read
	cmpq	$24, %rax
	je	.LBB0_20
# BB#19:                                # %if.then.24
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_36
.LBB0_20:                               # %if.end.28
	movl	-72(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-72(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-72(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-72(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-68(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-68(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-68(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-64(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-60(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-56(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-52(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$1196441940, -52(%rbp)  # imm = 0x47504154
	jne	.LBB0_23
# BB#21:                                # %lor.lhs.false.117
	cmpl	$1, -68(%rbp)
	jne	.LBB0_23
# BB#22:                                # %lor.lhs.false.120
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$24, %rcx
	ja	.LBB0_24
.LBB0_23:                               # %if.then.124
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-68(%rbp), %r9d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_36
.LBB0_24:                               # %if.end.129
	cmpl	$1, -56(%rbp)
	jb	.LBB0_26
# BB#25:                                # %lor.lhs.false.133
	cmpl	$4, -56(%rbp)
	jbe	.LBB0_27
.LBB0_26:                               # %if.then.137
	movq	-32(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-56(%rbp), %r9d
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_36
.LBB0_27:                               # %if.end.142
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	subq	$24, %rcx
	movl	%ecx, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB0_31
# BB#28:                                # %if.then.147
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	-44(%rbp), %edi
	movq	-88(%rbp), %rsi
	movslq	-76(%rbp), %rdx
	callq	read
	movslq	-76(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB0_30
# BB#29:                                # %if.then.155
	movq	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_36
.LBB0_30:                               # %if.end.159
	movabsq	$.L.str.8, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	$-1, %rsi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB0_31:                               # %if.end.163
	cmpq	$0, -88(%rbp)
	jne	.LBB0_33
# BB#32:                                # %if.then.165
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
.LBB0_33:                               # %if.end.168
	callq	gimp_pattern_get_type
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movl	-64(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	temp_buf_new
	movq	-40(%rbp), %r9
	movq	%rax, 32(%r9)
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	%edi, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	temp_buf_get_data
	movl	-64(%rbp), %ecx
	imull	-60(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-244(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	read
	movl	-64(%rbp), %ecx
	imull	-60(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB0_35
# BB#34:                                # %if.then.191
	movq	-32(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_36
.LBB0_35:                               # %if.end.195
	movl	-44(%rbp), %edi
	callq	close
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
	jmp	.LBB0_39
.LBB0_36:                               # %error.198
	cmpq	$0, -40(%rbp)
	je	.LBB0_38
# BB#37:                                # %if.then.200
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_38:                               # %if.end.201
	movl	-44(%rbp), %edi
	callq	close
	movq	$0, -8(%rbp)
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB0_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pattern_load, .Lfunc_end0-gimp_pattern_load
	.cfi_endproc

	.globl	gimp_pattern_load_pixbuf
	.align	16, 0x90
	.type	gimp_pattern_load_pixbuf,@function
gimp_pattern_load_pixbuf:               # @gimp_pattern_load_pixbuf
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_load_pixbuf, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_27
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.2
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_load_pixbuf, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_27
.LBB1_9:                                # %if.end.4
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.5
	jmp	.LBB1_11
.LBB1_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB1_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_14
.LBB1_13:                               # %if.then.9
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_load_pixbuf, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_27
.LBB1_15:                               # %if.end.11
	jmp	.LBB1_16
.LBB1_16:                               # %do.end.12
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gdk_pixbuf_new_from_file
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.15
	movq	$0, -8(%rbp)
	jmp	.LBB1_27
.LBB1_18:                               # %if.end.16
	movabsq	$.L.str.13, %rsi
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_option
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.20
	movabsq	$.L.str.14, %rsi
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_option
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
.LBB1_20:                               # %if.end.23
	cmpq	$0, -72(%rbp)
	jne	.LBB1_22
# BB#21:                                # %if.then.25
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -72(%rbp)
.LBB1_22:                               # %if.end.27
	callq	gimp_pattern_get_type
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-72(%rbp), %rdx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	temp_buf_new
	movq	-40(%rbp), %r9
	movq	%rax, 32(%r9)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movq	%rax, -64(%rbp)
	movl	$0, -92(%rbp)
.LBB1_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB1_26
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %ecx
	imull	-76(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rsi
	movl	-76(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movl	-88(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB1_23 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_23
.LBB1_26:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB1_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pattern_load_pixbuf, .Lfunc_end1-gimp_pattern_load_pixbuf
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_pattern_load,@object # @__func__.gimp_pattern_load
.L__func__.gimp_pattern_load:
	.asciz	"gimp_pattern_load"
	.size	.L__func__.gimp_pattern_load, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_path_is_absolute (filename)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Fatal parse error in pattern file '%s': File appears truncated."
	.size	.L.str.5, 64

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Fatal parse error in pattern file '%s': Unknown pattern format version %d."
	.size	.L.str.6, 75

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Fatal parse error in pattern file '%s: Unsupported pattern depth %d.\nGIMP Patterns must be GRAY or RGB."
	.size	.L.str.7, 104

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Invalid UTF-8 string in pattern file '%s'."
	.size	.L.str.8, 43

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Unnamed"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"name"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"mime-type"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"image/x-gimp-pat"
	.size	.L.str.12, 17

	.type	.L__func__.gimp_pattern_load_pixbuf,@object # @__func__.gimp_pattern_load_pixbuf
.L__func__.gimp_pattern_load_pixbuf:
	.asciz	"gimp_pattern_load_pixbuf"
	.size	.L__func__.gimp_pattern_load_pixbuf, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tEXt::Title"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tEXt::Comment"
	.size	.L.str.14, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
