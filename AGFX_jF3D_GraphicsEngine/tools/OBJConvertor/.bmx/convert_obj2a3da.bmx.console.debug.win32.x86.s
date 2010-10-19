	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbAppArgs
	extrn	_bbArrayNew1D
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFind
	extrn	_bbStringFromDouble
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringSlice
	extrn	_bbStringSplit
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_filesystem_StripDir
	extrn	_brl_retro_RSet
	extrn	_brl_standardio_Print
	extrn	_brl_stream_CloseStream
	extrn	_brl_stream_Eof
	extrn	_brl_stream_OpenStream
	extrn	_brl_stream_ReadLine
	extrn	_brl_stream_WriteLine
	extrn	_brl_stream_WriteStream
	public	__bb_TAGFX_Face_Delete
	public	__bb_TAGFX_Face_New
	public	__bb_TAGFX_MaterialList_Delete
	public	__bb_TAGFX_MaterialList_LoadFromFile
	public	__bb_TAGFX_MaterialList_New
	public	__bb_TAGFX_MaterialList_SaveToFile
	public	__bb_TAGFX_Material_Delete
	public	__bb_TAGFX_Material_New
	public	__bb_TAGFX_NormalList_Add
	public	__bb_TAGFX_NormalList_Delete
	public	__bb_TAGFX_NormalList_Get
	public	__bb_TAGFX_NormalList_New
	public	__bb_TAGFX_UVList_Add
	public	__bb_TAGFX_UVList_Delete
	public	__bb_TAGFX_UVList_Get
	public	__bb_TAGFX_UVList_New
	public	__bb_TAGFX_Vector2_Delete
	public	__bb_TAGFX_Vector2_New
	public	__bb_TAGFX_Vector3_Delete
	public	__bb_TAGFX_Vector3_New
	public	__bb_TAGFX_VertexList_Add
	public	__bb_TAGFX_VertexList_Delete
	public	__bb_TAGFX_VertexList_Get
	public	__bb_TAGFX_VertexList_New
	public	__bb_TAGFX_Wavefront_obj_Delete
	public	__bb_TAGFX_Wavefront_obj_Dump
	public	__bb_TAGFX_Wavefront_obj_LoadFromFile
	public	__bb_TAGFX_Wavefront_obj_New
	public	__bb_TAGFX_Wavefront_obj_SaveToFile
	public	__bb_TAGFX_Wavefront_obj_SaveToJava
	public	__bb_TAGFX_object_AddFace
	public	__bb_TAGFX_object_Delete
	public	__bb_TAGFX_object_New
	public	__bb_main
	public	_bb_Format
	public	_bb_InName
	public	_bb_MESHdata
	public	_bb_TAGFX_Face
	public	_bb_TAGFX_Material
	public	_bb_TAGFX_MaterialList
	public	_bb_TAGFX_NormalList
	public	_bb_TAGFX_UVList
	public	_bb_TAGFX_Vector2
	public	_bb_TAGFX_Vector3
	public	_bb_TAGFX_VertexList
	public	_bb_TAGFX_Wavefront_obj
	public	_bb_TAGFX_object
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_485],0
	je	_486
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_486:
	mov	dword [_485],1
	mov	eax,ebp
	push	eax
	push	_470
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_TAGFX_Vector3
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_VertexList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_NormalList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_UVList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Face
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_object
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Material
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_MaterialList
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TAGFX_Wavefront_obj
	call	_bbObjectRegisterType
	add	esp,4
	push	_432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bbAppArgs]
	cmp	dword [eax+20],2
	jne	_436
	mov	eax,ebp
	push	eax
	push	_462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [_bbAppArgs]
	cmp	ebx,dword [eax+20]
	jb	_439
	call	_brl_blitz_ArrayBoundsError
_439:
	mov	eax,dword [_bbAppArgs]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [_bb_InName]
	dec	dword [eax+4]
	jnz	_443
	push	eax
	call	_bbGCFree
	add	esp,4
_443:
	mov	dword [_bb_InName],ebx
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Wavefront_obj
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_MESHdata]
	dec	dword [eax+4]
	jnz	_448
	push	eax
	call	_bbGCFree
	add	esp,4
_448:
	mov	dword [_bb_MESHdata],ebx
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_202
	call	_brl_standardio_Print
	add	esp,4
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_MESHdata]
	cmp	ebx,_bbNullObject
	jne	_452
	call	_brl_blitz_NullObjectError
_452:
	push	_203
	push	dword [_bb_InName]
	push	_67
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_MESHdata]
	cmp	ebx,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	push	_205
	push	dword [_bb_InName]
	push	_204
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_MESHdata]
	cmp	ebx,_bbNullObject
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	push	_206
	push	dword [_bb_InName]
	push	_204
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_207
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_463
_436:
	mov	eax,ebp
	push	eax
	push	_469
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_208
	call	_brl_standardio_Print
	add	esp,4
	push	_465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_209
	call	_brl_standardio_Print
	add	esp,4
	push	_466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_208
	call	_brl_standardio_Print
	add	esp,4
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_210
	call	_brl_standardio_Print
	add	esp,4
	push	_468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_208
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_463:
	mov	ebx,0
	jmp	_298
_298:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector3_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_501
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Vector3
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	push	ebp
	push	_500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_490
	call	_brl_blitz_NullObjectError
_490:
	fldz
	fstp	dword [ebx+8]
	push	_492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	fldz
	fstp	dword [ebx+12]
	push	_496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_498
	call	_brl_blitz_NullObjectError
_498:
	fldz
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_301
_301:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector3_Delete:
	push	ebp
	mov	ebp,esp
_304:
	mov	eax,0
	jmp	_503
_503:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector2_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Vector2
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	push	ebp
	push	_513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_507
	call	_brl_blitz_NullObjectError
_507:
	fldz
	fstp	dword [ebx+8]
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_511
	call	_brl_blitz_NullObjectError
_511:
	fldz
	fstp	dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_307
_307:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Vector2_Delete:
	push	ebp
	mov	ebp,esp
_310:
	mov	eax,0
	jmp	_516
_516:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_525
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_VertexList
	push	200000
	push	_517
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_522
	call	_brl_blitz_NullObjectError
_522:
	mov	dword [ebx+12],0
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_313
_313:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_316:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_528
	push	eax
	call	_bbGCFree
	add	esp,4
_528:
	mov	eax,0
	jmp	_526
_526:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_579
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_531
	call	_brl_blitz_NullObjectError
_531:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_534
	call	_brl_blitz_NullObjectError
_534:
	mov	ebx,dword [ebx+12]
	cmp	ebx,dword [esi+20]
	jb	_536
	call	_brl_blitz_ArrayBoundsError
_536:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_541
	push	eax
	call	_bbGCFree
	add	esp,4
_541:
	mov	dword [esi+24],ebx
	push	_542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_549
	call	_brl_blitz_ArrayBoundsError
_549:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_551
	call	_brl_blitz_NullObjectError
_551:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_555
	call	_brl_blitz_NullObjectError
_555:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_558
	call	_brl_blitz_NullObjectError
_558:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_560
	call	_brl_blitz_ArrayBoundsError
_560:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	push	_564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_571
	call	_brl_blitz_ArrayBoundsError
_571:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_573
	call	_brl_blitz_NullObjectError
_573:
	fld	dword [ebp-16]
	fstp	dword [ebx+16]
	push	_575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_577
	call	_brl_blitz_NullObjectError
_577:
	add	dword [ebx+12],1
	mov	ebx,0
	jmp	_322
_322:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_VertexList_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_585
	call	_brl_blitz_NullObjectError
_585:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_588
	call	_brl_blitz_ArrayBoundsError
_588:
	mov	ebx,dword [esi+ebx*4+24]
	jmp	_326
_326:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_599
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_NormalList
	push	200000
	push	_591
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_596
	call	_brl_blitz_NullObjectError
_596:
	mov	dword [ebx+12],0
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_329
_329:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_332:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_602
	push	eax
	call	_bbGCFree
	add	esp,4
_602:
	mov	eax,0
	jmp	_600
_600:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_608
	call	_brl_blitz_NullObjectError
_608:
	mov	ebx,dword [ebx+12]
	cmp	ebx,dword [esi+20]
	jb	_610
	call	_brl_blitz_ArrayBoundsError
_610:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_615
	push	eax
	call	_bbGCFree
	add	esp,4
_615:
	mov	dword [esi+24],ebx
	push	_616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_618
	call	_brl_blitz_NullObjectError
_618:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_621
	call	_brl_blitz_NullObjectError
_621:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_623
	call	_brl_blitz_ArrayBoundsError
_623:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_625
	call	_brl_blitz_NullObjectError
_625:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_629
	call	_brl_blitz_NullObjectError
_629:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_632
	call	_brl_blitz_NullObjectError
_632:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_634
	call	_brl_blitz_ArrayBoundsError
_634:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	push	_638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_640
	call	_brl_blitz_NullObjectError
_640:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_643
	call	_brl_blitz_NullObjectError
_643:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_645
	call	_brl_blitz_ArrayBoundsError
_645:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_647
	call	_brl_blitz_NullObjectError
_647:
	fld	dword [ebp-16]
	fstp	dword [ebx+16]
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_651
	call	_brl_blitz_NullObjectError
_651:
	add	dword [ebx+12],1
	mov	ebx,0
	jmp	_338
_338:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_NormalList_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_660
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_659
	call	_brl_blitz_ArrayBoundsError
_659:
	mov	ebx,dword [esi+ebx*4+24]
	jmp	_342
_342:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_669
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_UVList
	push	200000
	push	_661
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_668
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_666
	call	_brl_blitz_NullObjectError
_666:
	mov	dword [ebx+12],0
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_345
_345:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_348:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_672
	push	eax
	call	_bbGCFree
	add	esp,4
_672:
	mov	eax,0
	jmp	_670
_670:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_Add:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_712
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_675
	call	_brl_blitz_NullObjectError
_675:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	mov	ebx,dword [ebx+12]
	cmp	ebx,dword [esi+20]
	jb	_680
	call	_brl_blitz_ArrayBoundsError
_680:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_685
	push	eax
	call	_bbGCFree
	add	esp,4
_685:
	mov	dword [esi+24],ebx
	push	_686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_693
	call	_brl_blitz_ArrayBoundsError
_693:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	mov	ebx,dword [ebx+8]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	mov	esi,dword [esi+12]
	cmp	esi,dword [ebx+20]
	jb	_704
	call	_brl_blitz_ArrayBoundsError
_704:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_710
	call	_brl_blitz_NullObjectError
_710:
	add	dword [ebx+12],1
	mov	ebx,0
	jmp	_353
_353:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_UVList_Get:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_719
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_715
	call	_brl_blitz_NullObjectError
_715:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_718
	call	_brl_blitz_ArrayBoundsError
_718:
	mov	ebx,dword [esi+ebx*4+24]
	jmp	_357
_357:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Face_New:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_754
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Face
	push	3
	push	_720
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	push	3
	push	_722
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	push	3
	push	_724
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	eax,ebp
	push	eax
	push	_753
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_730
_24:
	mov	eax,ebp
	push	eax
	push	_752
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_733
	call	_brl_blitz_NullObjectError
_733:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_736
	call	_brl_blitz_ArrayBoundsError
_736:
	shl	ebx,2
	add	esi,ebx
	mov	dword [esi+24],-1
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	mov	esi,dword [ebx+12]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_743
	call	_brl_blitz_ArrayBoundsError
_743:
	shl	ebx,2
	add	esi,ebx
	mov	dword [esi+24],-1
	push	_745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_747
	call	_brl_blitz_NullObjectError
_747:
	mov	esi,dword [ebx+16]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_750
	call	_brl_blitz_ArrayBoundsError
_750:
	shl	ebx,2
	add	esi,ebx
	mov	dword [esi+24],-1
	call	dword [_bbOnDebugLeaveScope]
_22:
	add	dword [ebp-8],1
_730:
	cmp	dword [ebp-8],2
	jle	_24
_23:
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_360
_360:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Face_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_363:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_758
	push	eax
	call	_bbGCFree
	add	esp,4
_758:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_760
	push	eax
	call	_bbGCFree
	add	esp,4
_760:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_762
	push	eax
	call	_bbGCFree
	add	esp,4
_762:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_764
	push	eax
	call	_bbGCFree
	add	esp,4
_764:
	mov	eax,0
	jmp	_756
_756:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_object_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_object
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	120000
	push	_769
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	eax,ebp
	push	eax
	push	_800
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_774
	call	_brl_blitz_NullObjectError
_774:
	mov	dword [ebx+28],0
	push	_776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_778
	call	_brl_blitz_NullObjectError
_778:
	push	_bb_TAGFX_VertexList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_783
	push	eax
	call	_bbGCFree
	add	esp,4
_783:
	mov	dword [esi+12],ebx
	push	_784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_786
	call	_brl_blitz_NullObjectError
_786:
	push	_bb_TAGFX_NormalList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_791
	push	eax
	call	_bbGCFree
	add	esp,4
_791:
	mov	dword [esi+16],ebx
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	push	_bb_TAGFX_UVList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_799
	push	eax
	call	_bbGCFree
	add	esp,4
_799:
	mov	dword [esi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_366
_366:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_object_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_369:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_805
	push	eax
	call	_bbGCFree
	add	esp,4
_805:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_807
	push	eax
	call	_bbGCFree
	add	esp,4
_807:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_809
	push	eax
	call	_bbGCFree
	add	esp,4
_809:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_811
	push	eax
	call	_bbGCFree
	add	esp,4
_811:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_813
	push	eax
	call	_bbGCFree
	add	esp,4
_813:
	mov	eax,0
	jmp	_803
_803:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_object_AddFace:
	push	ebp
	mov	ebp,esp
	sub	esp,44
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+36]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+40]
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp+44]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp+48]
	mov	dword [ebp-44],eax
	mov	eax,ebp
	push	eax
	push	_972
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_816
	call	_brl_blitz_NullObjectError
_816:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_819
	call	_brl_blitz_NullObjectError
_819:
	mov	ebx,dword [ebx+28]
	cmp	ebx,dword [esi+20]
	jb	_821
	call	_brl_blitz_ArrayBoundsError
_821:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Face
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_826
	push	eax
	call	_bbGCFree
	add	esp,4
_826:
	mov	dword [esi+24],ebx
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_829
	call	_brl_blitz_NullObjectError
_829:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_834
	call	_brl_blitz_ArrayBoundsError
_834:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	mov	esi,dword [ebx+8]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_839
	call	_brl_blitz_ArrayBoundsError
_839:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-8]
	mov	dword [esi+24],eax
	push	_841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_843
	call	_brl_blitz_NullObjectError
_843:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_846
	call	_brl_blitz_NullObjectError
_846:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_848
	call	_brl_blitz_ArrayBoundsError
_848:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	mov	esi,dword [ebx+8]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_853
	call	_brl_blitz_ArrayBoundsError
_853:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-12]
	mov	dword [esi+24],eax
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_857
	call	_brl_blitz_NullObjectError
_857:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_860
	call	_brl_blitz_NullObjectError
_860:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_862
	call	_brl_blitz_ArrayBoundsError
_862:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	mov	esi,dword [ebx+8]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_867
	call	_brl_blitz_ArrayBoundsError
_867:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-16]
	mov	dword [esi+24],eax
	push	_869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_874
	call	_brl_blitz_NullObjectError
_874:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_876
	call	_brl_blitz_ArrayBoundsError
_876:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_878
	call	_brl_blitz_NullObjectError
_878:
	mov	esi,dword [ebx+12]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_881
	call	_brl_blitz_ArrayBoundsError
_881:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-20]
	mov	dword [esi+24],eax
	push	_883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_885
	call	_brl_blitz_NullObjectError
_885:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_888
	call	_brl_blitz_NullObjectError
_888:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_890
	call	_brl_blitz_ArrayBoundsError
_890:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_892
	call	_brl_blitz_NullObjectError
_892:
	mov	esi,dword [ebx+12]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_895
	call	_brl_blitz_ArrayBoundsError
_895:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-24]
	mov	dword [esi+24],eax
	push	_897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_902
	call	_brl_blitz_NullObjectError
_902:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_904
	call	_brl_blitz_ArrayBoundsError
_904:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_906
	call	_brl_blitz_NullObjectError
_906:
	mov	esi,dword [ebx+12]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_909
	call	_brl_blitz_ArrayBoundsError
_909:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-28]
	mov	dword [esi+24],eax
	push	_911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_913
	call	_brl_blitz_NullObjectError
_913:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_916
	call	_brl_blitz_NullObjectError
_916:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_918
	call	_brl_blitz_ArrayBoundsError
_918:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
	mov	esi,dword [ebx+16]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_923
	call	_brl_blitz_ArrayBoundsError
_923:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-32]
	mov	dword [esi+24],eax
	push	_925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_927
	call	_brl_blitz_NullObjectError
_927:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_930
	call	_brl_blitz_NullObjectError
_930:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_932
	call	_brl_blitz_ArrayBoundsError
_932:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_934
	call	_brl_blitz_NullObjectError
_934:
	mov	esi,dword [ebx+16]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_937
	call	_brl_blitz_ArrayBoundsError
_937:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-36]
	mov	dword [esi+24],eax
	push	_939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_944
	call	_brl_blitz_NullObjectError
_944:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_946
	call	_brl_blitz_ArrayBoundsError
_946:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_948
	call	_brl_blitz_NullObjectError
_948:
	mov	esi,dword [ebx+16]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_951
	call	_brl_blitz_ArrayBoundsError
_951:
	shl	ebx,2
	add	esi,ebx
	mov	eax,dword [ebp-40]
	mov	dword [esi+24],eax
	push	_953
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_955
	call	_brl_blitz_NullObjectError
_955:
	mov	ebx,dword [ebx+24]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_958
	call	_brl_blitz_NullObjectError
_958:
	mov	esi,dword [esi+28]
	cmp	esi,dword [ebx+20]
	jb	_960
	call	_brl_blitz_ArrayBoundsError
_960:
	mov	esi,dword [ebx+esi*4+24]
	cmp	esi,_bbNullObject
	jne	_962
	call	_brl_blitz_NullObjectError
_962:
	mov	ebx,dword [ebp-44]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_967
	push	eax
	call	_bbGCFree
	add	esp,4
_967:
	mov	dword [esi+20],ebx
	push	_968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_970
	call	_brl_blitz_NullObjectError
_970:
	add	dword [ebx+28],1
	mov	ebx,0
	jmp	_382
_382:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Material_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1026
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Material
	mov	edx,_25
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	mov	eax,ebp
	push	eax
	push	_1025
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_995
	call	_brl_blitz_NullObjectError
_995:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1000
	push	eax
	call	_bbGCFree
	add	esp,4
_1000:
	mov	dword [esi+12],ebx
	push	_1001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1003
	call	_brl_blitz_NullObjectError
_1003:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1008
	push	eax
	call	_bbGCFree
	add	esp,4
_1008:
	mov	dword [esi+16],ebx
	push	_1009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1011
	call	_brl_blitz_NullObjectError
_1011:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1016
	push	eax
	call	_bbGCFree
	add	esp,4
_1016:
	mov	dword [esi+20],ebx
	push	_1017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1019
	call	_brl_blitz_NullObjectError
_1019:
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1024
	push	eax
	call	_bbGCFree
	add	esp,4
_1024:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_385
_385:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Material_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_388:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1030
	push	eax
	call	_bbGCFree
	add	esp,4
_1030:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1032
	push	eax
	call	_bbGCFree
	add	esp,4
