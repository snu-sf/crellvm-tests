	.text
	.file	"gscdefs.bc"
	.globl	gs_program_name
	.align	16, 0x90
	.type	gs_program_name,@function
gs_program_name:                        # @gs_program_name
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.1, %eax
	retq
.Lfunc_end0:
	.size	gs_program_name, .Lfunc_end0-gs_program_name
	.cfi_endproc

	.globl	gs_version_number
	.align	16, 0x90
	.type	gs_version_number,@function
gs_version_number:                      # @gs_version_number
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$91400, %eax            # imm = 0x16508
	retq
.Lfunc_end1:
	.size	gs_version_number, .Lfunc_end1-gs_version_number
	.cfi_endproc

	.globl	gs_revision_number
	.align	16, 0x90
	.type	gs_revision_number,@function
gs_revision_number:                     # @gs_revision_number
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$914, %eax              # imm = 0x392
	retq
.Lfunc_end2:
	.size	gs_revision_number, .Lfunc_end2-gs_revision_number
	.cfi_endproc

	.type	gs_buildtime,@object    # @gs_buildtime
	.section	.rodata,"a",@progbits
	.globl	gs_buildtime
	.align	8
gs_buildtime:
	.quad	0                       # 0x0
	.size	gs_buildtime, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Copyright (C) 2014 Artifex Software, Inc.  All rights reserved."
	.size	.L.str, 64

	.type	gs_copyright,@object    # @gs_copyright
	.section	.rodata,"a",@progbits
	.globl	gs_copyright
	.align	8
gs_copyright:
	.quad	.L.str
	.size	gs_copyright, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"GNU Ghostscript"
	.size	.L.str.1, 16

	.type	gs_productfamily,@object # @gs_productfamily
	.section	.rodata,"a",@progbits
	.globl	gs_productfamily
	.align	8
gs_productfamily:
	.quad	.L.str.1
	.size	gs_productfamily, 8

	.type	gs_product,@object      # @gs_product
	.globl	gs_product
	.align	8
gs_product:
	.quad	.L.str.1
	.size	gs_product, 8

	.type	gs_version,@object      # @gs_version
	.globl	gs_version
	.align	8
gs_version:
	.quad	91400                   # 0x16508
	.size	gs_version, 8

	.type	gs_revision,@object     # @gs_revision
	.globl	gs_revision
	.align	8
gs_revision:
	.quad	914                     # 0x392
	.size	gs_revision, 8

	.type	gs_revisiondate,@object # @gs_revisiondate
	.globl	gs_revisiondate
	.align	8
gs_revisiondate:
	.quad	20140702                # 0x133529e
	.size	gs_revisiondate, 8

	.type	gs_serialnumber,@object # @gs_serialnumber
	.globl	gs_serialnumber
	.align	8
gs_serialnumber:
	.quad	42                      # 0x2a
	.size	gs_serialnumber, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"/usr/local/share/ghostscript/9.14/doc"
	.size	.L.str.2, 38

	.type	gs_doc_directory,@object # @gs_doc_directory
	.section	.rodata,"a",@progbits
	.globl	gs_doc_directory
	.align	8
gs_doc_directory:
	.quad	.L.str.2
	.size	gs_doc_directory, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"/usr/local/share/ghostscript/9.14/Resource/Init:/usr/local/share/ghostscript/9.14/lib:/usr/local/share/ghostscript/9.14/Resource/Font:/usr/local/share/ghostscript/fonts:/usr/local/share/fonts/default/ghostscript:/usr/local/share/fonts/default/Type1:/usr/local/share/fonts/default/TrueType:/usr/lib/DPS/outline/base:/usr/openwin/lib/X11/fonts/Type1:/usr/openwin/lib/X11/fonts/TrueType"
	.size	.L.str.3, 384

	.type	gs_lib_default_path,@object # @gs_lib_default_path
	.section	.rodata,"a",@progbits
	.globl	gs_lib_default_path
	.align	8
gs_lib_default_path:
	.quad	.L.str.3
	.size	gs_lib_default_path, 8

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_init.ps"
	.size	.L.str.4, 11

	.type	gs_init_file,@object    # @gs_init_file
	.section	.rodata,"a",@progbits
	.globl	gs_init_file
	.align	8
gs_init_file:
	.quad	.L.str.4
	.size	gs_init_file, 8

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"x11alpha bbox"
	.size	.L.str.5, 14

	.type	gs_dev_defaults,@object # @gs_dev_defaults
	.section	.rodata,"a",@progbits
	.globl	gs_dev_defaults
	.align	8
gs_dev_defaults:
	.quad	.L.str.5
	.size	gs_dev_defaults, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
