--1024930:メタルクウラ_生命エネルギー吸収(敵側用)
--sp_effect_b4_00253

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方側)
SP_01=	160434	;--	崖の上にメタルクウラが複数立っている	
SP_02=	160435	;--	崖の上にメタルクウラが複数立っている	
SP_03=	160436	;--	崖の上にアップされたメタルクウラが複数立っている	
SP_04=	160437	;--	崖から降りてきて画面に迫ってくる	
SP_05=	160438	;--	首だけのメタルクウラのセリフ	
SP_06=	160439	;--	エネルギー吸収	
SP_07=	160440	;--	エネルギー吸収	
SP_08=	160443	;--	首だけのメタルクウラの高笑い	

--エフェクト(敵側)
SP_01x=	160434	;--	崖の上にメタルクウラが複数立っている	
SP_02x=	160435	;--	崖の上にメタルクウラが複数立っている
SP_03x=	160436	;--	崖の上にアップされたメタルクウラが複数立っている	
SP_04x=	160437	;--	崖から降りてきて画面に迫ってくる	
SP_05x=	160583	;--	首だけのメタルクウラのセリフ	
SP_06x=	160441	;--	エネルギー吸収	(敵)
SP_07x=	160442	;--	エネルギー吸収	(敵)
SP_08x=	160444	;--	首だけのメタルクウラの高笑い	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setDisp( 0, 1, 0);
changeAnime( 0, 1, 0);


setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--崖の上にメタルクウラが複数立っている
------------------------------------------------------
--はじめの準備
spep_0=0;
--エフェクト
stand = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, stand, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, stand, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, stand, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, stand, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stand, 0 );
setEffRotateKey( spep_0 + 66, stand, 0 );
setEffAlphaKey( spep_0 + 0, stand, 255 );
setEffAlphaKey( spep_0 + 64, stand, 255 );
setEffAlphaKey( spep_0 + 65, stand, 255 );
setEffAlphaKey( spep_0 + 66, stand, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 272, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--クウラ足音
SE002 = playSeVer2( spep_0 + 22, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 36 );
SE003 = playSeVer2( spep_0 + 44, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE003, 50 );
SE004 = playSeVer2( spep_0 + 58, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE004, 17 );
SE005 = playSeVer2( spep_0 + 70, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 38 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+66;
------------------------------------------------------
--崖の上にメタルクウラが複数立っている
------------------------------------------------------
--エフェクト
stand2 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, stand2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, stand2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, stand2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, stand2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, stand2, 0 );
setEffRotateKey( spep_1 + 86, stand2, 0 );
setEffAlphaKey( spep_1 + 0, stand2, 255 );
setEffAlphaKey( spep_1 + 84, stand2, 255 );
setEffAlphaKey( spep_1 + 85, stand2, 255 );
setEffAlphaKey( spep_1 + 86, stand2, 0 );

--SE
--カメラパン
SE006 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 79 );

--カメラパン２
SE007 = playSeVer2( spep_1 + 64, 1072, "", 0, 16, 0, -1);
setStartTimeMs( SE007,  233 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+86;
------------------------------------------------------
--崖の上にアップされたメタルクウラが複数立っている
------------------------------------------------------
--エフェクト
stand3 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, stand3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, stand3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stand3, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, stand3, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stand3, 0 );
setEffRotateKey( spep_2 + 86, stand3, 0 );
setEffAlphaKey( spep_2 + 0, stand3, 255 );
setEffAlphaKey( spep_2 + 84, stand3, 255 );
setEffAlphaKey( spep_2 + 85, stand3, 255 );
setEffAlphaKey( spep_2 + 86, stand3, 0 );

--SE
--カメラパン２
SE008 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+86;
------------------------------------------------------
--崖から降りてきて画面に迫ってくる
------------------------------------------------------
--エフェクト
rush = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush, 0 );
setEffRotateKey( spep_3 + 176, rush, 0 );
setEffAlphaKey( spep_3 + 0, rush, 255 );
setEffAlphaKey( spep_3 + 174, rush, 255 );
setEffAlphaKey( spep_3 + 175, rush, 255 );
setEffAlphaKey( spep_3 + 176, rush, 0 );