_1032:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1034
	push	eax
	call	_bbGCFree
	add	esp,4
_1034:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1036
	push	eax
	call	_bbGCFree
	add	esp,4
_1036:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1038
	push	eax
	call	_bbGCFree
	add	esp,4
_1038:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1040
	push	eax
	call	_bbGCFree
	add	esp,4
_1040:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1042
	push	eax
	call	_bbGCFree
	add	esp,4
_1042:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1044
	push	eax
	call	_bbGCFree
	add	esp,4
_1044:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1046
	push	eax
	call	_bbGCFree
	add	esp,4
_1046:
	mov	eax,0
	jmp	_1028
_1028:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_MaterialList
	push	10
	push	_1047
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	ebp
	push	_1049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_391
_391:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_394:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_1053
	push	eax
	call	_bbGCFree
	add	esp,4
_1053:
	mov	eax,0
	jmp	_1051
_1051:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_LoadFromFile:
	push	ebp
	mov	ebp,esp
	sub	esp,76
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],_bbEmptyArray
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-48]
	fldz
	fstp	dword [ebp-52]
	fldz
	fstp	dword [ebp-56]
	fldz
	fstp	dword [ebp-60]
	fldz
	fstp	dword [ebp-64]
	fldz
	fstp	dword [ebp-68]
	fldz
	fstp	dword [ebp-72]
	fldz
	fstp	dword [ebp-76]
	mov	eax,ebp
	push	eax
	push	_1394
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_1056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1
	push	dword [ebp-8]
	call	_brl_stream_OpenStream
	add	esp,12
	mov	dword [ebp-16],eax
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_1061
	mov	eax,ebp
	push	eax
	push	_1393
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1062
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_27
_29:
	mov	eax,ebp
	push	eax
	push	_1389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	call	_brl_stream_ReadLine
	add	esp,4
	mov	dword [ebp-24],eax
	push	_1065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_30
	push	dword [ebp-24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-28],eax
	push	_1067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1069
	call	_brl_blitz_ArrayBoundsError
_1069:
	push	_31
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1070
	mov	eax,ebp
	push	eax
	push	_1105
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1073
	call	_brl_blitz_ArrayBoundsError
_1073:
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-12],eax
	push	_1074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1076
	call	_brl_blitz_NullObjectError
_1076:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-20],eax
	push	_1077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1082
	call	_brl_blitz_ArrayBoundsError
_1082:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_Material
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1087
	push	eax
	call	_bbGCFree
	add	esp,4
_1087:
	mov	dword [esi+24],ebx
	push	_1088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1090
	call	_brl_blitz_NullObjectError
_1090:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1093
	call	_brl_blitz_ArrayBoundsError
_1093:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1095
	call	_brl_blitz_NullObjectError
_1095:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1100
	push	eax
	call	_bbGCFree
	add	esp,4
_1100:
	mov	dword [esi+8],ebx
	push	_1101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1103
	call	_brl_blitz_NullObjectError
_1103:
	add	dword [ebx+12],1
	call	dword [_bbOnDebugLeaveScope]
_1070:
	push	_1106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1108
	call	_brl_blitz_ArrayBoundsError
_1108:
	push	_32
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1109
	mov	eax,ebp
	push	eax
	push	_1125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1112
	call	_brl_blitz_NullObjectError
_1112:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1115
	call	_brl_blitz_ArrayBoundsError
_1115:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1117
	call	_brl_blitz_NullObjectError
_1117:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1120
	call	_brl_blitz_ArrayBoundsError
_1120:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1124
	push	eax
	call	_bbGCFree
	add	esp,4
_1124:
	mov	dword [esi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
_1109:
	push	_1126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1128
	call	_brl_blitz_ArrayBoundsError
_1128:
	push	_33
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1129
	mov	eax,ebp
	push	eax
	push	_1145
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1132
	call	_brl_blitz_NullObjectError
_1132:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1135
	call	_brl_blitz_ArrayBoundsError
_1135:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1137
	call	_brl_blitz_NullObjectError
_1137:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1140
	call	_brl_blitz_ArrayBoundsError
_1140:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_1144
	push	eax
	call	_bbGCFree
	add	esp,4
_1144:
	mov	dword [esi+36],ebx
	call	dword [_bbOnDebugLeaveScope]
_1129:
	push	_1146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1148
	call	_brl_blitz_ArrayBoundsError
_1148:
	push	_34
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1149
	mov	eax,ebp
	push	eax
	push	_1165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1152
	call	_brl_blitz_NullObjectError
_1152:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1155
	call	_brl_blitz_ArrayBoundsError
_1155:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1157
	call	_brl_blitz_NullObjectError
_1157:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1160
	call	_brl_blitz_ArrayBoundsError
_1160:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1164
	push	eax
	call	_bbGCFree
	add	esp,4
_1164:
	mov	dword [esi+40],ebx
	call	dword [_bbOnDebugLeaveScope]
_1149:
	push	_1166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1168
	call	_brl_blitz_ArrayBoundsError
_1168:
	push	_35
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1169
	mov	eax,ebp
	push	eax
	push	_1185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1172
	call	_brl_blitz_NullObjectError
_1172:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1175
	call	_brl_blitz_ArrayBoundsError
_1175:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1177
	call	_brl_blitz_NullObjectError
_1177:
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1180
	call	_brl_blitz_ArrayBoundsError
_1180:
	mov	eax,dword [ebp-28]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_1184
	push	eax
	call	_bbGCFree
	add	esp,4
_1184:
	mov	dword [esi+32],ebx
	call	dword [_bbOnDebugLeaveScope]
_1169:
	push	_1186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1188
	call	_brl_blitz_ArrayBoundsError
_1188:
	push	_36
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1189
	mov	eax,ebp
	push	eax
	push	_1235
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1192
	call	_brl_blitz_ArrayBoundsError
_1192:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-32]
	push	_1194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1196
	call	_brl_blitz_ArrayBoundsError
_1196:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-36]
	push	_1198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1200
	call	_brl_blitz_ArrayBoundsError
_1200:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-40]
	push	_1202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1204
	call	_brl_blitz_NullObjectError
_1204:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1207
	call	_brl_blitz_ArrayBoundsError
_1207:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1209
	call	_brl_blitz_NullObjectError
_1209:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1211
	call	_brl_blitz_NullObjectError
_1211:
	fld	dword [ebp-32]
	fstp	dword [ebx+8]
	push	_1213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1215
	call	_brl_blitz_NullObjectError
_1215:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1218
	call	_brl_blitz_ArrayBoundsError
_1218:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1220
	call	_brl_blitz_NullObjectError
_1220:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1222
	call	_brl_blitz_NullObjectError
_1222:
	fld	dword [ebp-36]
	fstp	dword [ebx+12]
	push	_1224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1226
	call	_brl_blitz_NullObjectError
_1226:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1229
	call	_brl_blitz_ArrayBoundsError
_1229:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1231
	call	_brl_blitz_NullObjectError
_1231:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1233
	call	_brl_blitz_NullObjectError
_1233:
	fld	dword [ebp-40]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1189:
	push	_1239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1241
	call	_brl_blitz_ArrayBoundsError
_1241:
	push	_37
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1242
	mov	eax,ebp
	push	eax
	push	_1288
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1245
	call	_brl_blitz_ArrayBoundsError
_1245:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-44]
	push	_1247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1249
	call	_brl_blitz_ArrayBoundsError
_1249:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-48]
	push	_1251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1253
	call	_brl_blitz_ArrayBoundsError
_1253:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-52]
	push	_1255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1257
	call	_brl_blitz_NullObjectError
_1257:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1260
	call	_brl_blitz_ArrayBoundsError
_1260:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1262
	call	_brl_blitz_NullObjectError
_1262:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1264
	call	_brl_blitz_NullObjectError
_1264:
	fld	dword [ebp-44]
	fstp	dword [ebx+8]
	push	_1266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1268
	call	_brl_blitz_NullObjectError
_1268:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1271
	call	_brl_blitz_ArrayBoundsError
_1271:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1273
	call	_brl_blitz_NullObjectError
_1273:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1275
	call	_brl_blitz_NullObjectError
_1275:
	fld	dword [ebp-48]
	fstp	dword [ebx+12]
	push	_1277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1279
	call	_brl_blitz_NullObjectError
_1279:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1282
	call	_brl_blitz_ArrayBoundsError
_1282:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1284
	call	_brl_blitz_NullObjectError
_1284:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1286
	call	_brl_blitz_NullObjectError
_1286:
	fld	dword [ebp-52]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1242:
	push	_1289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1291
	call	_brl_blitz_ArrayBoundsError
_1291:
	push	_38
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1292
	mov	eax,ebp
	push	eax
	push	_1338
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1295
	call	_brl_blitz_ArrayBoundsError
_1295:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-56]
	push	_1297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1299
	call	_brl_blitz_ArrayBoundsError
_1299:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-60]
	push	_1301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1303
	call	_brl_blitz_ArrayBoundsError
_1303:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-64]
	push	_1305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1307
	call	_brl_blitz_NullObjectError
_1307:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1310
	call	_brl_blitz_ArrayBoundsError
_1310:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1312
	call	_brl_blitz_NullObjectError
_1312:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1314
	call	_brl_blitz_NullObjectError
_1314:
	fld	dword [ebp-56]
	fstp	dword [ebx+8]
	push	_1316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1318
	call	_brl_blitz_NullObjectError
_1318:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1321
	call	_brl_blitz_ArrayBoundsError
_1321:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1323
	call	_brl_blitz_NullObjectError
_1323:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1325
	call	_brl_blitz_NullObjectError
_1325:
	fld	dword [ebp-60]
	fstp	dword [ebx+12]
	push	_1327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1329
	call	_brl_blitz_NullObjectError
_1329:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1332
	call	_brl_blitz_ArrayBoundsError
_1332:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1336
	call	_brl_blitz_NullObjectError
_1336:
	fld	dword [ebp-64]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1292:
	push	_1339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1341
	call	_brl_blitz_ArrayBoundsError
_1341:
	push	_39
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1342
	mov	eax,ebp
	push	eax
	push	_1388
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1345
	call	_brl_blitz_ArrayBoundsError
_1345:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-68]
	push	_1347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1349
	call	_brl_blitz_ArrayBoundsError
_1349:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-72]
	push	_1351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-28]
	cmp	ebx,dword [eax+20]
	jb	_1353
	call	_brl_blitz_ArrayBoundsError
_1353:
	mov	eax,dword [ebp-28]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-76]
	push	_1355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1357
	call	_brl_blitz_NullObjectError
_1357:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1360
	call	_brl_blitz_ArrayBoundsError
_1360:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1362
	call	_brl_blitz_NullObjectError
_1362:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1364
	call	_brl_blitz_NullObjectError
_1364:
	fld	dword [ebp-68]
	fstp	dword [ebx+8]
	push	_1366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1368
	call	_brl_blitz_NullObjectError
_1368:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1371
	call	_brl_blitz_ArrayBoundsError
_1371:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1373
	call	_brl_blitz_NullObjectError
_1373:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1375
	call	_brl_blitz_NullObjectError
_1375:
	fld	dword [ebp-72]
	fstp	dword [ebx+12]
	push	_1377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1379
	call	_brl_blitz_NullObjectError
_1379:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1382
	call	_brl_blitz_ArrayBoundsError
_1382:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1384
	call	_brl_blitz_NullObjectError
_1384:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1386
	call	_brl_blitz_NullObjectError
_1386:
	fld	dword [ebp-76]
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_1342:
	call	dword [_bbOnDebugLeaveScope]
_27:
	push	dword [ebp-16]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_29
_28:
	call	dword [_bbOnDebugLeaveScope]
_1061:
	mov	ebx,0
	jmp	_398
_398:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_MaterialList_SaveToFile:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_1457
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_stream_WriteStream
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_40
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1407
	call	_brl_blitz_NullObjectError
_1407:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	edi,eax
	jmp	_1408
_43:
	mov	eax,ebp
	push	eax
	push	_1455
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_45
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1414
	call	_brl_blitz_NullObjectError
_1414:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1417
	call	_brl_blitz_ArrayBoundsError
_1417:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1419
	call	_brl_blitz_NullObjectError
_1419:
	push	dword [ebx+8]
	push	_46
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_47
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_48
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1424
	call	_brl_blitz_NullObjectError
_1424:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1427
	call	_brl_blitz_ArrayBoundsError
_1427:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1429
	call	_brl_blitz_NullObjectError
_1429:
	push	dword [ebx+28]
	call	_brl_filesystem_StripDir
	add	esp,4
	push	eax
	push	_49
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1432
	call	_brl_blitz_NullObjectError
_1432:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1435
	call	_brl_blitz_ArrayBoundsError
_1435:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1437
	call	_brl_blitz_NullObjectError
_1437:
	push	dword [ebx+40]
	call	_brl_filesystem_StripDir
	add	esp,4
	push	eax
	push	_50
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1440
	call	_brl_blitz_NullObjectError
_1440:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1443
	call	_brl_blitz_ArrayBoundsError
_1443:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1445
	call	_brl_blitz_NullObjectError
_1445:
	push	dword [ebx+32]
	call	_brl_filesystem_StripDir
	add	esp,4
	push	eax
	push	_51
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_52
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_53
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_54
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_55
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_56
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_57
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_58
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_59
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_1454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_41:
	add	dword [ebp-16],1
_1408:
	cmp	dword [ebp-16],edi
	jle	_43
_42:
	push	_1456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_CloseStream
	add	esp,4
	mov	ebx,0
	jmp	_402
_402:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_1507
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TAGFX_Wavefront_obj
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_25
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	push	1000
	push	_1462
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+28],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	eax,ebp
	push	eax
	push	_1506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1468
	call	_brl_blitz_NullObjectError
_1468:
	mov	esi,dword [ebx+28]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_1471
	call	_brl_blitz_ArrayBoundsError
_1471:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_object
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1476
	push	eax
	call	_bbGCFree
	add	esp,4
_1476:
	mov	dword [esi+24],ebx
	push	_1477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1479
	call	_brl_blitz_NullObjectError
_1479:
	mov	esi,dword [ebx+28]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_1482
	call	_brl_blitz_ArrayBoundsError
_1482:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1484
	call	_brl_blitz_NullObjectError
_1484:
	mov	ebx,_61
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1489
	push	eax
	call	_bbGCFree
	add	esp,4
_1489:
	mov	dword [esi+8],ebx
	push	_1490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1492
	call	_brl_blitz_NullObjectError
_1492:
	push	_bb_TAGFX_MaterialList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_1497
	push	eax
	call	_bbGCFree
	add	esp,4
_1497:
	mov	dword [esi+32],ebx
	push	_1498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1500
	call	_brl_blitz_NullObjectError
_1500:
	mov	dword [ebx+24],1
	push	_1502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1504
	call	_brl_blitz_NullObjectError
_1504:
	mov	dword [ebx+8],1
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_405
_405:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_408:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1510
	push	eax
	call	_bbGCFree
	add	esp,4
_1510:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1512
	push	eax
	call	_bbGCFree
	add	esp,4
_1512:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1514
	push	eax
	call	_bbGCFree
	add	esp,4
_1514:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1516
	push	eax
	call	_bbGCFree
	add	esp,4
_1516:
	mov	eax,0
	jmp	_1508
_1508:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_LoadFromFile:
	push	ebp
	mov	ebp,esp
	sub	esp,104
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbEmptyArray
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	fldz
	fstp	dword [ebp-36]
	fldz
	fstp	dword [ebp-40]
	fldz
	fstp	dword [ebp-44]
	fldz
	fstp	dword [ebp-48]
	fldz
	fstp	dword [ebp-52]
	fldz
	fstp	dword [ebp-56]
	mov	dword [ebp-60],_bbEmptyArray
	mov	dword [ebp-64],_bbEmptyArray
	mov	dword [ebp-68],_bbEmptyArray
	mov	dword [ebp-72],0
	mov	dword [ebp-76],0
	mov	dword [ebp-80],0
	mov	dword [ebp-84],0
	mov	dword [ebp-88],0
	mov	dword [ebp-92],0
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	mov	dword [ebp-104],0
	mov	eax,ebp
	push	eax
	push	_1822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1
	push	dword [ebp-8]
	call	_brl_stream_OpenStream
	add	esp,12
	mov	dword [ebp-12],eax
	push	_1519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_1522
	mov	eax,ebp
	push	eax
	push	_1805
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1525
	call	_brl_blitz_NullObjectError
_1525:
	mov	dword [ebx+12],1
	push	_1527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1529
	call	_brl_blitz_NullObjectError
_1529:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-16],eax
	push	_1530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_62
_64:
	mov	eax,ebp
	push	eax
	push	_1803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_ReadLine
	add	esp,4
	mov	dword [ebp-20],eax
	push	_1533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_30
	push	dword [ebp-20]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-24],eax
	push	_1535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1537
	call	_brl_blitz_ArrayBoundsError
_1537:
	push	_65
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1538
	mov	eax,ebp
	push	eax
	push	_1576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1541
	call	_brl_blitz_NullObjectError
_1541:
	mov	dword [ebx+8],0
	push	_1543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1545
	call	_brl_blitz_NullObjectError
_1545:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-16],eax
	push	_1546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1548
	call	_brl_blitz_NullObjectError
_1548:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1551
	call	_brl_blitz_ArrayBoundsError
_1551:
	shl	ebx,2
	add	esi,ebx
	push	_bb_TAGFX_object
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1556
	push	eax
	call	_bbGCFree
	add	esp,4
_1556:
	mov	dword [esi+24],ebx
	push	_1557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1559
	call	_brl_blitz_NullObjectError
_1559:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1562
	call	_brl_blitz_ArrayBoundsError
_1562:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1564
	call	_brl_blitz_NullObjectError
_1564:
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1567
	call	_brl_blitz_ArrayBoundsError
_1567:
	mov	eax,dword [ebp-24]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1571
	push	eax
	call	_bbGCFree
	add	esp,4
_1571:
	mov	dword [esi+8],ebx
	push	_1572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1574
	call	_brl_blitz_NullObjectError
_1574:
	add	dword [ebx+24],1
	call	dword [_bbOnDebugLeaveScope]
_1538:
	push	_1577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1579
	call	_brl_blitz_ArrayBoundsError
_1579:
	push	_66
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1580
	mov	eax,ebp
	push	eax
	push	_1591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1583
	call	_brl_blitz_NullObjectError
_1583:
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1586
	call	_brl_blitz_ArrayBoundsError
_1586:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	push	_67
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1590
	push	eax
	call	_bbGCFree
	add	esp,4
_1590:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_1580:
	push	_1592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1594
	call	_brl_blitz_ArrayBoundsError
_1594:
	push	_68
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1595
	mov	eax,ebp
	push	eax
	push	_1618
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1598
	call	_brl_blitz_ArrayBoundsError
_1598:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-28]
	push	_1600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1602
	call	_brl_blitz_ArrayBoundsError
_1602:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-32]
	push	_1604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1606
	call	_brl_blitz_ArrayBoundsError
_1606:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-36]
	push	_1608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1610
	call	_brl_blitz_NullObjectError
_1610:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1613
	call	_brl_blitz_ArrayBoundsError
_1613:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1615
	call	_brl_blitz_NullObjectError
_1615:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1617
	call	_brl_blitz_NullObjectError
_1617:
	push	dword [ebp-36]
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_1595:
	push	_1619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1621
	call	_brl_blitz_ArrayBoundsError
_1621:
	push	_69
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1622
	mov	eax,ebp
	push	eax
	push	_1645
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1625
	call	_brl_blitz_ArrayBoundsError
_1625:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-40]
	push	_1627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1629
	call	_brl_blitz_ArrayBoundsError
_1629:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-44]
	push	_1631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1633
	call	_brl_blitz_ArrayBoundsError
_1633:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-48]
	push	_1635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1637
	call	_brl_blitz_NullObjectError
_1637:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1640
	call	_brl_blitz_ArrayBoundsError
_1640:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1642
	call	_brl_blitz_NullObjectError
_1642:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1644
	call	_brl_blitz_NullObjectError
_1644:
	push	dword [ebp-48]
	push	dword [ebp-44]
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_1622:
	push	_1646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1648
	call	_brl_blitz_ArrayBoundsError
_1648:
	push	_70
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1649
	mov	eax,ebp
	push	eax
	push	_1668
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1652
	call	_brl_blitz_ArrayBoundsError
_1652:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-52]
	push	_1654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1656
	call	_brl_blitz_ArrayBoundsError
_1656:
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringToFloat
	add	esp,4
	fstp	dword [ebp-56]
	push	_1658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1660
	call	_brl_blitz_NullObjectError
_1660:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1663
	call	_brl_blitz_ArrayBoundsError
_1663:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1665
	call	_brl_blitz_NullObjectError
_1665:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1667
	call	_brl_blitz_NullObjectError
_1667:
	push	dword [ebp-56]
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_1649:
	push	_1669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1671
	call	_brl_blitz_ArrayBoundsError
_1671:
	push	_71
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1672
	mov	eax,ebp
	push	eax
	push	_1683
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1675
	call	_brl_blitz_NullObjectError
_1675:
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1678
	call	_brl_blitz_ArrayBoundsError
_1678:
	mov	eax,dword [ebp-24]
	mov	ebx,dword [eax+ebx*4+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1682
	push	eax
	call	_bbGCFree
	add	esp,4
_1682:
	mov	dword [esi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
_1672:
	push	_1684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1686
	call	_brl_blitz_ArrayBoundsError
_1686:
	push	_72
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1687
	mov	eax,ebp
	push	eax
	push	_1799
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1690
	call	_brl_blitz_ArrayBoundsError
_1690:
	push	_73
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-60],eax
	push	_1692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1694
	call	_brl_blitz_ArrayBoundsError
_1694:
	push	_73
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-64],eax
	push	_1696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,3
	mov	eax,dword [ebp-24]
	cmp	ebx,dword [eax+20]
	jb	_1698
	call	_brl_blitz_ArrayBoundsError
_1698:
	push	_73
	mov	eax,dword [ebp-24]
	push	dword [eax+ebx*4+24]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-68],eax
	push	_1700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	mov	eax,dword [eax+20]
	cmp	eax,2
	setle	al
	movzx	eax,al
	cmp	eax,0
	jne	_1701
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+20]
	cmp	eax,2
	setle	al
	movzx	eax,al
_1701:
	cmp	eax,0
	jne	_1703
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	cmp	eax,2
	setle	al
	movzx	eax,al
_1703:
	cmp	eax,0
	je	_1705
	mov	eax,ebp
	push	eax
	push	_1707
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_74
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1705:
	push	_1708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],-1
	push	_1710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],-1
	push	_1712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],-1
	push	_1714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],-1
	push	_1716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],-1
	push	_1718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],-1
	push	_1720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],-1
	push	_1722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],-1
	push	_1724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],-1
	push	_1726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],1
	jne	_1727
	mov	eax,ebp
	push	eax
	push	_1737
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1730
	call	_brl_blitz_ArrayBoundsError
_1730:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-72],eax
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1733
	call	_brl_blitz_ArrayBoundsError
_1733:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_1734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1736
	call	_brl_blitz_ArrayBoundsError
_1736:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-80],eax
	call	dword [_bbOnDebugLeaveScope]
_1727:
	push	_1738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],2
	jne	_1739
	mov	eax,ebp
	push	eax
	push	_1758
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1742
	call	_brl_blitz_ArrayBoundsError
_1742:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-72],eax
	push	_1743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1745
	call	_brl_blitz_ArrayBoundsError
_1745:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_1746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1748
	call	_brl_blitz_ArrayBoundsError
_1748:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-80],eax
	push	_1749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1751
	call	_brl_blitz_ArrayBoundsError
_1751:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-84],eax
	push	_1752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1754
	call	_brl_blitz_ArrayBoundsError
_1754:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-88],eax
	push	_1755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1757
	call	_brl_blitz_ArrayBoundsError
_1757:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-92],eax
	call	dword [_bbOnDebugLeaveScope]
_1739:
	push	_1759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-60]
	cmp	dword [eax+20],3
	jne	_1760
	mov	eax,ebp
	push	eax
	push	_1788
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1763
	call	_brl_blitz_ArrayBoundsError
_1763:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-72],eax
	push	_1764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1766
	call	_brl_blitz_ArrayBoundsError
_1766:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_1767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1769
	call	_brl_blitz_ArrayBoundsError
_1769:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-80],eax
	push	_1770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1772
	call	_brl_blitz_ArrayBoundsError
_1772:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-84],eax
	push	_1773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1775
	call	_brl_blitz_ArrayBoundsError
_1775:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-88],eax
	push	_1776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1778
	call	_brl_blitz_ArrayBoundsError
_1778:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-92],eax
	push	_1779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-60]
	cmp	ebx,dword [eax+20]
	jb	_1781
	call	_brl_blitz_ArrayBoundsError
_1781:
	mov	eax,dword [ebp-60]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-96],eax
	push	_1782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-64]
	cmp	ebx,dword [eax+20]
	jb	_1784
	call	_brl_blitz_ArrayBoundsError
_1784:
	mov	eax,dword [ebp-64]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-100],eax
	push	_1785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,2
	mov	eax,dword [ebp-68]
	cmp	ebx,dword [eax+20]
	jb	_1787
	call	_brl_blitz_ArrayBoundsError
_1787:
	mov	eax,dword [ebp-68]
	push	dword [eax+ebx*4+24]
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-104],eax
	call	dword [_bbOnDebugLeaveScope]
_1760:
	push	_1789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1791
	call	_brl_blitz_NullObjectError
_1791:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1794
	call	_brl_blitz_ArrayBoundsError
_1794:
	mov	esi,dword [esi+ebx*4+24]
	cmp	esi,_bbNullObject
	jne	_1796
	call	_brl_blitz_NullObjectError
_1796:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1798
	call	_brl_blitz_NullObjectError
_1798:
	push	dword [ebx+20]
	push	dword [ebp-92]
	push	dword [ebp-88]
	push	dword [ebp-84]
	push	dword [ebp-104]
	push	dword [ebp-100]
	push	dword [ebp-96]
	push	dword [ebp-80]
	push	dword [ebp-76]
	push	dword [ebp-72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,44
	call	dword [_bbOnDebugLeaveScope]
_1687:
	call	dword [_bbOnDebugLeaveScope]
_62:
	push	dword [ebp-12]
	call	_brl_stream_Eof
	add	esp,4
	cmp	eax,0
	je	_64
_63:
	push	_1804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_CloseStream
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1522:
	push	_1806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1808
	call	_brl_blitz_NullObjectError
_1808:
	cmp	dword [ebx+8],0
	jne	_1809
	mov	eax,ebp
	push	eax
	push	_1814
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1812
	call	_brl_blitz_NullObjectError
_1812:
	sub	dword [ebx+24],1
	call	dword [_bbOnDebugLeaveScope]
_1809:
	push	_1815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1817
	call	_brl_blitz_NullObjectError
_1817:
	mov	esi,dword [ebx+32]
	cmp	esi,_bbNullObject
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1821
	call	_brl_blitz_NullObjectError
_1821:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,8
	mov	ebx,0
	jmp	_412
_412:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_Dump:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],0
	mov	eax,ebp
	push	eax
	push	_2079
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1826
	call	_brl_blitz_NullObjectError
_1826:
	cmp	dword [ebx+12],0
	je	_1827
	mov	eax,ebp
	push	eax
	push	_2078
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1831
	call	_brl_blitz_NullObjectError
_1831:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	jmp	_1832
_77:
	mov	eax,ebp
	push	eax
	push	_2076
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1836
	call	_brl_blitz_NullObjectError
_1836:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1839
	call	_brl_blitz_ArrayBoundsError
_1839:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1841
	call	_brl_blitz_NullObjectError
_1841:
	push	dword [ebx+8]
	push	_78
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_1842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1845
	call	_brl_blitz_NullObjectError
_1845:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1848
	call	_brl_blitz_ArrayBoundsError
_1848:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1850
	call	_brl_blitz_NullObjectError
_1850:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1852
	call	_brl_blitz_NullObjectError
_1852:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	dword [ebp-48],eax
	jmp	_1853
_81:
	mov	eax,ebp
	push	eax
	push	_1898
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1857
	call	_brl_blitz_NullObjectError
_1857:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1860
	call	_brl_blitz_ArrayBoundsError
_1860:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1862
	call	_brl_blitz_NullObjectError
_1862:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1864
	call	_brl_blitz_NullObjectError
_1864:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_1867
	call	_brl_blitz_ArrayBoundsError
_1867:
	mov	eax,dword [esi+ebx*4+24]
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	jne	_1869
	call	_brl_blitz_NullObjectError
_1869:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1871
	call	_brl_blitz_NullObjectError
_1871:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1874
	call	_brl_blitz_ArrayBoundsError
_1874:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1876
	call	_brl_blitz_NullObjectError
_1876:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1878
	call	_brl_blitz_NullObjectError
_1878:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_1881
	call	_brl_blitz_ArrayBoundsError
_1881:
	mov	edi,dword [esi+ebx*4+24]
	cmp	edi,_bbNullObject
	jne	_1883
	call	_brl_blitz_NullObjectError
_1883:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1885
	call	_brl_blitz_NullObjectError
_1885:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1888
	call	_brl_blitz_ArrayBoundsError
_1888:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1890
	call	_brl_blitz_NullObjectError
_1890:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1892
	call	_brl_blitz_NullObjectError
_1892:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_1895
	call	_brl_blitz_ArrayBoundsError
_1895:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1897
	call	_brl_blitz_NullObjectError
_1897:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	mov	eax,dword [ebp-32]
	push	dword [eax+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_83
	push	dword [ebp-12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_82
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_79:
	add	dword [ebp-12],1
_1853:
	mov	eax,dword [ebp-48]
	cmp	dword [ebp-12],eax
	jle	_81
_80:
	push	_1899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1902
	call	_brl_blitz_NullObjectError
_1902:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1905
	call	_brl_blitz_ArrayBoundsError
_1905:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1907
	call	_brl_blitz_NullObjectError
_1907:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1909
	call	_brl_blitz_NullObjectError
_1909:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	dword [ebp-44],eax
	jmp	_1910
_87:
	mov	eax,ebp
	push	eax
	push	_1955
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1914
	call	_brl_blitz_NullObjectError
_1914:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1917
	call	_brl_blitz_ArrayBoundsError
_1917:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1919
	call	_brl_blitz_NullObjectError
_1919:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1921
	call	_brl_blitz_NullObjectError
_1921:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1924
	call	_brl_blitz_ArrayBoundsError
_1924:
	mov	eax,dword [esi+ebx*4+24]
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	jne	_1926
	call	_brl_blitz_NullObjectError
_1926:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1928
	call	_brl_blitz_NullObjectError
_1928:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1931
	call	_brl_blitz_ArrayBoundsError
_1931:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1933
	call	_brl_blitz_NullObjectError
_1933:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1935
	call	_brl_blitz_NullObjectError
_1935:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1938
	call	_brl_blitz_ArrayBoundsError
_1938:
	mov	edi,dword [esi+ebx*4+24]
	cmp	edi,_bbNullObject
	jne	_1940
	call	_brl_blitz_NullObjectError
_1940:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1942
	call	_brl_blitz_NullObjectError
_1942:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1945
	call	_brl_blitz_ArrayBoundsError
_1945:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1947
	call	_brl_blitz_NullObjectError
_1947:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1949
	call	_brl_blitz_NullObjectError
_1949:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_1952
	call	_brl_blitz_ArrayBoundsError
_1952:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1954
	call	_brl_blitz_NullObjectError
_1954:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	mov	eax,dword [ebp-36]
	push	dword [eax+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_88
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_85:
	add	dword [ebp-16],1
_1910:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-16],eax
	jle	_87
_86:
	push	_1956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1959
	call	_brl_blitz_NullObjectError
_1959:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1962
	call	_brl_blitz_ArrayBoundsError
_1962:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1964
	call	_brl_blitz_NullObjectError
_1964:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1966
	call	_brl_blitz_NullObjectError
_1966:
	mov	eax,dword [ebx+12]
	sub	eax,1
	mov	dword [ebp-40],eax
	jmp	_1967
_91:
	mov	eax,ebp
	push	eax
	push	_1998
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1971
	call	_brl_blitz_NullObjectError
_1971:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1974
	call	_brl_blitz_ArrayBoundsError
_1974:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1976
	call	_brl_blitz_NullObjectError
_1976:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1978
	call	_brl_blitz_NullObjectError
_1978:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1981
	call	_brl_blitz_ArrayBoundsError
_1981:
	mov	edi,dword [esi+ebx*4+24]
	cmp	edi,_bbNullObject
	jne	_1983
	call	_brl_blitz_NullObjectError
_1983:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1985
	call	_brl_blitz_NullObjectError
_1985:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_1988
	call	_brl_blitz_ArrayBoundsError
_1988:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1990
	call	_brl_blitz_NullObjectError
_1990:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1992
	call	_brl_blitz_NullObjectError
_1992:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_1995
	call	_brl_blitz_ArrayBoundsError
_1995:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_1997
	call	_brl_blitz_NullObjectError
_1997:
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_92
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_89:
	add	dword [ebp-20],1
_1967:
	mov	eax,dword [ebp-40]
	cmp	dword [ebp-20],eax
	jle	_91
_90:
	push	_1999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2002
	call	_brl_blitz_NullObjectError
_2002:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2005
	call	_brl_blitz_ArrayBoundsError
_2005:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2007
	call	_brl_blitz_NullObjectError
_2007:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	edi,eax
	jmp	_2008
_95:
	mov	eax,ebp
	push	eax
	push	_2075
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2012
	call	_brl_blitz_NullObjectError
_2012:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2015
	call	_brl_blitz_ArrayBoundsError
_2015:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2017
	call	_brl_blitz_NullObjectError
_2017:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2020
	call	_brl_blitz_ArrayBoundsError
_2020:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2022
	call	_brl_blitz_NullObjectError
_2022:
	push	dword [ebx+20]
	push	_97
	push	dword [ebp-24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_96
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_2023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	jmp	_2025
_100:
	mov	eax,ebp
	push	eax
	push	_2074
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2028
	call	_brl_blitz_NullObjectError
_2028:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2031
	call	_brl_blitz_ArrayBoundsError
_2031:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2033
	call	_brl_blitz_NullObjectError
_2033:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2036
	call	_brl_blitz_ArrayBoundsError
_2036:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2038
	call	_brl_blitz_NullObjectError
_2038:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_2041
	call	_brl_blitz_ArrayBoundsError
_2041:
	push	dword [esi+ebx*4+24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_102
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_101
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_2042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2044
	call	_brl_blitz_NullObjectError
_2044:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2047
	call	_brl_blitz_ArrayBoundsError
_2047:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2049
	call	_brl_blitz_NullObjectError
_2049:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2052
	call	_brl_blitz_ArrayBoundsError
_2052:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2054
	call	_brl_blitz_NullObjectError
_2054:
	mov	esi,dword [ebx+12]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_2057
	call	_brl_blitz_ArrayBoundsError
_2057:
	push	dword [esi+ebx*4+24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_102
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_103
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_2058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2060
	call	_brl_blitz_NullObjectError
_2060:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_2063
	call	_brl_blitz_ArrayBoundsError
_2063:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2065
	call	_brl_blitz_NullObjectError
_2065:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2068
	call	_brl_blitz_ArrayBoundsError
_2068:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2070
	call	_brl_blitz_NullObjectError
_2070:
	mov	esi,dword [ebx+16]
	mov	ebx,dword [ebp-28]
	cmp	ebx,dword [esi+20]
	jb	_2073
	call	_brl_blitz_ArrayBoundsError
_2073:
	push	dword [esi+ebx*4+24]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_102
	push	dword [ebp-28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_104
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_98:
	add	dword [ebp-28],1
_2025:
	cmp	dword [ebp-28],2
	jle	_100
_99:
	call	dword [_bbOnDebugLeaveScope]
_93:
	add	dword [ebp-24],1
_2008:
	cmp	dword [ebp-24],edi
	jle	_95
_94:
	call	dword [_bbOnDebugLeaveScope]
_75:
	add	dword [ebp-8],1
_1832:
	mov	eax,dword [ebp-52]
	cmp	dword [ebp-8],eax
	jle	_77
_76:
	call	dword [_bbOnDebugLeaveScope]
_1827:
	mov	ebx,0
	jmp	_415
_415:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_SaveToFile:
	push	ebp
	mov	ebp,esp
	sub	esp,64
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],0
	mov	eax,ebp
	push	eax
	push	_2443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2080
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	push	_2082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_2084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_stream_WriteStream
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2088
	call	_brl_blitz_NullObjectError
_2088:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-64],eax
	jmp	_2089
_107:
	mov	eax,ebp
	push	eax
	push	_2441
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2091
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2093
	call	_brl_blitz_NullObjectError
_2093:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2096
	call	_brl_blitz_ArrayBoundsError
_2096:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2098
	call	_brl_blitz_NullObjectError
_2098:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	dword [ebp-60],eax
	jmp	_2099
_110:
	mov	eax,ebp
	push	eax
	push	_2434
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_2103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	push	_2105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_2107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_2109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_2111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	push	_2113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_2115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	push	_2117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	push	_2119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_2120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-28],eax
	push	_2121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_2122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2124
	call	_brl_blitz_NullObjectError
_2124:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2127
	call	_brl_blitz_ArrayBoundsError
_2127:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2129
	call	_brl_blitz_NullObjectError
_2129:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2132
	call	_brl_blitz_ArrayBoundsError
_2132:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2134
	call	_brl_blitz_NullObjectError
_2134:
	mov	esi,dword [ebx+8]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2137
	call	_brl_blitz_ArrayBoundsError
_2137:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2140
	call	_brl_blitz_NullObjectError
_2140:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2143
	call	_brl_blitz_ArrayBoundsError
_2143:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2145
	call	_brl_blitz_NullObjectError
_2145:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2148
	call	_brl_blitz_ArrayBoundsError
_2148:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2150
	call	_brl_blitz_NullObjectError
_2150:
	mov	esi,dword [ebx+8]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2153
	call	_brl_blitz_ArrayBoundsError
_2153:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2156
	call	_brl_blitz_NullObjectError
_2156:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2159
	call	_brl_blitz_ArrayBoundsError
_2159:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2161
	call	_brl_blitz_NullObjectError
_2161:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2164
	call	_brl_blitz_ArrayBoundsError
_2164:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2166
	call	_brl_blitz_NullObjectError
_2166:
	mov	esi,dword [ebx+8]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2169
	call	_brl_blitz_ArrayBoundsError
_2169:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-56],eax
	push	_2170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2172
	call	_brl_blitz_NullObjectError
_2172:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2175
	call	_brl_blitz_ArrayBoundsError
_2175:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2177
	call	_brl_blitz_NullObjectError
_2177:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2179
	call	_brl_blitz_NullObjectError
_2179:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2182
	call	_brl_blitz_NullObjectError
_2182:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2185
	call	_brl_blitz_ArrayBoundsError
_2185:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2187
	call	_brl_blitz_NullObjectError
_2187:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2189
	call	_brl_blitz_NullObjectError
_2189:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_2190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2192
	call	_brl_blitz_NullObjectError
_2192:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2195
	call	_brl_blitz_ArrayBoundsError
_2195:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2197
	call	_brl_blitz_NullObjectError
_2197:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2199
	call	_brl_blitz_NullObjectError
_2199:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_2200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_2203
	call	_brl_blitz_NullObjectError
_2203:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_2205
	call	_brl_blitz_NullObjectError
_2205:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_2207
	call	_brl_blitz_NullObjectError
_2207:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_111
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-28]
	cmp	edi,_bbNullObject
	jne	_2210
	call	_brl_blitz_NullObjectError
_2210:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_2212
	call	_brl_blitz_NullObjectError
_2212:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2214
	call	_brl_blitz_NullObjectError
_2214:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_112
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_2217
	call	_brl_blitz_NullObjectError
_2217:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2219
	call	_brl_blitz_NullObjectError
_2219:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2221
	call	_brl_blitz_NullObjectError
_2221:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_113
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2224
	call	_brl_blitz_NullObjectError
_2224:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2227
	call	_brl_blitz_ArrayBoundsError
_2227:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2229
	call	_brl_blitz_NullObjectError
_2229:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2232
	call	_brl_blitz_ArrayBoundsError
_2232:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2234
	call	_brl_blitz_NullObjectError
_2234:
	mov	esi,dword [ebx+12]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2237
	call	_brl_blitz_ArrayBoundsError
_2237:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2240
	call	_brl_blitz_NullObjectError
_2240:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2243
	call	_brl_blitz_ArrayBoundsError
_2243:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2245
	call	_brl_blitz_NullObjectError
_2245:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2248
	call	_brl_blitz_ArrayBoundsError
_2248:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2250
	call	_brl_blitz_NullObjectError
_2250:
	mov	esi,dword [ebx+12]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2253
	call	_brl_blitz_ArrayBoundsError
_2253:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2256
	call	_brl_blitz_NullObjectError
_2256:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2259
	call	_brl_blitz_ArrayBoundsError
_2259:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2261
	call	_brl_blitz_NullObjectError
_2261:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2264
	call	_brl_blitz_ArrayBoundsError
_2264:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2266
	call	_brl_blitz_NullObjectError
_2266:
	mov	esi,dword [ebx+12]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2269
	call	_brl_blitz_ArrayBoundsError
_2269:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-56],eax
	push	_2270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2272
	call	_brl_blitz_NullObjectError