--SE
--崖おりてくる
SE009 = playSeVer2( spep_3 + 0, 1226, "",spep_3 + 214, 0, 60, -1);
setSeVolumeByWorkId( spep_3 + 0, SE009, 90 );
SE010 = playSeVer2( spep_3 + 0, 1044, "",spep_3 + 214, 0, 60, -1);

--向かってくる
SE011 = playSeVer2( spep_3 + 106, 1116, "",spep_3 + 146, 0, 16, -1);
SE012 = playSeVer2( spep_3 + 106, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 112, 1117, "", 0, 0, 0, -1);

--環境音
SE014 = playSeVer2( spep_3 + 134, 1349, "", 0, 70, 0, -1);
setSeVolumeByWorkId( spep_3 + 134, SE014, 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 +150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );


    setVoiceVolume( SP_dodge - 12, 463, 0 );

    setVoiceVolume( SP_dodge - 12, 445, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 112.5, 91.1 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.2, 0.2 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--次の準備
spep_4=spep_3+176;
------------------------------------------------------
--首だけのメタルクウラのセリフ
------------------------------------------------------
--エフェクト
serif = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, serif, 0, 0 , 0 );
setEffMoveKey( spep_4 + 276, serif, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, serif, 1.0, 1.0 );
setEffScaleKey( spep_4 + 276, serif, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, serif, 0 );
setEffRotateKey( spep_4 + 276, serif, 0 );
setEffAlphaKey( spep_4 + 0, serif, 255 );
setEffAlphaKey( spep_4 + 274, serif, 255 );
setEffAlphaKey( spep_4 + 275, serif, 255 );
setEffAlphaKey( spep_4 + 276, serif, 0 );

--SE
--セリフカットイン
SE015 = playSeVer2( spep_4 + 82, 1018, "", 0, 0, 0, -1);

--ボイス
--お前の生命エネルギーをすべてもらう
playVoice( spep_4 + 86, 501 );
setVoiceVolume( spep_4 + 86, 501, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 280, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+276;
------------------------------------------------------
--エネルギー吸収
------------------------------------------------------
--エフェクト
absorption_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, absorption_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, absorption_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, absorption_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 316, absorption_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, absorption_f, 0 );
setEffRotateKey( spep_5 + 316, absorption_f, 0 );
setEffAlphaKey( spep_5 + 0, absorption_f, 255 );
setEffAlphaKey( spep_5 + 314, absorption_f, 255 );
setEffAlphaKey( spep_5 + 315, absorption_f, 255 );
setEffAlphaKey( spep_5 + 316, absorption_f, 0 );

--エフェクト
absorption_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, absorption_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, absorption_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, absorption_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 316, absorption_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, absorption_b, 0 );
setEffRotateKey( spep_5 + 316, absorption_b, 0 );
setEffAlphaKey( spep_5 + 0, absorption_b, 255 );
setEffAlphaKey( spep_5 + 314, absorption_b, 255 );
setEffAlphaKey( spep_5 + 315, absorption_b, 255 );
setEffAlphaKey( spep_5 + 316, absorption_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 318, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -16.5, -2.3 , 0 );
setMoveKey( spep_5 + 2, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 4, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 6, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 8, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 10, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 12, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 14, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 16, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 18, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 20, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 22, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 24, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 26, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 28, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 30, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 32, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 34, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 36, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 38, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 40, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 42, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 44, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 46, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 48, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 50, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 52, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 54, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 56, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 58, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 60, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 62, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 64, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 66, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 68, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 70, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 72, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 74, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 76, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 78, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 80, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 82, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 84, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 86, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 88, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 90, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 92, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 94, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 96, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 98, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 100, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 102, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 104, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 106, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 108, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 110, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 112, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 114, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 116, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 118, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 120, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 122, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 124, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 126, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 128, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 130, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 132, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 134, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 136, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 138, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 140, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 142, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 144, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 146, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 148, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 150, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 152, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 154, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 156, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 158, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 160, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 162, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 164, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 166, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 168, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 170, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 172, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 174, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 176, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 178, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 180, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 182, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 184, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 186, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 188, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 190, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 192, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 194, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 196, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 198, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 200, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 202, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 204, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 206, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 208, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 210, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 212, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 214, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 216, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 218, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 220, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 222, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 224, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 226, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 228, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 230, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 232, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 234, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 236, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 238, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 240, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 242, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 244, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 246, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 248, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 250, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 252, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 254, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 256, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 258, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 260, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 262, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 264, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 266, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 268, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 270, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 272, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 274, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 276, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 278, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 280, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 282, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 284, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 286, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 288, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 290, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 292, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 294, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 296, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 298, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 300, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 302, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 304, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 306, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 308, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 310, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 312, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 314, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 316, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 318, 1, -14.7, -2 , 0 );