_2272:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2275
	call	_brl_blitz_ArrayBoundsError
_2275:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2277
	call	_brl_blitz_NullObjectError
_2277:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2279
	call	_brl_blitz_NullObjectError
_2279:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2282
	call	_brl_blitz_NullObjectError
_2282:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2285
	call	_brl_blitz_ArrayBoundsError
_2285:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2287
	call	_brl_blitz_NullObjectError
_2287:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2289
	call	_brl_blitz_NullObjectError
_2289:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_2290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2292
	call	_brl_blitz_NullObjectError
_2292:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2295
	call	_brl_blitz_ArrayBoundsError
_2295:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2297
	call	_brl_blitz_NullObjectError
_2297:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2299
	call	_brl_blitz_NullObjectError
_2299:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_2300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_2302
	call	_brl_blitz_NullObjectError
_2302:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_2304
	call	_brl_blitz_NullObjectError
_2304:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_2306
	call	_brl_blitz_NullObjectError
_2306:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_114
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-28]
	cmp	edi,_bbNullObject
	jne	_2309
	call	_brl_blitz_NullObjectError
_2309:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_2311
	call	_brl_blitz_NullObjectError
_2311:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2313
	call	_brl_blitz_NullObjectError
_2313:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_115
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_2316
	call	_brl_blitz_NullObjectError
_2316:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2318
	call	_brl_blitz_NullObjectError
_2318:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2320
	call	_brl_blitz_NullObjectError
_2320:
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_116
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_117
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_118
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_119
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_2325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_2326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-44],eax
	push	_2327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2329
	call	_brl_blitz_NullObjectError
_2329:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2332
	call	_brl_blitz_ArrayBoundsError
_2332:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2334
	call	_brl_blitz_NullObjectError
_2334:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2337
	call	_brl_blitz_ArrayBoundsError
_2337:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2339
	call	_brl_blitz_NullObjectError
_2339:
	mov	esi,dword [ebx+16]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2342
	call	_brl_blitz_ArrayBoundsError
_2342:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2345
	call	_brl_blitz_NullObjectError
_2345:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2348
	call	_brl_blitz_ArrayBoundsError
_2348:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2350
	call	_brl_blitz_NullObjectError
_2350:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2353
	call	_brl_blitz_ArrayBoundsError
_2353:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2355
	call	_brl_blitz_NullObjectError
_2355:
	mov	esi,dword [ebx+16]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2358
	call	_brl_blitz_ArrayBoundsError
_2358:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2361
	call	_brl_blitz_NullObjectError
_2361:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2364
	call	_brl_blitz_ArrayBoundsError
_2364:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2366
	call	_brl_blitz_NullObjectError
_2366:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2369
	call	_brl_blitz_ArrayBoundsError
_2369:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2371
	call	_brl_blitz_NullObjectError
_2371:
	mov	esi,dword [ebx+16]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2374
	call	_brl_blitz_ArrayBoundsError
_2374:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-56],eax
	push	_2375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2377
	call	_brl_blitz_NullObjectError
_2377:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2380
	call	_brl_blitz_ArrayBoundsError
_2380:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2382
	call	_brl_blitz_NullObjectError
_2382:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2384
	call	_brl_blitz_NullObjectError
_2384:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_2385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2387
	call	_brl_blitz_NullObjectError
_2387:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2390
	call	_brl_blitz_ArrayBoundsError
_2390:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2392
	call	_brl_blitz_NullObjectError
_2392:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2394
	call	_brl_blitz_NullObjectError
_2394:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-40],eax
	push	_2395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2397
	call	_brl_blitz_NullObjectError
_2397:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2400
	call	_brl_blitz_ArrayBoundsError
_2400:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2402
	call	_brl_blitz_NullObjectError
_2402:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2404
	call	_brl_blitz_NullObjectError
_2404:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-44],eax
	push	_2405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2407
	call	_brl_blitz_NullObjectError
_2407:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_2409
	call	_brl_blitz_NullObjectError
_2409:
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_120
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2412
	call	_brl_blitz_NullObjectError
_2412:
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_2414
	call	_brl_blitz_NullObjectError
_2414:
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_121
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2417
	call	_brl_blitz_NullObjectError
_2417:
	mov	esi,dword [ebp-44]
	cmp	esi,_bbNullObject
	jne	_2419
	call	_brl_blitz_NullObjectError
_2419:
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_84
	push	dword [ebx+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_122
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2422
	call	_brl_blitz_NullObjectError
_2422:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2425
	call	_brl_blitz_ArrayBoundsError
_2425:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2427
	call	_brl_blitz_NullObjectError
_2427:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_2430
	call	_brl_blitz_ArrayBoundsError
_2430:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2432
	call	_brl_blitz_NullObjectError
_2432:
	push	dword [ebx+20]
	push	_123
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-20]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_108:
	add	dword [ebp-16],1
_2099:
	mov	eax,dword [ebp-60]
	cmp	dword [ebp-16],eax
	jle	_110
_109:
	call	dword [_bbOnDebugLeaveScope]
_105:
	add	dword [ebp-12],1
_2089:
	mov	eax,dword [ebp-64]
	cmp	dword [ebp-12],eax
	jle	_107
_106:
	push	_2442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_brl_stream_CloseStream
	add	esp,4
	mov	ebx,0
	jmp	_419
_419:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TAGFX_Wavefront_obj_SaveToJava:
	push	ebp
	mov	ebp,esp
	sub	esp,132
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],0
	mov	dword [ebp-48],0
	mov	dword [ebp-52],0
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],0
	mov	dword [ebp-72],0
	mov	dword [ebp-76],0
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],0
	mov	dword [ebp-96],0
	mov	dword [ebp-100],0
	mov	dword [ebp-104],0
	mov	dword [ebp-108],0
	mov	dword [ebp-112],0
	mov	eax,ebp
	push	eax
	push	_2933
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_2448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_2450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	push	_2452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_125
	push	dword [ebp-12]
	push	_124
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_stream_WriteStream
	add	esp,4
	mov	dword [ebp-28],eax
	push	_2454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_126
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_127
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_128
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_129
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_130
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_132
	push	dword [ebp-12]
	push	_131
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_133
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2468
	call	_brl_blitz_NullObjectError
_2468:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-132],eax
	jmp	_2469
_136:
	mov	eax,ebp
	push	eax
	push	_2596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2473
	call	_brl_blitz_NullObjectError
_2473:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2476
	call	_brl_blitz_ArrayBoundsError
_2476:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2478
	call	_brl_blitz_NullObjectError
_2478:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	dword [ebp-116],eax
	jmp	_2479
_139:
	mov	eax,ebp
	push	eax
	push	_2595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_2483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_2485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_2487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_2489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_2491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],0
	push	_2493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_2494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_2495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_2496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2498
	call	_brl_blitz_NullObjectError
_2498:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2501
	call	_brl_blitz_ArrayBoundsError
_2501:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2503
	call	_brl_blitz_NullObjectError
_2503:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2506
	call	_brl_blitz_ArrayBoundsError
_2506:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2508
	call	_brl_blitz_NullObjectError
_2508:
	mov	esi,dword [ebx+8]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2511
	call	_brl_blitz_ArrayBoundsError
_2511:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-44],eax
	push	_2512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2514
	call	_brl_blitz_NullObjectError
_2514:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2517
	call	_brl_blitz_ArrayBoundsError
_2517:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2519
	call	_brl_blitz_NullObjectError
_2519:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2522
	call	_brl_blitz_ArrayBoundsError
_2522:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2524
	call	_brl_blitz_NullObjectError
_2524:
	mov	esi,dword [ebx+8]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2527
	call	_brl_blitz_ArrayBoundsError
_2527:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-48],eax
	push	_2528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2530
	call	_brl_blitz_NullObjectError
_2530:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2533
	call	_brl_blitz_ArrayBoundsError
_2533:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2535
	call	_brl_blitz_NullObjectError
_2535:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2538
	call	_brl_blitz_ArrayBoundsError
_2538:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2540
	call	_brl_blitz_NullObjectError
_2540:
	mov	esi,dword [ebx+8]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2543
	call	_brl_blitz_ArrayBoundsError
_2543:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-52],eax
	push	_2544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2546
	call	_brl_blitz_NullObjectError
_2546:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2549
	call	_brl_blitz_ArrayBoundsError
_2549:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2551
	call	_brl_blitz_NullObjectError
_2551:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2553
	call	_brl_blitz_NullObjectError
_2553:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_2554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2556
	call	_brl_blitz_NullObjectError
_2556:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2559
	call	_brl_blitz_ArrayBoundsError
_2559:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2561
	call	_brl_blitz_NullObjectError
_2561:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2563
	call	_brl_blitz_NullObjectError
_2563:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_2564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2566
	call	_brl_blitz_NullObjectError
_2566:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2569
	call	_brl_blitz_ArrayBoundsError
_2569:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2571
	call	_brl_blitz_NullObjectError
_2571:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2573
	call	_brl_blitz_NullObjectError
_2573:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-40],eax
	push	_2574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_2576
	call	_brl_blitz_NullObjectError
_2576:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2578
	call	_brl_blitz_NullObjectError
_2578:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2580
	call	_brl_blitz_NullObjectError
_2580:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-36]
	cmp	edi,_bbNullObject
	jne	_2583
	call	_brl_blitz_NullObjectError
_2583:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_2585
	call	_brl_blitz_NullObjectError
_2585:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2587
	call	_brl_blitz_NullObjectError
_2587:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-40]
	cmp	edi,_bbNullObject
	jne	_2590
	call	_brl_blitz_NullObjectError
_2590:
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_2592
	call	_brl_blitz_NullObjectError
_2592:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2594
	call	_brl_blitz_NullObjectError
_2594:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_137:
	add	dword [ebp-24],1
_2479:
	mov	eax,dword [ebp-116]
	cmp	dword [ebp-24],eax
	jle	_139
_138:
	call	dword [_bbOnDebugLeaveScope]
_134:
	add	dword [ebp-20],1
_2469:
	mov	eax,dword [ebp-132]
	cmp	dword [ebp-20],eax
	jle	_136
_135:
	push	_2597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_144
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2601
	call	_brl_blitz_NullObjectError
_2601:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-128],eax
	jmp	_2602
_147:
	mov	eax,ebp
	push	eax
	push	_2729
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2606
	call	_brl_blitz_NullObjectError
_2606:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2609
	call	_brl_blitz_ArrayBoundsError
_2609:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2611
	call	_brl_blitz_NullObjectError
_2611:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	dword [ebp-120],eax
	jmp	_2612
_150:
	mov	eax,ebp
	push	eax
	push	_2728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	push	_2616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	push	_2618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	push	_2620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_2622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],0
	push	_2624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],0
	push	_2626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-56],eax
	push	_2627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-60],eax
	push	_2628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector3
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-64],eax
	push	_2629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2631
	call	_brl_blitz_NullObjectError
_2631:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2634
	call	_brl_blitz_ArrayBoundsError
_2634:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2636
	call	_brl_blitz_NullObjectError
_2636:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2639
	call	_brl_blitz_ArrayBoundsError
_2639:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2641
	call	_brl_blitz_NullObjectError
_2641:
	mov	esi,dword [ebx+12]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2644
	call	_brl_blitz_ArrayBoundsError
_2644:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-68],eax
	push	_2645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2647
	call	_brl_blitz_NullObjectError
_2647:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2650
	call	_brl_blitz_ArrayBoundsError
_2650:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2652
	call	_brl_blitz_NullObjectError
_2652:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2655
	call	_brl_blitz_ArrayBoundsError
_2655:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2657
	call	_brl_blitz_NullObjectError
_2657:
	mov	esi,dword [ebx+12]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2660
	call	_brl_blitz_ArrayBoundsError
_2660:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-72],eax
	push	_2661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2663
	call	_brl_blitz_NullObjectError
_2663:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2666
	call	_brl_blitz_ArrayBoundsError
_2666:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2668
	call	_brl_blitz_NullObjectError
_2668:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2671
	call	_brl_blitz_ArrayBoundsError
_2671:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2673
	call	_brl_blitz_NullObjectError
_2673:
	mov	esi,dword [ebx+12]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2676
	call	_brl_blitz_ArrayBoundsError
_2676:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-76],eax
	push	_2677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2679
	call	_brl_blitz_NullObjectError
_2679:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2682
	call	_brl_blitz_ArrayBoundsError
_2682:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2684
	call	_brl_blitz_NullObjectError
_2684:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2686
	call	_brl_blitz_NullObjectError
_2686:
	push	dword [ebp-68]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-56],eax
	push	_2687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2689
	call	_brl_blitz_NullObjectError
_2689:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2692
	call	_brl_blitz_ArrayBoundsError
_2692:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2694
	call	_brl_blitz_NullObjectError
_2694:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2696
	call	_brl_blitz_NullObjectError
_2696:
	push	dword [ebp-72]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_2697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2699
	call	_brl_blitz_NullObjectError
_2699:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2702
	call	_brl_blitz_ArrayBoundsError
_2702:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2704
	call	_brl_blitz_NullObjectError
_2704:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2706
	call	_brl_blitz_NullObjectError
_2706:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_2707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-56]
	cmp	edi,_bbNullObject
	jne	_2709
	call	_brl_blitz_NullObjectError
_2709:
	mov	esi,dword [ebp-56]
	cmp	esi,_bbNullObject
	jne	_2711
	call	_brl_blitz_NullObjectError
_2711:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2713
	call	_brl_blitz_NullObjectError
_2713:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-60]
	cmp	edi,_bbNullObject
	jne	_2716
	call	_brl_blitz_NullObjectError
_2716:
	mov	esi,dword [ebp-60]
	cmp	esi,_bbNullObject
	jne	_2718
	call	_brl_blitz_NullObjectError
_2718:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2720
	call	_brl_blitz_NullObjectError
_2720:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-64]
	cmp	edi,_bbNullObject
	jne	_2723
	call	_brl_blitz_NullObjectError
_2723:
	mov	esi,dword [ebp-64]
	cmp	esi,_bbNullObject
	jne	_2725
	call	_brl_blitz_NullObjectError
_2725:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2727
	call	_brl_blitz_NullObjectError
_2727:
	push	_142
	push	dword [ebx+16]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [edi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_148:
	add	dword [ebp-24],1
_2612:
	mov	eax,dword [ebp-120]
	cmp	dword [ebp-24],eax
	jle	_150
_149:
	call	dword [_bbOnDebugLeaveScope]
_145:
	add	dword [ebp-20],1
_2602:
	mov	eax,dword [ebp-128]
	cmp	dword [ebp-20],eax
	jle	_147
_146:
	push	_2730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_151
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2734
	call	_brl_blitz_NullObjectError
_2734:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	dword [ebp-124],eax
	jmp	_2735
_154:
	mov	eax,ebp
	push	eax
	push	_2856
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2739
	call	_brl_blitz_NullObjectError
_2739:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2742
	call	_brl_blitz_ArrayBoundsError
_2742:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2744
	call	_brl_blitz_NullObjectError
_2744:
	mov	eax,dword [ebx+28]
	sub	eax,1
	mov	edi,eax
	jmp	_2745
_157:
	mov	eax,ebp
	push	eax
	push	_2855
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	push	_2749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	push	_2751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],_bbNullObject
	push	_2753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],0
	push	_2755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],0
	push	_2757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],0
	push	_2759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-80],eax
	push	_2760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-84],eax
	push	_2761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TAGFX_Vector2
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-88],eax
	push	_2762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2764
	call	_brl_blitz_NullObjectError
_2764:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2767
	call	_brl_blitz_ArrayBoundsError
_2767:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2769
	call	_brl_blitz_NullObjectError
_2769:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2772
	call	_brl_blitz_ArrayBoundsError
_2772:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2774
	call	_brl_blitz_NullObjectError
_2774:
	mov	esi,dword [ebx+16]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2777
	call	_brl_blitz_ArrayBoundsError
_2777:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-92],eax
	push	_2778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2780
	call	_brl_blitz_NullObjectError
_2780:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2783
	call	_brl_blitz_ArrayBoundsError
_2783:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2785
	call	_brl_blitz_NullObjectError
_2785:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2788
	call	_brl_blitz_ArrayBoundsError
_2788:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2790
	call	_brl_blitz_NullObjectError
_2790:
	mov	esi,dword [ebx+16]
	mov	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_2793
	call	_brl_blitz_ArrayBoundsError
_2793:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-96],eax
	push	_2794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2796
	call	_brl_blitz_NullObjectError
_2796:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2799
	call	_brl_blitz_ArrayBoundsError
_2799:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2801
	call	_brl_blitz_NullObjectError
_2801:
	mov	esi,dword [ebx+24]
	mov	ebx,dword [ebp-24]
	cmp	ebx,dword [esi+20]
	jb	_2804
	call	_brl_blitz_ArrayBoundsError
_2804:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2806
	call	_brl_blitz_NullObjectError
_2806:
	mov	esi,dword [ebx+16]
	mov	ebx,2
	cmp	ebx,dword [esi+20]
	jb	_2809
	call	_brl_blitz_ArrayBoundsError
_2809:
	mov	eax,dword [esi+ebx*4+24]
	sub	eax,1
	mov	dword [ebp-100],eax
	push	_2810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2812
	call	_brl_blitz_NullObjectError
_2812:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2815
	call	_brl_blitz_ArrayBoundsError
_2815:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2817
	call	_brl_blitz_NullObjectError
_2817:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2819
	call	_brl_blitz_NullObjectError
_2819:
	push	dword [ebp-92]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_2820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2822
	call	_brl_blitz_NullObjectError
_2822:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2825
	call	_brl_blitz_ArrayBoundsError
_2825:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2827
	call	_brl_blitz_NullObjectError
_2827:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2829
	call	_brl_blitz_NullObjectError
_2829:
	push	dword [ebp-96]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_2830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2832
	call	_brl_blitz_NullObjectError
_2832:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2835
	call	_brl_blitz_ArrayBoundsError
_2835:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2837
	call	_brl_blitz_NullObjectError
_2837:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2839
	call	_brl_blitz_NullObjectError
_2839:
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_2842
	call	_brl_blitz_NullObjectError
_2842:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2844
	call	_brl_blitz_NullObjectError
_2844:
	push	_142
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_2847
	call	_brl_blitz_NullObjectError
_2847:
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_2849
	call	_brl_blitz_NullObjectError
_2849:
	push	_142
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2852
	call	_brl_blitz_NullObjectError
_2852:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2854
	call	_brl_blitz_NullObjectError
_2854:
	push	_142
	push	dword [ebx+12]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_141
	push	dword [esi+8]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_155:
	add	dword [ebp-24],1
_2745:
	cmp	dword [ebp-24],edi
	jle	_157
_156:
	call	dword [_bbOnDebugLeaveScope]
_152:
	add	dword [ebp-20],1
_2735:
	mov	eax,dword [ebp-124]
	cmp	dword [ebp-20],eax
	jle	_154
_153:
	push	_2857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_158
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2861
	call	_brl_blitz_NullObjectError
_2861:
	mov	eax,dword [ebx+24]
	sub	eax,1
	mov	edi,eax
	jmp	_2862
_161:
	mov	eax,ebp
	push	eax
	push	_2885
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2866
	call	_brl_blitz_NullObjectError
_2866:
	mov	esi,dword [ebx+28]
	mov	ebx,dword [ebp-20]
	cmp	ebx,dword [esi+20]
	jb	_2869
	call	_brl_blitz_ArrayBoundsError
_2869:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_2871
	call	_brl_blitz_NullObjectError
_2871:
	mov	ebx,dword [ebx+28]
	sub	ebx,1
	jmp	_2872
_164:
	mov	eax,ebp
	push	eax
	push	_2884
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],0
	push	_2876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],0
	push	_2878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],0
	push	_2880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	imul	eax,3
	mov	dword [ebp-104],eax
	push	_2881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	imul	eax,3
	add	eax,1
	mov	dword [ebp-108],eax
	push	_2882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	imul	eax,3
	add	eax,2
	mov	dword [ebp-112],eax
	push	_2883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_84
	push	dword [ebp-112]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_84
	push	dword [ebp-108]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_165
	push	dword [ebp-104]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_140
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_162:
	add	dword [ebp-24],1
_2872:
	cmp	dword [ebp-24],ebx
	jle	_164
_163:
	call	dword [_bbOnDebugLeaveScope]
_159:
	add	dword [ebp-20],1
_2862:
	cmp	dword [ebp-20],edi
	jle	_161
_160:
	push	_2886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_143
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_166
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_167
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_169
	push	dword [ebp-12]
	push	_168
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2898
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_174
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_175
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_176
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_177
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_178
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_179
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_180
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_181
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_182
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_183
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_184
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_185
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_186
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_187
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_188
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_189
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2921
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_190
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_191
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_192
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_193
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_194
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_195
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_181
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-28]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	call	_brl_stream_CloseStream
	add	esp,4
	mov	ebx,0
	jmp	_424
_424:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Format:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	fld	qword [ebp+8]
	fstp	qword [ebp-8]
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	push	ebp
	push	_2970
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,-1
	setg	al
	movzx	eax,al
	cmp	eax,0
	je	_2937
	mov	eax,dword [ebp-16]
	cmp	eax,-1
	setg	al
	movzx	eax,al
_2937:
	cmp	eax,0
	je	_2939
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	setg	al
	movzx	eax,al
_2939:
	cmp	eax,0
	jne	_2941
	push	_196
	call	_brl_blitz_RuntimeError
	add	esp,4
_2941:
	push	_2942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	qword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbStringFromDouble
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2944
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_197
	push	dword [ebp-24]
	call	_bbStringFind
	add	esp,12
	mov	dword [ebp-28],eax
	push	_2946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	jne	_2947
	push	ebp
	push	_2949
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],-1
	call	dword [_bbOnDebugLeaveScope]
_2947:
	push	_2950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-28]
	add	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	0
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-24],eax
	push	_2951
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_2952
	push	ebp
	push	_2957
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2953
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_198
_200:
	push	ebp
	push	_2956
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	mov	eax,dword [ebp-28]
	sub	eax,dword [ebp-16]
	push	eax
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_84
	mov	eax,dword [ebp-28]
	sub	eax,dword [ebp-16]
	push	eax
	push	0
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	sub	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_198:
	mov	eax,dword [ebp-16]
	cmp	dword [ebp-28],eax
	jg	_200
_199:
	call	dword [_bbOnDebugLeaveScope]
_2952:
	push	_2958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],0
	je	_2959
	push	ebp
	push	_2967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	add	eax,dword [ebp-12]
	add	eax,1
	mov	dword [ebp-32],eax
	push	_2962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	cmp	dword [ebp-32],eax
	jge	_2963
	push	ebp
	push	_2965
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_201
	call	dword [_bbOnDebugLeaveScope]
_2963:
	push	_2966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_brl_retro_RSet
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2959:
	push	_2969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	jmp	_430
_430:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_485:
	dd	0
_471:
	db	"convert_obj2a3da",0
_472:
	db	"MAX_VERTEX_COUNT",0
_227:
	db	"i",0
	align	4
_473:
	dd	_bbStringClass
	dd	2147483646
	dd	6
	dw	50,48,48,48,48,48
_474:
	db	"MAX_NORMAL_COUNT",0
_475:
	db	"MAX_UV_COUNT",0
_476:
	db	"MAX_FACE_COUNT",0
	align	4
_477:
	dd	_bbStringClass
	dd	2147483646
	dd	6
	dw	49,50,48,48,48,48
_478:
	db	"MAX_MATERIAL_COUNT",0
	align	4
_479:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	49,48
_480:
	db	"MAX_OBJECT_COUNT",0
	align	4
_481:
	dd	_bbStringClass
	dd	2147483646
	dd	4
	dw	49,48,48,48
_482:
	db	"InName",0
_250:
	db	"$",0
	align	4
_bb_InName:
	dd	_bbEmptyString
_483:
	db	"MESHdata",0
_484:
	db	":TAGFX_Wavefront_obj",0
	align	4
_bb_MESHdata:
	dd	_bbNullObject
	align	4
_470:
	dd	1
	dd	_471
	dd	1
	dd	_472
	dd	_227
	dd	_473
	dd	1
	dd	_474
	dd	_227
	dd	_473
	dd	1
	dd	_475
	dd	_227
	dd	_473
	dd	1
	dd	_476
	dd	_227
	dd	_477
	dd	1
	dd	_478
	dd	_227
	dd	_479
	dd	1
	dd	_480
	dd	_227
	dd	_481
	dd	4
	dd	_482
	dd	_250
	dd	_bb_InName
	dd	4
	dd	_483
	dd	_484
	dd	_bb_MESHdata
	dd	0
_212:
	db	"TAGFX_Vector3",0
_213:
	db	"x",0
_214:
	db	"f",0
_215:
	db	"y",0
_216:
	db	"z",0
_217:
	db	"New",0
_218:
	db	"()i",0
_219:
	db	"Delete",0
	align	4
_211:
	dd	2
	dd	_212
	dd	3
	dd	_213
	dd	_214
	dd	8
	dd	3
	dd	_215
	dd	_214
	dd	12
	dd	3
	dd	_216
	dd	_214
	dd	16
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	0
	align	4
_bb_TAGFX_Vector3:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_211
	dd	20
	dd	__bb_TAGFX_Vector3_New
	dd	__bb_TAGFX_Vector3_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_221:
	db	"TAGFX_Vector2",0
	align	4
_220:
	dd	2
	dd	_221
	dd	3
	dd	_213
	dd	_214
	dd	8
	dd	3
	dd	_215
	dd	_214
	dd	12
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	0
	align	4
_bb_TAGFX_Vector2:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_220
	dd	16
	dd	__bb_TAGFX_Vector2_New
	dd	__bb_TAGFX_Vector2_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_223:
	db	"TAGFX_VertexList",0
_224:
	db	"Vertex",0
_225:
	db	"[]:TAGFX_Vector3",0
_226:
	db	"VertexCount",0
_228:
	db	"Add",0
_229:
	db	"(f,f,f)i",0
_230:
	db	"Get",0
_231:
	db	"(i):TAGFX_Vector3",0
	align	4
_222:
	dd	2
	dd	_223
	dd	3
	dd	_224
	dd	_225
	dd	8
	dd	3
	dd	_226
	dd	_227
	dd	12
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	6
	dd	_228
	dd	_229
	dd	48
	dd	6
	dd	_230
	dd	_231
	dd	52
	dd	0
	align	4
_bb_TAGFX_VertexList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_222
	dd	16
	dd	__bb_TAGFX_VertexList_New
	dd	__bb_TAGFX_VertexList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_VertexList_Add
	dd	__bb_TAGFX_VertexList_Get
_233:
	db	"TAGFX_NormalList",0
_234:
	db	"Normal",0
_235:
	db	"NormalCount",0
	align	4
_232:
	dd	2
	dd	_233
	dd	3
	dd	_234
	dd	_225
	dd	8
	dd	3
	dd	_235
	dd	_227
	dd	12
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	6
	dd	_228
	dd	_229
	dd	48
	dd	6
	dd	_230
	dd	_231
	dd	52
	dd	0
	align	4
_bb_TAGFX_NormalList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_232
	dd	16
	dd	__bb_TAGFX_NormalList_New
	dd	__bb_TAGFX_NormalList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_NormalList_Add
	dd	__bb_TAGFX_NormalList_Get
_237:
	db	"TAGFX_UVList",0
_238:
	db	"UV",0
_239:
	db	"[]:TAGFX_Vector2",0
_240:
	db	"UVCount",0
_241:
	db	"(f,f)i",0
_242:
	db	"(i):TAGFX_Vector2",0
	align	4
_236:
	dd	2
	dd	_237
	dd	3
	dd	_238
	dd	_239
	dd	8
	dd	3
	dd	_240
	dd	_227
	dd	12
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	6
	dd	_228
	dd	_241
	dd	48
	dd	6
	dd	_230
	dd	_242
	dd	52
	dd	0
	align	4
_bb_TAGFX_UVList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_236
	dd	16
	dd	__bb_TAGFX_UVList_New
	dd	__bb_TAGFX_UVList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_UVList_Add
	dd	__bb_TAGFX_UVList_Get
_244:
	db	"TAGFX_Face",0
_245:
	db	"vertexID",0
_246:
	db	"[]i",0
_247:
	db	"normalID",0
_248:
	db	"uvID",0
_249:
	db	"material_name",0
	align	4
_243:
	dd	2
	dd	_244
	dd	3
	dd	_245
	dd	_246
	dd	8
	dd	3
	dd	_247
	dd	_246
	dd	12
	dd	3
	dd	_248
	dd	_246
	dd	16
	dd	3
	dd	_249
	dd	_250
	dd	20
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	0
	align	4
_bb_TAGFX_Face:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_243
	dd	24
	dd	__bb_TAGFX_Face_New
	dd	__bb_TAGFX_Face_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_252:
	db	"TAGFX_object",0
_253:
	db	"Name",0
_254:
	db	"VertexList",0
_255:
	db	":TAGFX_VertexList",0
_256:
	db	"NormalList",0
_257:
	db	":TAGFX_NormalList",0
_258:
	db	"UVList",0
_259:
	db	":TAGFX_UVList",0
_260:
	db	"FaceList",0
_261:
	db	"[]:TAGFX_Face",0
_262:
	db	"facecount",0
_263:
	db	"AddFace",0
_264:
	db	"(i,i,i,i,i,i,i,i,i,$)i",0
	align	4
_251:
	dd	2
	dd	_252
	dd	3
	dd	_253
	dd	_250
	dd	8
	dd	3
	dd	_254
	dd	_255
	dd	12
	dd	3
	dd	_256
	dd	_257
	dd	16
	dd	3
	dd	_258
	dd	_259
	dd	20
	dd	3
	dd	_260
	dd	_261
	dd	24
	dd	3
	dd	_262
	dd	_227
	dd	28
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	6
	dd	_263
	dd	_264
	dd	48
	dd	0
	align	4
_bb_TAGFX_object:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_251
	dd	32
	dd	__bb_TAGFX_object_New
	dd	__bb_TAGFX_object_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_object_AddFace
_266:
	db	"TAGFX_Material",0
_267:
	db	"Kd",0
_268:
	db	":TAGFX_Vector3",0
_269:
	db	"Ks",0
_270:
	db	"Ka",0
_271:
	db	"Kb",0
_272:
	db	"map_Kd",0
_273:
	db	"map_Ks",0
_274:
	db	"map_Ka",0
_275:
	db	"map_Kb",0
	align	4
_265:
	dd	2
	dd	_266
	dd	3
	dd	_253
	dd	_250
	dd	8
	dd	3
	dd	_267
	dd	_268
	dd	12
	dd	3
	dd	_269
	dd	_268
	dd	16
	dd	3
	dd	_270
	dd	_268
	dd	20
	dd	3
	dd	_271
	dd	_268
	dd	24
	dd	3
	dd	_272
	dd	_250
	dd	28
	dd	3
	dd	_273
	dd	_250
	dd	32
	dd	3
	dd	_274
	dd	_250
	dd	36
	dd	3
	dd	_275
	dd	_250
	dd	40
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	0
	align	4
_bb_TAGFX_Material:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_265
	dd	44
	dd	__bb_TAGFX_Material_New
	dd	__bb_TAGFX_Material_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_277:
	db	"TAGFX_MaterialList",0
_278:
	db	"Materials",0
_279:
	db	"[]:TAGFX_Material",0
_280:
	db	"count",0
_281:
	db	"LoadFromFile",0
_282:
	db	"($)i",0
_283:
	db	"SaveToFile",0
	align	4
_276:
	dd	2
	dd	_277
	dd	3
	dd	_278
	dd	_279
	dd	8
	dd	3
	dd	_280
	dd	_227
	dd	12
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	6
	dd	_281
	dd	_282
	dd	48
	dd	6
	dd	_283
	dd	_282
	dd	52
	dd	0
	align	4
_bb_TAGFX_MaterialList:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_276
	dd	16
	dd	__bb_TAGFX_MaterialList_New
	dd	__bb_TAGFX_MaterialList_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_MaterialList_LoadFromFile
	dd	__bb_TAGFX_MaterialList_SaveToFile
_285:
	db	"TAGFX_Wavefront_obj",0
_286:
	db	"singlemesh",0
_287:
	db	"loaded",0
_288:
	db	"MaterialFileName",0
_289:
	db	"UseMtl",0
_290:
	db	"ObjectCount",0
_291:
	db	"ObjectList",0
_292:
	db	"[]:TAGFX_object",0
_293:
	db	"MaterialList",0
_294:
	db	":TAGFX_MaterialList",0
_295:
	db	"Dump",0
_296:
	db	"SaveToJava",0
_297:
	db	"($,$)i",0
	align	4
_284:
	dd	2
	dd	_285
	dd	3
	dd	_286
	dd	_227
	dd	8
	dd	3
	dd	_287
	dd	_227
	dd	12
	dd	3
	dd	_288
	dd	_250
	dd	16
	dd	3
	dd	_289
	dd	_250
	dd	20
	dd	3
	dd	_290
	dd	_227
	dd	24
	dd	3
	dd	_291
	dd	_292
	dd	28
	dd	3
	dd	_293
	dd	_294
	dd	32
	dd	6
	dd	_217
	dd	_218
	dd	16
	dd	6
	dd	_219
	dd	_218
	dd	20
	dd	6
	dd	_281
	dd	_282
	dd	48
	dd	6
	dd	_295
	dd	_218
	dd	52
	dd	6
	dd	_283
	dd	_282
	dd	56
	dd	6
	dd	_296
	dd	_297
	dd	60
	dd	0
	align	4
_bb_TAGFX_Wavefront_obj:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_284
	dd	36
	dd	__bb_TAGFX_Wavefront_obj_New
	dd	__bb_TAGFX_Wavefront_obj_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TAGFX_Wavefront_obj_LoadFromFile
	dd	__bb_TAGFX_Wavefront_obj_Dump
	dd	__bb_TAGFX_Wavefront_obj_SaveToFile
	dd	__bb_TAGFX_Wavefront_obj_SaveToJava
_433:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/convert_obj2a3da.bmx",0
	align	4
_432:
	dd	_433
	dd	11
	dd	1
	align	4
_434:
	dd	_433
	dd	12
	dd	1
	align	4
_435:
	dd	_433
	dd	14
	dd	1
	align	4
_462:
	dd	3
	dd	0
	dd	0
	align	4
_437:
	dd	_433
	dd	15
	dd	2
	align	4
_444:
	dd	_433
	dd	17
	dd	2
	align	4
_449:
	dd	_433
	dd	18
	dd	2
	align	4
_202:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	83,116,97,114,116,32,76,111,97,100,105,110,103,32,46,46
	dw	46,46
	align	4
_450:
	dd	_433
	dd	19
	dd	2
	align	4
_203:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	46,111,98,106
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	105,109,112,111,114,116,47
	align	4
_453:
	dd	_433
	dd	20
	dd	2
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	46,97,51,100,97
	align	4
_204:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	101,120,112,111,114,116,47,109,111,100,101,108,115,47
	align	4
_456:
	dd	_433
	dd	21
	dd	2
	align	4
_206:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	46,109,97,116
	align	4
_461:
	dd	_433
	dd	22
	dd	2
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	46,46,46,32,100,111,110,101
	align	4
_469:
	dd	3
	dd	0
	dd	0
	align	4
_464:
	dd	_433
	dd	25
	dd	2
	align	4
_208:
	dd	_bbStringClass
	dd	2147483647
	dd	56
	dw	42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42
	dw	42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42
	dw	42,42,42,42,42,42,42,42,42,42,42,42,42,42,42,42
	dw	42,42,42,42,42,42,42,42
	align	4
_465:
	dd	_433
	dd	26
	dd	2
	align	4
_209:
	dd	_bbStringClass
	dd	2147483647
	dd	56
	dw	32,87,97,118,101,102,114,111,110,116,32,79,66,74,32,102
	dw	105,108,101,32,99,111,110,118,101,114,116,111,114,32,116,111
	dw	32,65,110,100,114,111,105,100,51,68,32,69,110,103,105,110
	dw	101,32,50,48,49,48,32,42
	align	4
_466:
	dd	_433
	dd	27
	dd	2
	align	4
_467:
	dd	_433
	dd	28
	dd	2
	align	4