setScaleKey( spep_5 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 318, 1, 1.1, 1.1 );

setRotateKey( spep_5 + 0, 1, -58 );
setRotateKey( spep_5 + 318, 1, -58 );

--SE
SE016 = playSeVer2( spep_5 + 8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 8, SE016, 68 );
SE017 = playSeVer2( spep_5 + 8, 1231, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_5 + 8, 1243, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_5 + 10, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 10, SE019, 73 );
SE020 = playSeVer2( spep_5 + 10, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 10, SE020, 51 );
SE021 = playSeVer2( spep_5 + 14, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE021, 73 );
SE022 = playSeVer2( spep_5 + 216, 1243, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 216, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 216, SE023, 68 );

--ボイス
--ふっふっふっ　いいぞ！もっと吸い取れ！
playVoice( spep_5 + 22, 502 );
setVoiceVolume( spep_5 + 22, 502, 178 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 320, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+316;
------------------------------------------------------
--首だけのメタルクウラの高笑い
------------------------------------------------------
--エフェクト
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 260, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 260, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 260, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 260, finish, 255 );

--SE
--エネルギー吸収音
SE024 = playSeVer2( spep_6 + 106, 1243, "", 0, 0, 0, -1);

--ボイス
--ハッハッハッハッハッ
playVoice( spep_6 + 0, 503 );
setVoiceVolume( spep_6 + 0, 503, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 260, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_6+10);
endPhase( spep_6 + 250 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--崖の上にメタルクウラが複数立っている
------------------------------------------------------
--はじめの準備
spep_0=0;
--エフェクト
stand = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, stand, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, stand, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, stand, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, stand, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stand, 0 );
setEffRotateKey( spep_0 + 66, stand, 0 );
setEffAlphaKey( spep_0 + 0, stand, 255 );
setEffAlphaKey( spep_0 + 64, stand, 255 );
setEffAlphaKey( spep_0 + 65, stand, 255 );
setEffAlphaKey( spep_0 + 66, stand, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 272, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--クウラ足音
SE002 = playSeVer2( spep_0 + 22, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 36 );
SE003 = playSeVer2( spep_0 + 44, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE003, 50 );
SE004 = playSeVer2( spep_0 + 58, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE004, 17 );
SE005 = playSeVer2( spep_0 + 70, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 38 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+66;
------------------------------------------------------
--崖の上にメタルクウラが複数立っている
------------------------------------------------------
--エフェクト
stand2 = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, stand2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, stand2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, stand2, -1.0, 1.0 );
setEffScaleKey( spep_1 + 86, stand2, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, stand2, 0 );
setEffRotateKey( spep_1 + 86, stand2, 0 );
setEffAlphaKey( spep_1 + 0, stand2, 255 );
setEffAlphaKey( spep_1 + 84, stand2, 255 );
setEffAlphaKey( spep_1 + 85, stand2, 255 );
setEffAlphaKey( spep_1 + 86, stand2, 0 );

--SE
--カメラパン
SE006 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 79 );

--カメラパン２
SE007 = playSeVer2( spep_1 + 64, 1072, "", 0, 16, 0, -1);
setStartTimeMs( SE007,  233 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+86;
------------------------------------------------------
--崖の上にアップされたメタルクウラが複数立っている
------------------------------------------------------
--エフェクト
stand3 = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, stand3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, stand3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stand3, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, stand3, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stand3, 0 );
setEffRotateKey( spep_2 + 86, stand3, 0 );
setEffAlphaKey( spep_2 + 0, stand3, 255 );
setEffAlphaKey( spep_2 + 84, stand3, 255 );
setEffAlphaKey( spep_2 + 85, stand3, 255 );
setEffAlphaKey( spep_2 + 86, stand3, 0 );

--SE
--カメラパン２
SE008 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+86;
------------------------------------------------------
--崖から降りてきて画面に迫ってくる
------------------------------------------------------
--エフェクト
rush = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush, 0 );
setEffRotateKey( spep_3 + 176, rush, 0 );
setEffAlphaKey( spep_3 + 0, rush, 255 );
setEffAlphaKey( spep_3 + 174, rush, 255 );
setEffAlphaKey( spep_3 + 175, rush, 255 );
setEffAlphaKey( spep_3 + 176, rush, 0 );

--SE
--崖おりてくる
SE009 = playSeVer2( spep_3 + 0, 1226, "",spep_3 + 214, 0, 60, -1);
setSeVolumeByWorkId( spep_3 + 0, SE009, 90 );
SE010 = playSeVer2( spep_3 + 0, 1044, "",spep_3 + 214, 0, 60, -1);

--向かってくる
SE011 = playSeVer2( spep_3 + 106, 1116, "",spep_3 + 146, 0, 16, -1);
SE012 = playSeVer2( spep_3 + 106, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 112, 1117, "", 0, 0, 0, -1);

--環境音
SE014 = playSeVer2( spep_3 + 134, 1349, "", 0, 70, 0, -1);
setSeVolumeByWorkId( spep_3 + 134, SE014, 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 +150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );


    setVoiceVolume( SP_dodge - 12, 463, 0 );

    setVoiceVolume( SP_dodge - 12, 445, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 112.5, 91.1 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.2, 0.2 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--次の準備
spep_4=spep_3+176;
------------------------------------------------------
--首だけのメタルクウラのセリフ
------------------------------------------------------
--エフェクト
serif = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, serif, 0, 0 , 0 );
setEffMoveKey( spep_4 + 276, serif, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, serif, -1.0, 1.0 );
setEffScaleKey( spep_4 + 276, serif, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, serif, 0 );
setEffRotateKey( spep_4 + 276, serif, 0 );
setEffAlphaKey( spep_4 + 0, serif, 255 );
setEffAlphaKey( spep_4 + 274, serif, 255 );
setEffAlphaKey( spep_4 + 275, serif, 255 );
setEffAlphaKey( spep_4 + 276, serif, 0 );

--SE
--セリフカットイン
SE015 = playSeVer2( spep_4 + 82, 1018, "", 0, 0, 0, -1);

--ボイス
--お前の生命エネルギーをすべてもらう
--playVoice( spep_4 + 86, 501 );
--setVoiceVolume( spep_4 + 86, 501, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 280, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+276;
------------------------------------------------------
--エネルギー吸収
------------------------------------------------------
--エフェクト
absorption_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, absorption_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, absorption_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, absorption_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 316, absorption_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, absorption_f, 0 );
setEffRotateKey( spep_5 + 316, absorption_f, 0 );
setEffAlphaKey( spep_5 + 0, absorption_f, 255 );
setEffAlphaKey( spep_5 + 314, absorption_f, 255 );
setEffAlphaKey( spep_5 + 315, absorption_f, 255 );
setEffAlphaKey( spep_5 + 316, absorption_f, 0 );