_210:
	dd	_bbStringClass
	dd	2147483647
	dd	45
	dw	32,69,120,101,99,117,116,101,58,32,99,111,110,118,101,114
	dw	116,95,111,98,106,50,97,51,100,97,46,101,120,101,32,60
	dw	111,98,106,32,102,105,108,101,110,97,109,101,62
	align	4
_468:
	dd	_433
	dd	29
	dd	2
_502:
	db	"Self",0
	align	4
_501:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_268
	dd	-4
	dd	0
	align	4
_500:
	dd	3
	dd	0
	dd	0
_488:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_vector3.bmx",0
	align	4
_487:
	dd	_488
	dd	8
	dd	3
	align	4
_492:
	dd	_488
	dd	9
	dd	3
	align	4
_496:
	dd	_488
	dd	10
	dd	3
_515:
	db	":TAGFX_Vector2",0
	align	4
_514:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_515
	dd	-4
	dd	0
	align	4
_513:
	dd	3
	dd	0
	dd	0
_505:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_vector2.bmx",0
	align	4
_504:
	dd	_505
	dd	7
	dd	3
	align	4
_509:
	dd	_505
	dd	8
	dd	3
	align	4
_525:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_255
	dd	-4
	dd	0
_517:
	db	":TAGFX_Vector3",0
	align	4
_524:
	dd	3
	dd	0
	dd	0
_520:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_vertex.bmx",0
	align	4
_519:
	dd	_520
	dd	10
	dd	3
_580:
	db	"_x",0
_581:
	db	"_y",0
_582:
	db	"_z",0
	align	4
_579:
	dd	1
	dd	_228
	dd	2
	dd	_502
	dd	_255
	dd	-4
	dd	2
	dd	_580
	dd	_214
	dd	-8
	dd	2
	dd	_581
	dd	_214
	dd	-12
	dd	2
	dd	_582
	dd	_214
	dd	-16
	dd	0
	align	4
_529:
	dd	_520
	dd	15
	dd	3
	align	4
_542:
	dd	_520
	dd	16
	dd	3
	align	4
_553:
	dd	_520
	dd	17
	dd	3
	align	4
_564:
	dd	_520
	dd	18
	dd	3
	align	4
_575:
	dd	_520
	dd	19
	dd	3
_590:
	db	"_id",0
	align	4
_589:
	dd	1
	dd	_230
	dd	2
	dd	_502
	dd	_255
	dd	-4
	dd	2
	dd	_590
	dd	_227
	dd	-8
	dd	0
	align	4
_583:
	dd	_520
	dd	24
	dd	3
	align	4
_599:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_257
	dd	-4
	dd	0
_591:
	db	":TAGFX_Vector3",0
	align	4
_598:
	dd	3
	dd	0
	dd	0
_594:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_normal.bmx",0
	align	4
_593:
	dd	_594
	dd	10
	dd	3
	align	4
_653:
	dd	1
	dd	_228
	dd	2
	dd	_502
	dd	_257
	dd	-4
	dd	2
	dd	_580
	dd	_214
	dd	-8
	dd	2
	dd	_581
	dd	_214
	dd	-12
	dd	2
	dd	_582
	dd	_214
	dd	-16
	dd	0
	align	4
_603:
	dd	_594
	dd	15
	dd	3
	align	4
_616:
	dd	_594
	dd	16
	dd	3
	align	4
_627:
	dd	_594
	dd	17
	dd	3
	align	4
_638:
	dd	_594
	dd	18
	dd	3
	align	4
_649:
	dd	_594
	dd	19
	dd	3
	align	4
_660:
	dd	1
	dd	_230
	dd	2
	dd	_502
	dd	_257
	dd	-4
	dd	2
	dd	_590
	dd	_227
	dd	-8
	dd	0
	align	4
_654:
	dd	_594
	dd	24
	dd	3
	align	4
_669:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_259
	dd	-4
	dd	0
_661:
	db	":TAGFX_Vector2",0
	align	4
_668:
	dd	3
	dd	0
	dd	0
_664:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_uv.bmx",0
	align	4
_663:
	dd	_664
	dd	10
	dd	3
	align	4
_712:
	dd	1
	dd	_228
	dd	2
	dd	_502
	dd	_259
	dd	-4
	dd	2
	dd	_580
	dd	_214
	dd	-8
	dd	2
	dd	_581
	dd	_214
	dd	-12
	dd	0
	align	4
_673:
	dd	_664
	dd	15
	dd	3
	align	4
_686:
	dd	_664
	dd	16
	dd	3
	align	4
_697:
	dd	_664
	dd	17
	dd	3
	align	4
_708:
	dd	_664
	dd	18
	dd	3
	align	4
_719:
	dd	1
	dd	_230
	dd	2
	dd	_502
	dd	_259
	dd	-4
	dd	2
	dd	_590
	dd	_227
	dd	-8
	dd	0
	align	4
_713:
	dd	_664
	dd	23
	dd	3
_755:
	db	":TAGFX_Face",0
	align	4
_754:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_755
	dd	-4
	dd	0
_720:
	db	"i",0
_722:
	db	"i",0
_724:
	db	"i",0
	align	4
_753:
	dd	3
	dd	0
	dd	0
_728:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_face.bmx",0
	align	4
_727:
	dd	_728
	dd	9
	dd	3
	align	4
_752:
	dd	3
	dd	0
	dd	2
	dd	_227
	dd	_227
	dd	-8
	dd	0
	align	4
_731:
	dd	_728
	dd	10
	dd	4
	align	4
_738:
	dd	_728
	dd	11
	dd	4
	align	4
_745:
	dd	_728
	dd	12
	dd	4
_802:
	db	":TAGFX_object",0
	align	4
_801:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_802
	dd	-4
	dd	0
_769:
	db	":TAGFX_Face",0
	align	4
_800:
	dd	3
	dd	0
	dd	0
_772:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_object.bmx",0
	align	4
_771:
	dd	_772
	dd	13
	dd	3
	align	4
_776:
	dd	_772
	dd	14
	dd	3
	align	4
_784:
	dd	_772
	dd	15
	dd	3
	align	4
_792:
	dd	_772
	dd	16
	dd	3
_973:
	db	"avi",0
_974:
	db	"bvi",0
_975:
	db	"cvi",0
_976:
	db	"nai",0
_977:
	db	"nbi",0
_978:
	db	"nci",0
_979:
	db	"auvi",0
_980:
	db	"buvi",0
_981:
	db	"cuvi",0
_982:
	db	"mtl_name",0
	align	4
_972:
	dd	1
	dd	_263
	dd	2
	dd	_502
	dd	_802
	dd	-4
	dd	2
	dd	_973
	dd	_227
	dd	-8
	dd	2
	dd	_974
	dd	_227
	dd	-12
	dd	2
	dd	_975
	dd	_227
	dd	-16
	dd	2
	dd	_976
	dd	_227
	dd	-20
	dd	2
	dd	_977
	dd	_227
	dd	-24
	dd	2
	dd	_978
	dd	_227
	dd	-28
	dd	2
	dd	_979
	dd	_227
	dd	-32
	dd	2
	dd	_980
	dd	_227
	dd	-36
	dd	2
	dd	_981
	dd	_227
	dd	-40
	dd	2
	dd	_982
	dd	_250
	dd	-44
	dd	0
	align	4
_814:
	dd	_772
	dd	21
	dd	3
	align	4
_827:
	dd	_772
	dd	24
	dd	3
	align	4
_841:
	dd	_772
	dd	25
	dd	3
	align	4
_855:
	dd	_772
	dd	26
	dd	3
	align	4
_869:
	dd	_772
	dd	29
	dd	3
	align	4
_883:
	dd	_772
	dd	30
	dd	3
	align	4
_897:
	dd	_772
	dd	31
	dd	3
	align	4
_911:
	dd	_772
	dd	34
	dd	3
	align	4
_925:
	dd	_772
	dd	35
	dd	3
	align	4
_939:
	dd	_772
	dd	36
	dd	3
	align	4
_953:
	dd	_772
	dd	38
	dd	3
	align	4
_968:
	dd	_772
	dd	40
	dd	3
_1027:
	db	":TAGFX_Material",0
	align	4
_1026:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_1027
	dd	-4
	dd	0
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	68,101,102,97,117,108,116
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,111,110,101
	align	4
_1025:
	dd	3
	dd	0
	dd	0
_993:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_Material.bmx",0
	align	4
_992:
	dd	_993
	dd	17
	dd	3
	align	4
_1001:
	dd	_993
	dd	18
	dd	3
	align	4
_1009:
	dd	_993
	dd	19
	dd	3
	align	4
_1017:
	dd	_993
	dd	20
	dd	3
	align	4
_1050:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_294
	dd	-4
	dd	0
_1047:
	db	":TAGFX_Material",0
	align	4
_1049:
	dd	3
	dd	0
	dd	0
_1395:
	db	"_filename",0
_1396:
	db	"mname",0
_1397:
	db	"file",0
_1398:
	db	":brl.stream.TStream",0
_1399:
	db	"mtlid",0
	align	4
_1394:
	dd	1
	dd	_281
	dd	2
	dd	_502
	dd	_294
	dd	-4
	dd	2
	dd	_1395
	dd	_250
	dd	-8
	dd	2
	dd	_1396
	dd	_250
	dd	-12
	dd	2
	dd	_1397
	dd	_1398
	dd	-16
	dd	2
	dd	_1399
	dd	_227
	dd	-20
	dd	0
	align	4
_1054:
	dd	_993
	dd	32
	dd	2
	align	4
_1056:
	dd	_993
	dd	33
	dd	2
	align	4
_1058:
	dd	_993
	dd	34
	dd	3
	align	4
_1060:
	dd	_993
	dd	36
	dd	3
	align	4
_1393:
	dd	3
	dd	0
	dd	0
	align	4
_1062:
	dd	_993
	dd	37
	dd	4
_1390:
	db	"Line",0
_1391:
	db	"pline",0
_1392:
	db	"[]$",0
	align	4
_1389:
	dd	3
	dd	0
	dd	2
	dd	_1390
	dd	_250
	dd	-24
	dd	2
	dd	_1391
	dd	_1392
	dd	-28
	dd	0
	align	4
_1063:
	dd	_993
	dd	39
	dd	5
	align	4
_1065:
	dd	_993
	dd	40
	dd	5
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_1067:
	dd	_993
	dd	42
	dd	5
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	110,101,119,109,116,108
	align	4
_1105:
	dd	3
	dd	0
	dd	0
	align	4
_1071:
	dd	_993
	dd	43
	dd	6
	align	4
_1074:
	dd	_993
	dd	44
	dd	6
	align	4
_1077:
	dd	_993
	dd	45
	dd	6
	align	4
_1088:
	dd	_993
	dd	46
	dd	6
	align	4
_1101:
	dd	_993
	dd	47
	dd	6
	align	4
_1106:
	dd	_993
	dd	50
	dd	5
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,100
	align	4
_1125:
	dd	3
	dd	0
	dd	0
	align	4
_1110:
	dd	_993
	dd	51
	dd	6
	align	4
_1126:
	dd	_993
	dd	54
	dd	5
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,97
	align	4
_1145:
	dd	3
	dd	0
	dd	0
	align	4
_1130:
	dd	_993
	dd	55
	dd	6
	align	4
_1146:
	dd	_993
	dd	58
	dd	5
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,98
	align	4
_1165:
	dd	3
	dd	0
	dd	0
	align	4
_1150:
	dd	_993
	dd	59
	dd	6
	align	4
_1166:
	dd	_993
	dd	62
	dd	5
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,112,95,75,115
	align	4
_1185:
	dd	3
	dd	0
	dd	0
	align	4
_1170:
	dd	_993
	dd	63
	dd	6
	align	4
_1186:
	dd	_993
	dd	66
	dd	5
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,100
_1236:
	db	"r",0
_1237:
	db	"g",0
_1238:
	db	"b",0
	align	4
_1235:
	dd	3
	dd	0
	dd	2
	dd	_1236
	dd	_214
	dd	-32
	dd	2
	dd	_1237
	dd	_214
	dd	-36
	dd	2
	dd	_1238
	dd	_214
	dd	-40
	dd	0
	align	4
_1190:
	dd	_993
	dd	67
	dd	6
	align	4
_1194:
	dd	_993
	dd	68
	dd	6
	align	4
_1198:
	dd	_993
	dd	69
	dd	6
	align	4
_1202:
	dd	_993
	dd	71
	dd	6
	align	4
_1213:
	dd	_993
	dd	72
	dd	6
	align	4
_1224:
	dd	_993
	dd	73
	dd	6
	align	4
_1239:
	dd	_993
	dd	76
	dd	5
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,97
	align	4
_1288:
	dd	3
	dd	0
	dd	2
	dd	_1236
	dd	_214
	dd	-44
	dd	2
	dd	_1237
	dd	_214
	dd	-48
	dd	2
	dd	_1238
	dd	_214
	dd	-52
	dd	0
	align	4
_1243:
	dd	_993
	dd	77
	dd	6
	align	4
_1247:
	dd	_993
	dd	78
	dd	6
	align	4
_1251:
	dd	_993
	dd	79
	dd	6
	align	4
_1255:
	dd	_993
	dd	81
	dd	6
	align	4
_1266:
	dd	_993
	dd	82
	dd	6
	align	4
_1277:
	dd	_993
	dd	83
	dd	6
	align	4
_1289:
	dd	_993
	dd	86
	dd	5
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,98
	align	4
_1338:
	dd	3
	dd	0
	dd	2
	dd	_1236
	dd	_214
	dd	-56
	dd	2
	dd	_1237
	dd	_214
	dd	-60
	dd	2
	dd	_1238
	dd	_214
	dd	-64
	dd	0
	align	4
_1293:
	dd	_993
	dd	87
	dd	6
	align	4
_1297:
	dd	_993
	dd	88
	dd	6
	align	4
_1301:
	dd	_993
	dd	89
	dd	6
	align	4
_1305:
	dd	_993
	dd	91
	dd	6
	align	4
_1316:
	dd	_993
	dd	92
	dd	6
	align	4
_1327:
	dd	_993
	dd	93
	dd	6
	align	4
_1339:
	dd	_993
	dd	96
	dd	5
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	75,115
	align	4
_1388:
	dd	3
	dd	0
	dd	2
	dd	_1236
	dd	_214
	dd	-68
	dd	2
	dd	_1237
	dd	_214
	dd	-72
	dd	2
	dd	_1238
	dd	_214
	dd	-76
	dd	0
	align	4
_1343:
	dd	_993
	dd	97
	dd	6
	align	4
_1347:
	dd	_993
	dd	98
	dd	6
	align	4
_1351:
	dd	_993
	dd	99
	dd	6
	align	4
_1355:
	dd	_993
	dd	101
	dd	6
	align	4
_1366:
	dd	_993
	dd	102
	dd	6
	align	4
_1377:
	dd	_993
	dd	103
	dd	6
_1458:
	db	"_out",0
_1459:
	db	"m_id",0
	align	4
_1457:
	dd	1
	dd	_283
	dd	2
	dd	_502
	dd	_294
	dd	-4
	dd	2
	dd	_1395
	dd	_250
	dd	-8
	dd	2
	dd	_1458
	dd	_1398
	dd	-12
	dd	2
	dd	_1459
	dd	_227
	dd	-16
	dd	0
	align	4
_1400:
	dd	_993
	dd	113
	dd	3
	align	4
_1402:
	dd	_993
	dd	114
	dd	3
	align	4
_1404:
	dd	_993
	dd	116
	dd	3
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	91,77,65,84,69,82,73,65,76,83,93
	align	4
_1405:
	dd	_993
	dd	117
	dd	3
	align	4
_1455:
	dd	3
	dd	0
	dd	0
	align	4
_1410:
	dd	_993
	dd	120
	dd	4
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_1411:
	dd	_993
	dd	121
	dd	4
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	32,32,32,32,32,32,32,32,32,116,121,112,101,32,61,32
	dw	77,65,84,95,84,69,88,84,85,82,69
	align	4
_1412:
	dd	_993
	dd	122
	dd	4
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,32,32,32,32,32,110,97,109,101,32,61,32
	align	4
_1420:
	dd	_993
	dd	123
	dd	4
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	32,32,32,32,32,32,32,32,99,111,108,111,114,32,61,32
	dw	49,44,49,44,49,44,49
	align	4
_1421:
	dd	_993
	dd	124
	dd	4
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	32,118,101,114,116,101,120,95,99,111,108,111,114,32,61,32
	dw	102,97,108,115,101
	align	4
_1422:
	dd	_993
	dd	125
	dd	4
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,116,101,120,116,117,114,101,95,48,32,61,32
	align	4
_1430:
	dd	_993
	dd	126
	dd	4
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,116,101,120,116,117,114,101,95,49,32,61,32
	align	4
_1438:
	dd	_993
	dd	127
	dd	4
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,32,32,116,101,120,116,117,114,101,95,50,32,61,32
	align	4
_1446:
	dd	_993
	dd	128
	dd	4
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,116,101,120,116,117,114,101,95,51,32,61,32
	dw	110,111,110,101
	align	4
_1447:
	dd	_993
	dd	129
	dd	4
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,48,32,61,32
	dw	110,111,110,101
	align	4
_1448:
	dd	_993
	dd	130
	dd	4
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,49,32,61,32
	dw	110,111,110,101
	align	4
_1449:
	dd	_993
	dd	131
	dd	4
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,50,32,61,32
	dw	110,111,110,101
	align	4
_1450:
	dd	_993
	dd	132
	dd	4
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,32,32,101,118,101,110,116,95,51,32,61,32
	dw	110,111,110,101
	align	4
_1451:
	dd	_993
	dd	133
	dd	4
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,32,32,100,101,112,116,104,116,101,115,116,32,61,32
	dw	116,114,117,101
	align	4
_1452:
	dd	_993
	dd	134
	dd	4
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	32,32,32,32,97,108,112,104,97,116,101,115,116,32,61,32
	dw	102,97,108,115,101
	align	4
_1453:
	dd	_993
	dd	135
	dd	4
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,102,97,99,101,99,117,108,108,105,110,103,32,61,32
	dw	116,114,117,101
	align	4
_1454:
	dd	_993
	dd	136
	dd	4
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_1456:
	dd	_993
	dd	138
	dd	3
	align	4
_1507:
	dd	1
	dd	_217
	dd	2
	dd	_502
	dd	_484
	dd	-4
	dd	0
_1462:
	db	":TAGFX_object",0
	align	4
_1506:
	dd	3
	dd	0
	dd	0
_1466:
	db	"E:/AndyGFX/AGFX_Eclipse/AGFX_jF3D_GraphicsEngine/tools/OBJConvertor/include/TAGFX_Wavefront_obj.bmx",0
	align	4
_1465:
	dd	_1466
	dd	24
	dd	3
	align	4
_1477:
	dd	_1466
	dd	25
	dd	3
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	115,105,110,103,108,101,109,101,115,104
	align	4
_1490:
	dd	_1466
	dd	26
	dd	3
	align	4
_1498:
	dd	_1466
	dd	27
	dd	3
	align	4
_1502:
	dd	_1466
	dd	28
	dd	3
_1823:
	db	"objid",0
	align	4
_1822:
	dd	1
	dd	_281
	dd	2
	dd	_502
	dd	_484
	dd	-4
	dd	2
	dd	_1395
	dd	_250
	dd	-8
	dd	2
	dd	_1397
	dd	_1398
	dd	-12
	dd	2
	dd	_1823
	dd	_227
	dd	-16
	dd	0
	align	4
_1517:
	dd	_1466
	dd	32
	dd	3
	align	4
_1519:
	dd	_1466
	dd	33
	dd	3
	align	4
_1521:
	dd	_1466
	dd	35
	dd	3
	align	4
_1805:
	dd	3
	dd	0
	dd	0
	align	4
_1523:
	dd	_1466
	dd	36
	dd	4
	align	4
_1527:
	dd	_1466
	dd	37
	dd	4
	align	4
_1530:
	dd	_1466
	dd	39
	dd	4
	align	4
_1803:
	dd	3
	dd	0
	dd	2
	dd	_1390
	dd	_250
	dd	-20
	dd	2
	dd	_1391
	dd	_1392
	dd	-24
	dd	0
	align	4
_1531:
	dd	_1466
	dd	41
	dd	5
	align	4
_1533:
	dd	_1466
	dd	42
	dd	5
	align	4
_1535:
	dd	_1466
	dd	46
	dd	5
	align	4
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	111
	align	4
_1576:
	dd	3
	dd	0
	dd	0
	align	4
_1539:
	dd	_1466
	dd	48
	dd	6
	align	4
_1543:
	dd	_1466
	dd	49
	dd	6
	align	4
_1546:
	dd	_1466
	dd	50
	dd	6
	align	4
_1557:
	dd	_1466
	dd	51
	dd	6
	align	4
_1572:
	dd	_1466
	dd	52
	dd	6
	align	4
_1577:
	dd	_1466
	dd	57
	dd	5
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,116,108,108,105,98
	align	4
_1591:
	dd	3
	dd	0
	dd	0
	align	4
_1581:
	dd	_1466
	dd	59
	dd	6
	align	4
_1592:
	dd	_1466
	dd	63
	dd	5
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	118
	align	4
_1618:
	dd	3
	dd	0
	dd	2
	dd	_213
	dd	_214
	dd	-28
	dd	2
	dd	_215
	dd	_214
	dd	-32
	dd	2
	dd	_216
	dd	_214
	dd	-36
	dd	0
	align	4
_1596:
	dd	_1466
	dd	64
	dd	6
	align	4
_1600:
	dd	_1466
	dd	65
	dd	6
	align	4
_1604:
	dd	_1466
	dd	66
	dd	6
	align	4
_1608:
	dd	_1466
	dd	67
	dd	6
	align	4
_1619:
	dd	_1466
	dd	72
	dd	5
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	118,110
	align	4
_1645:
	dd	3
	dd	0
	dd	2
	dd	_213
	dd	_214
	dd	-40
	dd	2
	dd	_215
	dd	_214
	dd	-44
	dd	2
	dd	_216
	dd	_214
	dd	-48
	dd	0
	align	4
_1623:
	dd	_1466
	dd	73
	dd	6
	align	4
_1627:
	dd	_1466
	dd	74
	dd	6
	align	4
_1631:
	dd	_1466
	dd	75
	dd	6
	align	4
_1635:
	dd	_1466
	dd	76
	dd	6
	align	4
_1646:
	dd	_1466
	dd	81
	dd	5
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	118,116
	align	4
_1668:
	dd	3
	dd	0
	dd	2
	dd	_213
	dd	_214
	dd	-52
	dd	2
	dd	_215
	dd	_214
	dd	-56
	dd	0
	align	4
_1650:
	dd	_1466
	dd	82
	dd	6
	align	4
_1654:
	dd	_1466
	dd	83
	dd	6
	align	4
_1658:
	dd	_1466
	dd	84
	dd	6
	align	4
_1669:
	dd	_1466
	dd	89
	dd	5
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	117,115,101,109,116,108
	align	4
_1683:
	dd	3
	dd	0
	dd	0
	align	4
_1673:
	dd	_1466
	dd	90
	dd	6
	align	4
_1684:
	dd	_1466
	dd	95
	dd	5
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	102
_1800:
	db	"vA",0
_1801:
	db	"vB",0
_1802:
	db	"vC",0
	align	4
_1799:
	dd	3
	dd	0
	dd	2
	dd	_1800
	dd	_1392
	dd	-60
	dd	2
	dd	_1801
	dd	_1392
	dd	-64
	dd	2
	dd	_1802
	dd	_1392
	dd	-68
	dd	2
	dd	_973
	dd	_227
	dd	-72
	dd	2
	dd	_974
	dd	_227
	dd	-76
	dd	2
	dd	_975
	dd	_227
	dd	-80
	dd	2
	dd	_979
	dd	_227
	dd	-84
	dd	2
	dd	_980
	dd	_227
	dd	-88
	dd	2
	dd	_981
	dd	_227
	dd	-92
	dd	2
	dd	_976
	dd	_227
	dd	-96
	dd	2
	dd	_977
	dd	_227
	dd	-100
	dd	2
	dd	_978
	dd	_227
	dd	-104
	dd	0
	align	4
_1688:
	dd	_1466
	dd	97
	dd	6
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_1692:
	dd	_1466
	dd	98
	dd	6
	align	4
_1696:
	dd	_1466
	dd	99
	dd	6
	align	4
_1700:
	dd	_1466
	dd	101
	dd	6
	align	4
_1707:
	dd	3
	dd	0
	dd	0
	align	4
_1706:
	dd	_1466
	dd	102
	dd	7
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	35
	dw	87,65,82,78,78,73,78,71,58,32,109,105,115,115,105,110
	dw	103,32,110,111,114,109,97,108,32,111,114,32,85,86,32,33
	dw	33,33,33
	align	4
_1708:
	dd	_1466
	dd	105
	dd	6
	align	4
_1710:
	dd	_1466
	dd	106
	dd	6
	align	4
_1712:
	dd	_1466
	dd	107
	dd	6
	align	4
_1714:
	dd	_1466
	dd	108
	dd	6
	align	4
_1716:
	dd	_1466
	dd	109
	dd	6
	align	4
_1718:
	dd	_1466
	dd	110
	dd	6
	align	4
_1720:
	dd	_1466
	dd	111
	dd	6
	align	4
_1722:
	dd	_1466
	dd	112
	dd	6
	align	4
_1724:
	dd	_1466
	dd	113
	dd	6
	align	4
_1726:
	dd	_1466
	dd	115
	dd	6
	align	4
_1737:
	dd	3
	dd	0
	dd	0
	align	4
_1728:
	dd	_1466
	dd	116
	dd	7
	align	4
_1731:
	dd	_1466
	dd	117
	dd	7
	align	4
_1734:
	dd	_1466
	dd	118
	dd	7
	align	4
_1738:
	dd	_1466
	dd	121
	dd	6
	align	4
_1758:
	dd	3
	dd	0
	dd	0
	align	4
_1740:
	dd	_1466
	dd	122
	dd	7
	align	4
_1743:
	dd	_1466
	dd	123
	dd	7
	align	4
_1746:
	dd	_1466
	dd	124
	dd	7
	align	4
_1749:
	dd	_1466
	dd	127
	dd	7
	align	4
_1752:
	dd	_1466
	dd	128
	dd	7
	align	4
_1755:
	dd	_1466
	dd	129
	dd	7
	align	4
_1759:
	dd	_1466
	dd	132
	dd	6
	align	4
_1788:
	dd	3
	dd	0
	dd	0
	align	4
_1761:
	dd	_1466
	dd	133
	dd	7
	align	4
_1764:
	dd	_1466
	dd	134
	dd	7
	align	4
_1767:
	dd	_1466
	dd	135
	dd	7
	align	4
_1770:
	dd	_1466
	dd	138
	dd	7
	align	4
_1773:
	dd	_1466
	dd	139
	dd	7
	align	4
_1776:
	dd	_1466
	dd	140
	dd	7
	align	4
_1779:
	dd	_1466
	dd	142
	dd	7
	align	4
_1782:
	dd	_1466
	dd	143
	dd	7
	align	4
_1785:
	dd	_1466
	dd	144
	dd	7
	align	4
_1789:
	dd	_1466
	dd	147
	dd	6
	align	4
_1804:
	dd	_1466
	dd	151
	dd	4
	align	4
_1806:
	dd	_1466
	dd	154
	dd	4
	align	4
_1814:
	dd	3
	dd	0
	dd	0
	align	4
_1810:
	dd	_1466
	dd	155
	dd	5
	align	4
_1815:
	dd	_1466
	dd	159
	dd	3
	align	4
_2079:
	dd	1
	dd	_295
	dd	2
	dd	_502
	dd	_484
	dd	-4
	dd	0
	align	4
_1824:
	dd	_1466
	dd	164
	dd	3
	align	4
_2078:
	dd	3
	dd	0
	dd	0
	align	4
_1828:
	dd	_1466
	dd	165
	dd	4
_2077:
	db	"o",0
	align	4
_2076:
	dd	3
	dd	0
	dd	2
	dd	_2077
	dd	_227
	dd	-8
	dd	0
	align	4
_1834:
	dd	_1466
	dd	167
	dd	5
	align	4
_78:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	79,98,106,101,99,116,32,110,97,109,101,58,32
	align	4
_1842:
	dd	_1466
	dd	169
	dd	5
	align	4
_1898:
	dd	3
	dd	0
	dd	2
	dd	_227
	dd	_227
	dd	-12
	dd	0
	align	4
_1855:
	dd	_1466
	dd	170
	dd	6
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	93,58,32
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	32,32,32,118,101,114,116,101,120,91
	align	4
_1899:
	dd	_1466
	dd	173
	dd	5
	align	4
_1955:
	dd	3
	dd	0
	dd	2
	dd	_227
	dd	_227
	dd	-16
	dd	0
	align	4
_1912:
	dd	_1466
	dd	174
	dd	6
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	32,32,32,110,111,114,109,97,108,58,32
	align	4
_1956:
	dd	_1466
	dd	177
	dd	5
	align	4
_1998:
	dd	3
	dd	0
	dd	2
	dd	_227
	dd	_227
	dd	-20
	dd	0
	align	4
_1969:
	dd	_1466
	dd	178
	dd	6
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	32,32,32,117,118,32,32,32,32,58,32
	align	4
_1999:
	dd	_1466
	dd	181
	dd	5
	align	4
_2075:
	dd	3
	dd	0
	dd	2
	dd	_227
	dd	_227
	dd	-24
	dd	0
	align	4
_2010:
	dd	_1466
	dd	182
	dd	10
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	32,77,65,84,58,32
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	32,32,32,102,97,99,101,32,32,32,32,58,32
	align	4
_2023:
	dd	_1466
	dd	183
	dd	6
	align	4
_2074:
	dd	3
	dd	0
	dd	2
	dd	_214
	dd	_227
	dd	-28
	dd	0
	align	4
_2026:
	dd	_1466
	dd	184
	dd	7
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	93,32,58,32
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,32,32,32,32,32,32,86,91
	align	4
_2042:
	dd	_1466
	dd	185
	dd	7
	align	4
_103:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,32,32,32,32,32,32,78,91
	align	4
_2058:
	dd	_1466
	dd	186
	dd	7
	align	4
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,32,32,32,32,32,85,86,91
_2444:
	db	"o_id",0
_2445:
	db	"f_id",0
	align	4
_2443:
	dd	1
	dd	_283
	dd	2
	dd	_502
	dd	_484
	dd	-4
	dd	2
	dd	_1395
	dd	_250
	dd	-8
	dd	2
	dd	_2444
	dd	_227
	dd	-12
	dd	2
	dd	_2445
	dd	_227
	dd	-16
	dd	2
	dd	_1458
	dd	_1398
	dd	-20
	dd	0
	align	4
_2080:
	dd	_1466
	dd	196
	dd	3
	align	4
_2082:
	dd	_1466
	dd	197
	dd	3
	align	4
_2084:
	dd	_1466
	dd	198
	dd	3
	align	4
_2086:
	dd	_1466
	dd	199
	dd	3
	align	4
_2441:
	dd	3
	dd	0
	dd	0
	align	4
_2091:
	dd	_1466
	dd	201
	dd	4
_2435:
	db	"uA",0
_2436:
	db	"uB",0
_2437:
	db	"uC",0
_2438:
	db	"Ai",0
_2439:
	db	"Bi",0
_2440:
	db	"Ci",0
	align	4
_2434:
	dd	3
	dd	0
	dd	2
	dd	_1800
	dd	_268
	dd	-24
	dd	2
	dd	_1801
	dd	_268
	dd	-28
	dd	2
	dd	_1802
	dd	_268
	dd	-32
	dd	2
	dd	_2435
	dd	_515
	dd	-36
	dd	2
	dd	_2436
	dd	_515
	dd	-40
	dd	2
	dd	_2437
	dd	_515
	dd	-44
	dd	2
	dd	_2438
	dd	_227
	dd	-48
	dd	2
	dd	_2439
	dd	_227
	dd	-52
	dd	2
	dd	_2440
	dd	_227
	dd	-56
	dd	0
	align	4
_2101:
	dd	_1466
	dd	203
	dd	5
	align	4
_2103:
	dd	_1466
	dd	204
	dd	5
	align	4
_2105:
	dd	_1466
	dd	205
	dd	5
	align	4
_2107:
	dd	_1466
	dd	207
	dd	5
	align	4
_2109:
	dd	_1466
	dd	208
	dd	5
	align	4
_2111:
	dd	_1466
	dd	209
	dd	5
	align	4
_2113:
	dd	_1466
	dd	211
	dd	5
	align	4
_2115:
	dd	_1466
	dd	212
	dd	5
	align	4
_2117:
	dd	_1466
	dd	213
	dd	5
	align	4
_2119:
	dd	_1466
	dd	216
	dd	5
	align	4
_2120:
	dd	_1466
	dd	217
	dd	5
	align	4
_2121:
	dd	_1466
	dd	218
	dd	5
	align	4
_2122:
	dd	_1466
	dd	220
	dd	5
	align	4
_2138:
	dd	_1466
	dd	221
	dd	5
	align	4
_2154:
	dd	_1466
	dd	222
	dd	5
	align	4
_2170:
	dd	_1466
	dd	224
	dd	5
	align	4
_2180:
	dd	_1466
	dd	225
	dd	5
	align	4
_2190:
	dd	_1466
	dd	226
	dd	5
	align	4
_2200:
	dd	_1466
	dd	227
	dd	5
	align	4
_2201:
	dd	_1466
	dd	228
	dd	5
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,118,65,32,61,32
	align	4
_2208:
	dd	_1466
	dd	229
	dd	5
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,118,66,32,61,32
	align	4
_2215:
	dd	_1466
	dd	230
	dd	5
	align	4
_113:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,118,67,32,61,32
	align	4
_2222:
	dd	_1466
	dd	234
	dd	5
	align	4
_2238:
	dd	_1466
	dd	235
	dd	5
	align	4
_2254:
	dd	_1466
	dd	236
	dd	5
	align	4
_2270:
	dd	_1466
	dd	238
	dd	5
	align	4
_2280:
	dd	_1466
	dd	239
	dd	5
	align	4
_2290:
	dd	_1466
	dd	240
	dd	5
	align	4
_2300:
	dd	_1466
	dd	242
	dd	5
	align	4
_114:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,110,65,32,61,32
	align	4
_2307:
	dd	_1466
	dd	243
	dd	5
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,110,66,32,61,32
	align	4
_2314:
	dd	_1466
	dd	244
	dd	5
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,32,110,67,32,61,32
	align	4
_2321:
	dd	_1466
	dd	248
	dd	5
	align	4
_117:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,99,65,32,61,32,49,46,48,32,44,32,49,46,48
	dw	32,44,32,49,46,48,32,44,32,49,46,48,32
	align	4
_2322:
	dd	_1466
	dd	249
	dd	5
	align	4
_118:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,99,66,32,61,32,49,46,48,32,44,32,49,46,48
	dw	32,44,32,49,46,48,32,44,32,49,46,48,32
	align	4
_2323:
	dd	_1466
	dd	250
	dd	5
	align	4
_119:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,99,67,32,61,32,49,46,48,32,44,32,49,46,48
	dw	32,44,32,49,46,48,32,44,32,49,46,48,32
	align	4
_2324:
	dd	_1466
	dd	254
	dd	5
	align	4
_2325:
	dd	_1466
	dd	255
	dd	5
	align	4
_2326:
	dd	_1466
	dd	256
	dd	5
	align	4
_2327:
	dd	_1466
	dd	258
	dd	5
	align	4
_2343:
	dd	_1466
	dd	259
	dd	5
	align	4
_2359:
	dd	_1466
	dd	260
	dd	5
	align	4
_2375:
	dd	_1466
	dd	262
	dd	5
	align	4
_2385:
	dd	_1466
	dd	263
	dd	5
	align	4
_2395:
	dd	_1466
	dd	264
	dd	5
	align	4
_2405:
	dd	_1466
	dd	266
	dd	5
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	32,117,118,48,65,32,61,32
	align	4
_2410:
	dd	_1466
	dd	267
	dd	5
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	32,117,118,48,66,32,61,32
	align	4
_2415:
	dd	_1466
	dd	268
	dd	5
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	32,117,118,48,67,32,61,32
	align	4
_2420:
	dd	_1466
	dd	270
	dd	5
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	32,109,97,116,32,61,32
	align	4
_2433:
	dd	_1466
	dd	271
	dd	5
	align	4
_2442:
	dd	_1466
	dd	276
	dd	3
_2934:
	db	"path",0
_2935:
	db	"id",0
	align	4
_2933:
	dd	1
	dd	_296
	dd	2
	dd	_502
	dd	_484
	dd	-4
	dd	2
	dd	_2934
	dd	_250
	dd	-8
	dd	2
	dd	_1395
	dd	_250
	dd	-12
	dd	2
	dd	_2935
	dd	_227
	dd	-16
	dd	2
	dd	_2444
	dd	_227
	dd	-20
	dd	2
	dd	_2445
	dd	_227
	dd	-24
	dd	2
	dd	_1458
	dd	_1398
	dd	-28
	dd	0
	align	4
_2446:
	dd	_1466
	dd	281
	dd	3
	align	4
_2448:
	dd	_1466
	dd	282
	dd	3
	align	4
_2450:
	dd	_1466
	dd	283
	dd	3
	align	4
_2452:
	dd	_1466
	dd	284
	dd	3
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	46,106,97,118,97
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	84,70,51,68,95
	align	4
_2454:
	dd	_1466
	dd	287
	dd	3
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	112,97,99,107,97,103,101,32,97,103,102,120,46,70,51,68
	dw	46,77,69,83,72,59
	align	4
_2455:
	dd	_1466
	dd	288
	dd	3
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_2456:
	dd	_1466
	dd	289
	dd	3
	align	4
_2457:
	dd	_1466
	dd	290
	dd	3
	align	4
_2458:
	dd	_1466
	dd	291
	dd	3
	align	4
_127:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	105,109,112,111,114,116,32,65,71,70,88,46,70,51,68,46
	dw	70,51,68,59
	align	4
_2459:
	dd	_1466
	dd	292
	dd	3
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	35
	dw	105,109,112,111,114,116,32,65,71,70,88,46,70,51,68,46
	dw	69,110,116,105,116,121,46,84,70,51,68,95,69,110,116,105
	dw	116,121,59
	align	4
_2460:
	dd	_1466
	dd	293
	dd	3
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	38
	dw	105,109,112,111,114,116,32,115,116,97,116,105,99,32,111,114
	dw	103,46,108,119,106,103,108,46,111,112,101,110,103,108,46,71
	dw	76,49,49,46,42,59
	align	4
_2461:
	dd	_1466
	dd	294
	dd	3
	align	4