--エフェクト
absorption_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, absorption_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, absorption_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, absorption_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 316, absorption_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, absorption_b, 0 );
setEffRotateKey( spep_5 + 316, absorption_b, 0 );
setEffAlphaKey( spep_5 + 0, absorption_b, 255 );
setEffAlphaKey( spep_5 + 314, absorption_b, 255 );
setEffAlphaKey( spep_5 + 315, absorption_b, 255 );
setEffAlphaKey( spep_5 + 316, absorption_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 318, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -16.5, -2.3 , 0 );
setMoveKey( spep_5 + 2, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 4, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 6, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 8, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 10, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 12, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 14, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 16, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 18, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 20, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 22, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 24, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 26, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 28, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 30, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 32, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 34, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 36, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 38, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 40, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 42, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 44, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 46, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 48, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 50, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 52, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 54, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 56, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 58, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 60, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 62, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 64, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 66, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 68, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 70, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 72, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 74, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 76, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 78, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 80, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 82, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 84, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 86, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 88, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 90, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 92, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 94, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 96, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 98, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 100, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 102, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 104, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 106, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 108, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 110, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 112, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 114, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 116, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 118, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 120, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 122, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 124, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 126, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 128, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 130, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 132, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 134, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 136, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 138, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 140, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 142, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 144, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 146, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 148, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 150, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 152, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 154, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 156, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 158, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 160, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 162, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 164, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 166, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 168, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 170, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 172, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 174, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 176, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 178, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 180, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 182, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 184, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 186, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 188, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 190, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 192, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 194, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 196, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 198, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 200, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 202, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 204, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 206, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 208, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 210, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 212, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 214, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 216, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 218, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 220, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 222, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 224, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 226, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 228, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 230, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 232, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 234, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 236, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 238, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 240, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 242, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 244, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 246, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 248, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 250, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 252, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 254, 1, -14.7, 0.2 , 0 );
setMoveKey( spep_5 + 256, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 258, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 260, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 262, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 264, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 266, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 268, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 270, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 272, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 274, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 276, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 278, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 280, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 282, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 284, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 286, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 288, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 290, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 292, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 294, 1, -17.9, -4.2 , 0 );
setMoveKey( spep_5 + 296, 1, -15.8, -0.5 , 0 );
setMoveKey( spep_5 + 298, 1, -15.4, -3.6 , 0 );
setMoveKey( spep_5 + 300, 1, -18.9, -0.5 , 0 );
setMoveKey( spep_5 + 302, 1, -18.8, -4.2 , 0 );
setMoveKey( spep_5 + 304, 1, -16.7, 0.3 , 0 );
setMoveKey( spep_5 + 306, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 308, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 310, 1, -14.7, -2 , 0 );
setMoveKey( spep_5 + 312, 1, -18.1, -0.3 , 0 );
setMoveKey( spep_5 + 314, 1, -16.6, -5.6 , 0 );
setMoveKey( spep_5 + 316, 1, -18.8, -2.3 , 0 );
setMoveKey( spep_5 + 318, 1, -14.7, -2 , 0 );

setScaleKey( spep_5 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 318, 1, 1.1, 1.1 );

setRotateKey( spep_5 + 0, 1, -58 );
setRotateKey( spep_5 + 318, 1, -58 );

--SE
SE016 = playSeVer2( spep_5 + 8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 8, SE016, 68 );
SE017 = playSeVer2( spep_5 + 8, 1231, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_5 + 8, 1243, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_5 + 10, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 10, SE019, 73 );
SE020 = playSeVer2( spep_5 + 10, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 10, SE020, 51 );
SE021 = playSeVer2( spep_5 + 14, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE021, 73 );
SE022 = playSeVer2( spep_5 + 216, 1243, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 216, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 216, SE023, 68 );

--ボイス
--ふっふっふっ　いいぞ！もっと吸い取れ！
--playVoice( spep_5 + 22, 502 );
--setVoiceVolume( spep_5 + 22, 502, 178 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 320, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+316;
------------------------------------------------------
--首だけのメタルクウラの高笑い
------------------------------------------------------
--エフェクト
finish = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 260, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 260, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 260, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 260, finish, 255 );

--SE
--エネルギー吸収音
SE024 = playSeVer2( spep_6 + 106, 1243, "", 0, 0, 0, -1);

--ボイス
--ハッハッハッハッハッ
--playVoice( spep_6 + 0, 503 );
--setVoiceVolume( spep_6 + 0, 503, 158 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 260, 0, 0, 0, 0, 255 );  --黒　背景

-- 終わり
dealDamage(spep_6+10);
endPhase( spep_6 + 250 );
end