_130:
	dd	_bbStringClass
	dd	2147483647
	dd	38
	dw	105,109,112,111,114,116,32,115,116,97,116,105,99,32,111,114
	dw	103,46,108,119,106,103,108,46,111,112,101,110,103,108,46,71
	dw	76,49,51,46,42,59
	align	4
_2462:
	dd	_1466
	dd	298
	dd	3
	align	4
_2463:
	dd	_1466
	dd	299
	dd	3
	align	4
_132:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,101,120,116,101,110,100,115,32,84,65,51,68,95,69,110
	dw	116,105,116,121
	align	4
_131:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	112,117,98,108,105,99,32,99,108,97,115,115,32,84,65,51
	dw	68,95
	align	4
_2464:
	dd	_1466
	dd	300
	dd	3
	align	4
_2465:
	dd	_1466
	dd	301
	dd	3
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	32,32,32,32,112,114,105,118,97,116,101,32,102,108,111,97
	dw	116,32,118,101,114,116,105,99,101,115,91,93,32,61,32,123
	align	4
_2466:
	dd	_1466
	dd	303
	dd	3
	align	4
_2596:
	dd	3
	dd	0
	dd	0
	align	4
_2471:
	dd	_1466
	dd	304
	dd	4
	align	4
_2595:
	dd	3
	dd	0
	dd	2
	dd	_1800
	dd	_268
	dd	-32
	dd	2
	dd	_1801
	dd	_268
	dd	-36
	dd	2
	dd	_1802
	dd	_268
	dd	-40
	dd	2
	dd	_2438
	dd	_227
	dd	-44
	dd	2
	dd	_2439
	dd	_227
	dd	-48
	dd	2
	dd	_2440
	dd	_227
	dd	-52
	dd	0
	align	4
_2481:
	dd	_1466
	dd	306
	dd	5
	align	4
_2483:
	dd	_1466
	dd	307
	dd	5
	align	4
_2485:
	dd	_1466
	dd	308
	dd	5
	align	4
_2487:
	dd	_1466
	dd	311
	dd	5
	align	4
_2489:
	dd	_1466
	dd	312
	dd	5
	align	4
_2491:
	dd	_1466
	dd	313
	dd	5
	align	4
_2493:
	dd	_1466
	dd	316
	dd	5
	align	4
_2494:
	dd	_1466
	dd	317
	dd	5
	align	4
_2495:
	dd	_1466
	dd	318
	dd	5
	align	4
_2496:
	dd	_1466
	dd	320
	dd	5
	align	4
_2512:
	dd	_1466
	dd	321
	dd	5
	align	4
_2528:
	dd	_1466
	dd	322
	dd	5
	align	4
_2544:
	dd	_1466
	dd	324
	dd	5
	align	4
_2554:
	dd	_1466
	dd	325
	dd	5
	align	4
_2564:
	dd	_1466
	dd	326
	dd	5
	align	4
_2574:
	dd	_1466
	dd	328
	dd	5
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	102,44
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,44,32
	align	4
_140:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	align	4
_2581:
	dd	_1466
	dd	329
	dd	5
	align	4
_2588:
	dd	_1466
	dd	330
	dd	5
	align	4
_2597:
	dd	_1466
	dd	336
	dd	3
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32
	dw	32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,125
	dw	59
	align	4
_2598:
	dd	_1466
	dd	338
	dd	3
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	32,32,32,32,112,114,105,118,97,116,101,32,102,108,111,97
	dw	116,32,110,111,114,109,97,108,115,91,93,32,61,32,123
	align	4
_2599:
	dd	_1466
	dd	340
	dd	3
	align	4
_2729:
	dd	3
	dd	0
	dd	0
	align	4
_2604:
	dd	_1466
	dd	341
	dd	4
	align	4
_2728:
	dd	3
	dd	0
	dd	2
	dd	_1800
	dd	_268
	dd	-56
	dd	2
	dd	_1801
	dd	_268
	dd	-60
	dd	2
	dd	_1802
	dd	_268
	dd	-64
	dd	2
	dd	_2438
	dd	_227
	dd	-68
	dd	2
	dd	_2439
	dd	_227
	dd	-72
	dd	2
	dd	_2440
	dd	_227
	dd	-76
	dd	0
	align	4
_2614:
	dd	_1466
	dd	343
	dd	5
	align	4
_2616:
	dd	_1466
	dd	344
	dd	5
	align	4
_2618:
	dd	_1466
	dd	345
	dd	5
	align	4
_2620:
	dd	_1466
	dd	347
	dd	5
	align	4
_2622:
	dd	_1466
	dd	348
	dd	5
	align	4
_2624:
	dd	_1466
	dd	349
	dd	5
	align	4
_2626:
	dd	_1466
	dd	352
	dd	5
	align	4
_2627:
	dd	_1466
	dd	353
	dd	5
	align	4
_2628:
	dd	_1466
	dd	354
	dd	5
	align	4
_2629:
	dd	_1466
	dd	356
	dd	5
	align	4
_2645:
	dd	_1466
	dd	357
	dd	5
	align	4
_2661:
	dd	_1466
	dd	358
	dd	5
	align	4
_2677:
	dd	_1466
	dd	360
	dd	5
	align	4
_2687:
	dd	_1466
	dd	361
	dd	5
	align	4
_2697:
	dd	_1466
	dd	362
	dd	5
	align	4
_2707:
	dd	_1466
	dd	364
	dd	5
	align	4
_2714:
	dd	_1466
	dd	365
	dd	5
	align	4
_2721:
	dd	_1466
	dd	366
	dd	5
	align	4
_2730:
	dd	_1466
	dd	372
	dd	3
	align	4
_2731:
	dd	_1466
	dd	376
	dd	3
	align	4
_151:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	32,32,32,32,112,114,105,118,97,116,101,32,102,108,111,97
	dw	116,32,116,101,120,116,117,114,101,91,93,32,61,32,123
	align	4
_2732:
	dd	_1466
	dd	378
	dd	3
	align	4
_2856:
	dd	3
	dd	0
	dd	0
	align	4
_2737:
	dd	_1466
	dd	379
	dd	4
	align	4
_2855:
	dd	3
	dd	0
	dd	2
	dd	_2435
	dd	_515
	dd	-80
	dd	2
	dd	_2436
	dd	_515
	dd	-84
	dd	2
	dd	_2437
	dd	_515
	dd	-88
	dd	2
	dd	_2438
	dd	_227
	dd	-92
	dd	2
	dd	_2439
	dd	_227
	dd	-96
	dd	2
	dd	_2440
	dd	_227
	dd	-100
	dd	0
	align	4
_2747:
	dd	_1466
	dd	382
	dd	5
	align	4
_2749:
	dd	_1466
	dd	383
	dd	5
	align	4
_2751:
	dd	_1466
	dd	384
	dd	5
	align	4
_2753:
	dd	_1466
	dd	386
	dd	5
	align	4
_2755:
	dd	_1466
	dd	387
	dd	5
	align	4
_2757:
	dd	_1466
	dd	388
	dd	5
	align	4
_2759:
	dd	_1466
	dd	392
	dd	5
	align	4
_2760:
	dd	_1466
	dd	393
	dd	5
	align	4
_2761:
	dd	_1466
	dd	394
	dd	5
	align	4
_2762:
	dd	_1466
	dd	396
	dd	5
	align	4
_2778:
	dd	_1466
	dd	397
	dd	5
	align	4
_2794:
	dd	_1466
	dd	398
	dd	5
	align	4
_2810:
	dd	_1466
	dd	400
	dd	5
	align	4
_2820:
	dd	_1466
	dd	401
	dd	5
	align	4
_2830:
	dd	_1466
	dd	402
	dd	5
	align	4
_2840:
	dd	_1466
	dd	404
	dd	5
	align	4
_2845:
	dd	_1466
	dd	405
	dd	5
	align	4
_2850:
	dd	_1466
	dd	406
	dd	5
	align	4
_2857:
	dd	_1466
	dd	412
	dd	3
	align	4
_2858:
	dd	_1466
	dd	414
	dd	3
	align	4
_158:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,32,32,112,114,105,118,97,116,101,32,105,110,116,32
	dw	105,110,100,105,99,101,115,91,93,32,61,32,123
	align	4
_2859:
	dd	_1466
	dd	418
	dd	3
	align	4
_2885:
	dd	3
	dd	0
	dd	0
	align	4
_2864:
	dd	_1466
	dd	419
	dd	4
	align	4
_2884:
	dd	3
	dd	0
	dd	2
	dd	_2438
	dd	_227
	dd	-104
	dd	2
	dd	_2439
	dd	_227
	dd	-108
	dd	2
	dd	_2440
	dd	_227
	dd	-112
	dd	0
	align	4
_2874:
	dd	_1466
	dd	421
	dd	5
	align	4
_2876:
	dd	_1466
	dd	422
	dd	5
	align	4
_2878:
	dd	_1466
	dd	423
	dd	5
	align	4
_2880:
	dd	_1466
	dd	425
	dd	5
	align	4
_2881:
	dd	_1466
	dd	426
	dd	5
	align	4
_2882:
	dd	_1466
	dd	427
	dd	5
	align	4
_2883:
	dd	_1466
	dd	429
	dd	5
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_2886:
	dd	_1466
	dd	435
	dd	3
	align	4
_2887:
	dd	_1466
	dd	437
	dd	3
	align	4
_2888:
	dd	_1466
	dd	438
	dd	3
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	112,117,98,108,105,99,32,105,110,116,32,109,97,116,101,114
	dw	105,97,108,95,105,100,59
	align	4
_2889:
	dd	_1466
	dd	439
	dd	3
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	112,117,98,108,105,99,32,84,70,51,68,95,86,66,79,32
	dw	118,98,111,59
	align	4
_2890:
	dd	_1466
	dd	440
	dd	3
	align	4
_2891:
	dd	_1466
	dd	441
	dd	1
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,41
	align	4
_168:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	32,112,117,98,108,105,99,32,84,70,51,68,95
	align	4
_2892:
	dd	_1466
	dd	442
	dd	1
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,123
	align	4
_2893:
	dd	_1466
	dd	443
	dd	1
	align	4
_2898:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	32,32,116,104,105,115,46,99,108,97,115,115,110,97,109,101
	dw	32,61,32,34,67,76,65,83,83,95,77,69,83,72,34,59
	align	4
_2899:
	dd	_1466
	dd	444
	dd	1
	align	4
_174:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	32,32,116,104,105,115,46,118,98,111,32,61,32,110,101,119
	dw	32,84,70,51,68,95,86,66,79,40,41,59
	align	4
_2900:
	dd	_1466
	dd	445
	dd	1
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	45
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,86,101,114,116,101,120,66,117,102,102,101,114,40,116,104
	dw	105,115,46,118,101,114,116,105,99,101,115,41,59
	align	4
_2901:
	dd	_1466
	dd	446
	dd	1
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	44
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,78,111,114,109,97,108,66,117,102,102,101,114,40,116,104
	dw	105,115,46,110,111,114,109,97,108,115,41,59
	align	4
_2902:
	dd	_1466
	dd	447
	dd	1
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	57
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,84,101,120,116,117,114,101,66,117,102,102,101,114,40,116
	dw	104,105,115,46,116,101,120,116,117,114,101,44,71,76,95,84
	dw	69,88,84,85,82,69,48,41,59
	align	4
_2903:
	dd	_1466
	dd	448
	dd	1
	align	4
_178:
	dd	_bbStringClass
	dd	2147483647
	dd	57
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,84,101,120,116,117,114,101,66,117,102,102,101,114,40,116
	dw	104,105,115,46,116,101,120,116,117,114,101,44,71,76,95,84
	dw	69,88,84,85,82,69,49,41,59
	align	4
_2904:
	dd	_1466
	dd	449
	dd	1
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	45
	dw	32,32,116,104,105,115,46,118,98,111,46,67,114,101,97,116
	dw	101,73,110,100,105,99,101,115,66,117,102,102,101,114,40,116
	dw	104,105,115,46,105,110,100,105,99,101,115,41,59
	align	4
_2905:
	dd	_1466
	dd	450
	dd	1
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	32,32,116,104,105,115,46,118,98,111,46,66,117,105,108,100
	dw	40,41,59
	align	4
_2906:
	dd	_1466
	dd	451
	dd	1
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,125
	align	4
_2907:
	dd	_1466
	dd	452
	dd	1
	align	4
_2908:
	dd	_1466
	dd	453
	dd	1
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	32,112,117,98,108,105,99,32,118,111,105,100,32,100,114,97
	dw	119,40,41
	align	4
_2909:
	dd	_1466
	dd	454
	dd	1
	align	4
_2910:
	dd	_1466
	dd	455
	dd	1
	align	4
_2911:
	dd	_1466
	dd	456
	dd	1
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	32,32,105,102,32,40,116,104,105,115,46,109,97,116,101,114
	dw	105,97,108,95,105,100,32,33,61,32,45,49,41
	align	4
_2912:
	dd	_1466
	dd	457
	dd	1
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,123
	align	4
_2913:
	dd	_1466
	dd	458
	dd	1
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	51
	dw	32,32,32,32,32,32,70,51,68,46,83,117,114,102,97,99
	dw	101,115,46,65,112,112,108,121,77,97,116,101,114,105,97,108
	dw	40,116,104,105,115,46,109,97,116,101,114,105,97,108,95,105
	dw	100,41,59
	align	4
_2914:
	dd	_1466
	dd	459
	dd	1
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,125
	align	4
_2915:
	dd	_1466
	dd	460
	dd	1
	align	4
_2916:
	dd	_1466
	dd	461
	dd	1
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	32,32,103,108,80,117,115,104,77,97,116,114,105,120,40,41
	dw	59
	align	4
_2917:
	dd	_1466
	dd	462
	dd	1
	align	4
_2918:
	dd	_1466
	dd	463
	dd	1
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	53
	dw	32,32,103,108,83,99,97,108,101,102,40,116,104,105,115,46
	dw	115,99,97,108,101,46,120,44,32,116,104,105,115,46,115,99
	dw	97,108,101,46,121,44,32,116,104,105,115,46,115,99,97,108
	dw	101,46,122,41,59
	align	4
_2919:
	dd	_1466
	dd	464
	dd	1
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	66
	dw	32,32,103,108,84,114,97,110,115,108,97,116,101,102,40,116
	dw	104,105,115,46,112,111,115,105,116,105,111,110,46,120,44,32
	dw	116,104,105,115,46,112,111,115,105,116,105,111,110,46,121,44
	dw	32,116,104,105,115,46,112,111,115,105,116,105,111,110,46,122
	dw	41,59
	align	4
_2920:
	dd	_1466
	dd	465
	dd	1
	align	4
_2921:
	dd	_1466
	dd	466
	dd	1
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	47
	dw	32,32,103,108,82,111,116,97,116,101,102,40,116,104,105,115
	dw	46,114,111,116,97,116,105,111,110,46,120,44,32,49,46,48
	dw	102,44,32,48,46,48,102,44,32,48,46,48,102,41,59
	align	4
_2922:
	dd	_1466
	dd	467
	dd	1
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	47
	dw	32,32,103,108,82,111,116,97,116,101,102,40,116,104,105,115
	dw	46,114,111,116,97,116,105,111,110,46,121,44,32,48,46,48
	dw	102,44,32,49,46,48,102,44,32,48,46,48,102,41,59
	align	4
_2923:
	dd	_1466
	dd	468
	dd	1
	align	4
_192:
	dd	_bbStringClass
	dd	2147483647
	dd	47
	dw	32,32,103,108,82,111,116,97,116,101,102,40,116,104,105,115
	dw	46,114,111,116,97,116,105,111,110,46,122,44,32,48,46,48
	dw	102,44,32,48,46,48,102,44,32,49,46,48,102,41,59
	align	4
_2924:
	dd	_1466
	dd	469
	dd	1
	align	4
_2925:
	dd	_1466
	dd	470
	dd	1
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	30
	dw	32,32,116,104,105,115,46,118,98,111,46,68,114,97,119,86
	dw	101,114,116,101,120,66,117,102,102,101,114,40,41,59
	align	4
_2926:
	dd	_1466
	dd	471
	dd	1
	align	4
_2927:
	dd	_1466
	dd	472
	dd	1
	align	4
_194:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,32,103,108,83,99,97,108,101,102,40,49,44,32,49,44
	dw	32,49,41,59
	align	4
_2928:
	dd	_1466
	dd	473
	dd	1
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	32,32,103,108,80,111,112,77,97,116,114,105,120,40,41,59
	align	4
_2929:
	dd	_1466
	dd	474
	dd	1
	align	4
_2930:
	dd	_1466
	dd	475
	dd	1
	align	4
_2931:
	dd	_1466
	dd	476
	dd	1
	align	4
_2932:
	dd	_1466
	dd	478
	dd	3
_2971:
	db	"Format",0
_2972:
	db	"number",0
_2973:
	db	"d",0
_2974:
	db	"decimal",0
_2975:
	db	"comma",0
_2976:
	db	"padleft",0
_2977:
	db	"str",0
_2978:
	db	"dl",0
	align	4
_2970:
	dd	1
	dd	_2971
	dd	2
	dd	_2972
	dd	_2973
	dd	-8
	dd	2
	dd	_2974
	dd	_227
	dd	-12
	dd	2
	dd	_2975
	dd	_227
	dd	-16
	dd	2
	dd	_2976
	dd	_227
	dd	-20
	dd	2
	dd	_2977
	dd	_250
	dd	-24
	dd	2
	dd	_2978
	dd	_227
	dd	-28
	dd	0
	align	4
_2936:
	dd	_1466
	dd	486
	dd	3
	align	4
_196:
	dd	_bbStringClass
	dd	2147483647
	dd	40
	dw	78,101,103,97,116,105,118,101,32,110,117,109,98,101,114,115
	dw	32,110,111,116,32,97,108,108,111,119,101,100,32,105,110,32
	dw	70,111,114,109,97,116,40,41
	align	4
_2942:
	dd	_1466
	dd	488
	dd	3
	align	4
_2944:
	dd	_1466
	dd	489
	dd	3
	align	4
_197:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_2946:
	dd	_1466
	dd	490
	dd	3
	align	4
_2949:
	dd	3
	dd	0
	dd	0
	align	4
_2948:
	dd	_1466
	dd	490
	dd	23
	align	4
_2950:
	dd	_1466
	dd	491
	dd	3
	align	4
_2951:
	dd	_1466
	dd	492
	dd	3
	align	4
_2957:
	dd	3
	dd	0
	dd	0
	align	4
_2953:
	dd	_1466
	dd	493
	dd	4
	align	4
_2956:
	dd	3
	dd	0
	dd	0
	align	4
_2954:
	dd	_1466
	dd	494
	dd	5
	align	4
_2955:
	dd	_1466
	dd	495
	dd	5
	align	4
_2958:
	dd	_1466
	dd	498
	dd	3
_2968:
	db	"paddedLength",0
	align	4
_2967:
	dd	3
	dd	0
	dd	2
	dd	_2968
	dd	_227
	dd	-32
	dd	0
	align	4
_2960:
	dd	_1466
	dd	499
	dd	4
	align	4
_2962:
	dd	_1466
	dd	500
	dd	4
	align	4
_2965:
	dd	3
	dd	0
	dd	0
	align	4
_2964:
	dd	_1466
	dd	500
	dd	38
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	69,114,114,111,114
	align	4
_2966:
	dd	_1466
	dd	501
	dd	4
	align	4
_2969:
	dd	_1466
	dd	503
	dd	3
