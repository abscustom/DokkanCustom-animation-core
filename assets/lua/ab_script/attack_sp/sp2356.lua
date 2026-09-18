--1024140:LR_孫悟空&ピッコロ/ピッコロ_超必殺技：龍虎疾風乱舞
--sp_effect_b1_00198
--sp2356

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

--エフェクト(味方)
SP_01=	159568	;--	冒頭敵より前
SP_02=	159569	;--	冒頭敵より後ろ
SP_03=	159570	;--	前方ダッシュ
SP_04=	159571	;--	パンチ敵より前
SP_05=	159572	;--	パンチ敵より後ろ
SP_06=	159573	;--	上空視点ラッシュ敵より前
SP_07=	159574	;--	上空視点ラッシュ敵より後ろ
SP_08=	159575	;--	悟空蹴り
SP_09=	159576	;--	高速ラッシュ敵より前
SP_10=	159577	;--	高速ラッシュ敵より後ろ
SP_11=	159578	;--	ラストパンチ敵より前
SP_12=	159579	;--	ラストパンチ敵より後ろ

--エフェクト(てき)
SP_01x=	159580	;--	冒頭敵より前 (敵)
SP_02x=	159569	;--	冒頭敵より後ろ
SP_03x=	159581	;--	前方ダッシュ (敵)
SP_04x=	159582	;--	パンチ敵より前 (敵)
SP_05x=	159572	;--	パンチ敵より後ろ
SP_06x=	159583	;--	上空視点ラッシュ敵より前 (敵)
SP_07x=	159574	;--	上空視点ラッシュ敵より後ろ
SP_08x=	159575	;--	悟空蹴り
SP_09x=	159576	;--	高速ラッシュ敵より前
SP_10x=	159577	;--	高速ラッシュ敵より後ろ
SP_11x=	159578	;--	ラストパンチ敵より前
SP_12x=	159579	;--	ラストパンチ敵より後ろ

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
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
--冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, beginning_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, beginning_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning_f, 0 );
setEffRotateKey( spep_0 + 166, beginning_f, 0 );
setEffAlphaKey( spep_0 + 0, beginning_f, 255 );
setEffAlphaKey( spep_0 + 164, beginning_f, 255 );
setEffAlphaKey( spep_0 + 165, beginning_f, 255 );
setEffAlphaKey( spep_0 + 166, beginning_f, 0 );

-- ** エフェクト等 ** --
beginning_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, beginning_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, beginning_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning_b, 0 );
setEffRotateKey( spep_0 + 166, beginning_b, 0 );
setEffAlphaKey( spep_0 + 0, beginning_b, 255 );
setEffAlphaKey( spep_0 + 164, beginning_b, 255 );
setEffAlphaKey( spep_0 + 165, beginning_b, 255 );
setEffAlphaKey( spep_0 + 166, beginning_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--敵の動き
setDisp( spep_0-3 + 146, 1, 1);
setDisp( spep_0-1 + 168, 1, 0);

changeAnime( spep_0-3 + 146, 1, 104);

setMoveKey( spep_0-3 + 146, 1, -4.5, 26.2 , 0 );
setMoveKey( spep_0-3 + 148, 1, -6.1, 22.9 , 0 );
setMoveKey( spep_0-3 + 150, 1, -7.6, 19.6 , 0 );
setMoveKey( spep_0-3 + 152, 1, -9.1, 16.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, -10.6, 13 , 0 );
setMoveKey( spep_0-3 + 156, 1, -12.2, 9.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, -13.7, 6.4 , 0 );
setMoveKey( spep_0-3 + 160, 1, -15.2, 3.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, -16.7, -0.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, -18.2, -3.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, -19.8, -6.8 , 0 );
setMoveKey( spep_0-1 + 168, 1, -21.3, -10.1 , 0 );

setScaleKey( spep_0-3 + 146, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 148, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 150, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 152, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 154, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 156, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 158, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 160, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 162, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 164, 1, 2.65, 2.65 );
setScaleKey( spep_0-3 + 166, 1, 2.76, 2.76 );
setScaleKey( spep_0-1 + 168, 1, 2.88, 2.88 );

setRotateKey( spep_0-3 + 146, 1, 0 );
setRotateKey( spep_0-1 + 168, 1, 0 );

--SE
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);

--ダッシュ音
SE004 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 86, 1314, "",spep_0 + 348, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 78 );

--ダッシュ足音
SE006 = playSeVer2( spep_0 + 100, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 100, SE006, 158 );
SE007 = playSeVer2( spep_0 + 104, 1106, "", spep_0 + 104 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 104, SE007, 129 );
SE008 = playSeVer2( spep_0 + 110, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 110, SE008, 158 );
SE009 = playSeVer2( spep_0 + 112, 1106, "", spep_0 + 112 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 112, SE009, 151 );
SE010 = playSeVer2( spep_0 + 122, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 122, SE010, 158 );
SE011 = playSeVer2( spep_0 + 126, 1106, "", spep_0 + 126 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 126, SE011, 120 );
SE012 = playSeVer2( spep_0 + 134, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 134, SE012, 158 );
SE013 = playSeVer2( spep_0 + 134, 1106, "", spep_0 + 134 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 134, SE013, 150 );

--向かっていく
SE014 = playSeVer2( spep_0 + 138, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE014, 64 );
setTimeStretch( SE014, 0.67, 30, 4 );

--ダッシュ音
SE015 = playSeVer2( spep_0 + 154, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE015, 68 );
setBandpassFilter( spep_0 + 154, SE015, 980, 24000 );
SE016 = playSeVer2( spep_0 + 164, 9, "",spep_0 + 282, 0, 18, -1);
setTimeStretch( SE016, 1.67, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1= spep_0 + 166;
------------------------------------------------------
--前方ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, dash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 112, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 110, dash, 255 );
setEffAlphaKey( spep_1 + 111, dash, 255 );
setEffAlphaKey( spep_1 + 112, dash, 0 );

--SE
--ダッシュ足音
SE017 = playSeVer2( spep_1 + 14, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 14, SE017, 168 );
SE018 = playSeVer2( spep_1 + 18, 1106, "", spep_1 + 18 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 18, SE018, 145 );
SE019 = playSeVer2( spep_1 + 26, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 26, SE019, 155 );
SE020 = playSeVer2( spep_1 + 28, 1106, "", spep_1 + 28 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 28, SE020, 202 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
--ダッシュ足音
SE021 = playSeVer2( spep_1 + 38, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 38, SE021, 197 );
SE022 = playSeVer2( spep_1 + 40, 1106, "", spep_1 + 40 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 40, SE022, 151 );
SE023 = playSeVer2( spep_1 + 48, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 48, SE023, 193 );
SE024 = playSeVer2( spep_1 + 50, 1106, "", spep_1 + 50 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 50, SE024, 130 );
SE025 = playSeVer2( spep_1 + 56, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 56, SE025, 130 );
SE026 = playSeVer2( spep_1 + 58, 1106, "", spep_1 + 58 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 58, SE026, 145 );

--位置チェンジ
SE027 = playSeVer2( spep_1 + 52, 1003, "", 0, 0, 0, -1);

--ダッシュ足音
SE028 = playSeVer2( spep_1 + 66, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 66, SE028, 141 );
SE029 = playSeVer2( spep_1 + 68, 1106, "", spep_1 + 68 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 68, SE029, 170 );
SE030 = playSeVer2( spep_1 + 78, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 78, SE030, 204 );
SE031 = playSeVer2( spep_1 + 82, 1106, "", spep_1 + 82 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 82, SE031, 120 );
SE032 = playSeVer2( spep_1 + 88, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 88, SE032, 150 );
SE033 = playSeVer2( spep_1 + 92, 1106, "", spep_1 + 92 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 92, SE033, 151 );
SE034 = playSeVer2( spep_1 + 102, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 102, SE034, 132 );
SE035 = playSeVer2( spep_1 + 106, 1106, "", spep_1 + 106 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 106, SE035, 143 );
SE036 = playSeVer2( spep_1 + 112, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 112, SE036, 153 );

-- ** 次の準備 ** --
spep_2= spep_1 + 112;
------------------------------------------------------
--パンチ敵
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 86, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 82, panting_f, 255 );
setEffAlphaKey( spep_2 + 83, panting_f, 255 );
setEffAlphaKey( spep_2 + 84, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 86, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 84, panting_b, 255 );
setEffAlphaKey( spep_2 + 85, panting_b, 255 );
setEffAlphaKey( spep_2 + 86, panting_b, 0 );

--敵の動き
setDisp( spep_2-3 + 28, 1, 1);

changeAnime( spep_2-3 + 28, 1, 104);
changeAnime( spep_2-3 + 42, 1, 106);
changeAnime( spep_2-3 + 64, 1, 108);

setMoveKey( spep_2-3 + 28, 1, 22.2, -147.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 24, -124.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, 25.9, -100.8 , 0 );
setMoveKey( spep_2-3 + 36, 1, 27.7, -77.4 , 0 );
setMoveKey( spep_2-3 + 38, 1, 30.8, -61.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 31.4, -30.7 , 0 );
setMoveKey( spep_2-3 + 41, 1, 31.4, -30.7 , 0 );

setMoveKey( spep_2-3 + 42, 1, 68.9, 42.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, 78.5, 104.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 91, 43.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 13, 50.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 79.8, 15.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, 84.4, 70.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 72, 48.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 66.8, 61.4 , 0 );
setMoveKey( spep_2-3 + 58, 1, 73, 50.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 67.9, 63.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, 74.1, 52.5 , 0 );
setMoveKey( spep_2-3 + 63, 1, 74.1, 52.5 , 0 );

setMoveKey( spep_2-3 + 64, 1, 129.5, 43.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 140.8, 24.1 , 0 );
setMoveKey( spep_2-3 + 68, 1, 140.8, 28.8 , 0 );
setMoveKey( spep_2-3 + 70, 1, 152.1, 9.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, 152.2, 14.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, 163.5, -4.8 , 0 );
setMoveKey( spep_2-3 + 76, 1, 163.6, -0.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 175, -19.2 , 0 );
setMoveKey( spep_2-3 + 80, 1, 175.1, -14.5 , 0 );
setMoveKey( spep_2-3 + 82, 1, 186.5, -33.6 , 0 );
setMoveKey( spep_2-3 + 84, 1, 186.6, -29 , 0 );
setMoveKey( spep_2-3 + 86, 1, 198, -48.1 , 0 );
--setMoveKey( spep_2-3 + 88, 1, 198.2, -43.4 , 0 );

setScaleKey( spep_2-3 + 28, 1, 4, 4 );
setScaleKey( spep_2-3 + 32, 1, 3.84, 3.84 );
setScaleKey( spep_2-3 + 34, 1, 3.68, 3.68 );
setScaleKey( spep_2-3 + 36, 1, 3.52, 3.52 );
setScaleKey( spep_2-3 + 38, 1, 3.36, 3.36 );
setScaleKey( spep_2-3 + 40, 1, 3.2, 3.2 );
setScaleKey( spep_2-3 + 41, 1, 3.2, 3.2 );

setScaleKey( spep_2-3 + 42, 1, 2.55,2.55);
setScaleKey( spep_2-3 + 44, 1, 2.54,2.54);
setScaleKey( spep_2-3 + 46, 1, 2.53,2.53);
setScaleKey( spep_2-3 + 48, 1, 2.52,2.52);
setScaleKey( spep_2-3 + 50, 1, 2.52,2.52);
setScaleKey( spep_2-3 + 52, 1, 2.51,2.51);
setScaleKey( spep_2-3 + 54, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 56, 1, 2.49,2.49);
setScaleKey( spep_2-3 + 58, 1, 2.48,2.48);
setScaleKey( spep_2-3 + 60, 1, 2.48,2.48);
setScaleKey( spep_2-3 + 62, 1, 2.47,2.47);
setScaleKey( spep_2-3 + 63, 1, 2.47,2.47);

setScaleKey( spep_2-3 + 64, 1, 3.35, 3.35 );
setScaleKey( spep_2-3 + 66, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 68, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 70, 1, 2.61, 2.61 );
setScaleKey( spep_2-3 + 72, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 74, 1, 2.12, 2.12 );
setScaleKey( spep_2-3 + 76, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 78, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 80, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 82, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 84, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 86, 1, 0.65, 0.65 );
--setScaleKey( spep_2-4 + 88, 1, 0.4, 0.4 );

setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 41, 1, 0 );

setRotateKey( spep_2-3 + 42, 1, -45.9 );
setRotateKey( spep_2-3 + 63, 1, -45.9 );

setRotateKey( spep_2-3 + 64, 1, 3 );
setRotateKey( spep_2-3 + 66, 1, 3.7 );
setRotateKey( spep_2-3 + 68, 1, 4.3 );
setRotateKey( spep_2-3 + 70, 1, 5 );
setRotateKey( spep_2-3 + 72, 1, 5.6 );
setRotateKey( spep_2-3 + 74, 1, 6.3 );
setRotateKey( spep_2-3 + 76, 1, 6.9 );
setRotateKey( spep_2-3 + 78, 1, 7.6 );
setRotateKey( spep_2-3 + 80, 1, 8.2 );
setRotateKey( spep_2-3 + 82, 1, 8.9 );
setRotateKey( spep_2-3 + 84, 1, 9.5 );
setRotateKey( spep_2-3 + 86, 1, 10.2 );
--setRotateKey( spep_2-3 + 88, 1, 10.8 );

--SE
--ダッシュ音（追加）
SE005_2 = playSeVer2( spep_2 + 0 -26, 1314, "",spep_2 + 70, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0 -26, SE005_2 , 78 );

--振りかぶる
SE037 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 42, 0, 20, -1);

--ダッシュ足音
SE038 = playSeVer2( spep_2 + 2, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 2, SE038, 166 );

--振りかぶる
SE039 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);

--ダッシュ足音
SE040 = playSeVer2( spep_2 + 12, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 12, SE040, 216 );
--SE041 = playSeVer2( spep_2 + 16, 1106, "", spep_2 + 16 +6, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_2 + 16, SE041, 174 );
--SE042 = playSeVer2( spep_2 + 24, 1107, "", 0, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_2 + 24, SE042, 133 );
--SE043 = playSeVer2( spep_2 + 26, 1106, "", spep_2 + 26 +6, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_2 + 26, SE043, 214 );

--二人パンチ
SE044 = playSeVer2( spep_2 + 32, 1189, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 42, 1187, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 42, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE046, 83 );

--敵飛んでいく
SE047 = playSeVer2( spep_2 + 62, 1183, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 84;
------------------------------------------------------
--上空視点ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,  rush_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96,  rush_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,  rush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96,  rush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,  rush_f, 0 );
setEffRotateKey( spep_3 + 96,  rush_f, 0 );
setEffAlphaKey( spep_3 + 0,  rush_f, 255 );
setEffAlphaKey( spep_3 + 94,  rush_f, 255 );
setEffAlphaKey( spep_3 + 95,  rush_f, 255 );
setEffAlphaKey( spep_3 + 96,  rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,  rush_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96,  rush_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,  rush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96,  rush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,  rush_b, 0 );
setEffRotateKey( spep_3 + 96,  rush_b, 0 );
setEffAlphaKey( spep_3 + 0,  rush_b, 255 );
setEffAlphaKey( spep_3 + 94,  rush_b, 255 );
setEffAlphaKey( spep_3 + 95,  rush_b, 255 );
setEffAlphaKey( spep_3 + 96,  rush_b, 0 );

--敵の動き
--setDisp( spep_3, 1, 1 );
setDisp( spep_3-1 + 100, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -620, -604.2 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -444.2, -426.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -268.3, -248.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, -92.5, -70.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, 83.4, 106.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 88.7, 111.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 94.1, 116.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 99.4, 121.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 104.8, 126.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, 110.1, 131.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 115.5, 136.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 120.8, 141.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 28, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 186.1, 165.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 46, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 50, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-1 + 60, 1, 184.9, 172.8 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3-1 + 60, 1, 3, 3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 60, 1, 0 );

--SE
--二人ラッシュ
SE048 = playSeVer2( spep_3 + 20, 1009, "",spep_3 + 40, 0, 8, 0.6);
setSeVolumeByWorkId( spep_3 + 20, SE048, 87 );
SE049 = playSeVer2( spep_3 + 20, 1110, "",spep_3 + 42, 0, 12, 0.6);
setSeVolumeByWorkId( spep_3 + 20, SE049, 89 );
SE050 = playSeVer2( spep_3 + 26, 1110, "",spep_3 + 48, 0, 10, 0.6);
SE051 = playSeVer2( spep_3 + 32, 1010, "",spep_3 + 52, 0, 8, 0.6);
setSeVolumeByWorkId( spep_3 + 32, SE051, 82 );
SE052 = playSeVer2( spep_3 + 32, 1110, "",spep_3 + 52, 0, 8, 0.6);
setPitch( spep_3 + 32, SE052, -400 );
setTimeStretch( SE052, 0.73, 30, 4 );
SE053 = playSeVer2( spep_3 + 38, 1110, "",spep_3 + 60, 0, 10, 0.6);
SE054 = playSeVer2( spep_3 + 46, 1110, "",spep_3 + 66, 0, 10, 0.6);
setPitch( spep_3 + 46, SE054, -200 );
setTimeStretch( SE054, 0.87, 30, 4 );
SE055 = playSeVer2( spep_3 + 54, 1110, "",spep_3 + 74, 0, 12, 0.6);
SE056 = playSeVer2( spep_3 + 60, 1110, "",spep_3 + 82, 0, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 60, SE056, 70 );

--ピッコロ張り手
SE057 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 62, SE057, -400 );
setTimeStretch( SE057, 0.73, 30, 4 );
SE058 = playSeVer2( spep_3 + 62, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE058, 86 );
SE059 = playSeVer2( spep_3 + 82, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 82, SE059, -400 );
setTimeStretch( SE059, 0.73, 30, 4 );
SE060 = playSeVer2( spep_3 + 82, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 82, SE060, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 96;
------------------------------------------------------
--悟空蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  kick, 0, 0, 0 );
setEffMoveKey( spep_4 + 46,  kick, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  kick, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46,  kick, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  kick, 0 );
setEffRotateKey( spep_4 + 46,  kick, 0 );
setEffAlphaKey( spep_4 + 0,  kick, 255 );
setEffAlphaKey( spep_4 + 44,  kick, 255 );
setEffAlphaKey( spep_4 + 45,  kick, 255 );
setEffAlphaKey( spep_4 + 46,  kick, 0 );

--SE
--悟空飛び上がる
SE061 = playSeVer2( spep_4 + 0, 44, "", 0, 0, 0, -1);

--悟空キック
SE062 = playSeVer2( spep_4 + 20, 1004, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_4 + 30, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 46;
------------------------------------------------------
--高速ラッシュ敵より前
------------------------------------------------------
-- ** エフェクト等 ** --
rush2_f = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,  rush2_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 150,  rush2_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,  rush2_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 150,  rush2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,  rush2_f, 0 );
setEffRotateKey( spep_5 + 150,  rush2_f, 0 );
setEffAlphaKey( spep_5 + 0,  rush2_f, 255 );
setEffAlphaKey( spep_5 + 150,  rush2_f, 255 );

-- ** エフェクト等 ** --
rush2_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,  rush2_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 150,  rush2_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,  rush2_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 150,  rush2_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,  rush2_b, 0 );
setEffRotateKey( spep_5 + 150,  rush2_b, 0 );
setEffAlphaKey( spep_5 + 0,  rush2_b, 255 );
setEffAlphaKey( spep_5 + 150,  rush2_b, 255 );

--敵の動き
setDisp( spep_5-3 + 40, 1, 1);
setDisp( spep_5-1 + 148, 1, 0);

changeAnime( spep_5-3 + 40, 1, 106);
changeAnime( spep_5-3 + 42, 1, 108);
changeAnime( spep_5-1 + 46, 1, 8);
changeAnime( spep_5-1 + 54, 1, 108);
changeAnime( spep_5-1 + 58, 1, 8);
changeAnime( spep_5-1 + 64, 1, 108);
changeAnime( spep_5-1 + 70, 1, 8);
changeAnime( spep_5-1 + 78, 1, 108);

setMoveKey( spep_5-3 + 40, 1, -0.9, 27.8 , 0 );
setMoveKey( spep_5-3 + 41, 1, -0.9, 27.8 , 0 );

setMoveKey( spep_5-3 + 42, 1, -1, 30.9 , 0 );
setMoveKey( spep_5-3 + 44, 1, -10, 58.9 , 0 );
setMoveKey( spep_5-3 + 46, 1, 41.1, 21 , 0 );
setMoveKey( spep_5-3 + 48, 1, -19.8, 21 , 0 );
setMoveKey( spep_5-3 + 50, 1, -23.8, 51.5 , 0 );
setMoveKey( spep_5-3 + 52, 1, -46.7, 55.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, -72.6, 74.2 , 0 );
setMoveKey( spep_5-3 + 55, 1, -72.6, 74.2 , 0 );

setMoveKey( spep_5-3 + 56, 1, 0.4, 45.8 , 0 );
setMoveKey( spep_5-3 + 58, 1, 22.3, 68 , 0 );
setMoveKey( spep_5-3 + 60, 1, -0.1, 59.6 , 0 );
setMoveKey( spep_5-3 + 62, 1, -57.7, 95 , 0 );
setMoveKey( spep_5-3 + 64, 1, -56.4, 64.7 , 0 );
setMoveKey( spep_5-3 + 65, 1, -56.4, 64.7 , 0 );

setMoveKey( spep_5-3 + 66, 1, -20.3, 49.7 , 0 );
setMoveKey( spep_5-3 + 68, 1, 11.6, 78.6 , 0 );
setMoveKey( spep_5-3 + 70, 1, 25.4, 80.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, 0.1, 78.8 , 0 );
setMoveKey( spep_5-3 + 74, 1, -27.2, 91.1 , 0 );
setMoveKey( spep_5-3 + 76, 1, -55.1, 103.6 , 0 );
setMoveKey( spep_5-3 + 78, 1, -83.6, 116.3 , 0 );
setMoveKey( spep_5-3 + 79, 1, -83.6, 116.3 , 0 );

setMoveKey( spep_5-3 + 80, 1, -6.7, 112.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, -3.9, 111.7 , 0 );
setMoveKey( spep_5-3 + 84, 1, -1, 111 , 0 );
setMoveKey( spep_5-3 + 86, 1, 2, 110.3 , 0 );
setMoveKey( spep_5-3 + 88, 1, 5, 109.5 , 0 );
setMoveKey( spep_5-3 + 90, 1, 8.1, 108.6 , 0 );
setMoveKey( spep_5-3 + 92, 1, 11.2, 107.6 , 0 );
setMoveKey( spep_5-3 + 94, 1, 14.5, 106.5 , 0 );
setMoveKey( spep_5-3 + 96, 1, 17.7, 105.4 , 0 );
setMoveKey( spep_5-3 + 98, 1, 21.1, 104.1 , 0 );
setMoveKey( spep_5-3 + 100, 1, 24.5, 102.8 , 0 );
setMoveKey( spep_5-3 + 102, 1, 27.8, 98.2 , 0 );
setMoveKey( spep_5-3 + 104, 1, 31.1, 93.6 , 0 );
setMoveKey( spep_5-3 + 106, 1, 34.5, 89 , 0 );
setMoveKey( spep_5-3 + 108, 1, 37.9, 84.3 , 0 );
setMoveKey( spep_5-3 + 110, 1, 41.4, 79.6 , 0 );
setMoveKey( spep_5-3 + 112, 1, 41.6, 79.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, 43, 71.5 , 0 );
setMoveKey( spep_5-3 + 116, 1, 42, 78.8 , 0 );
setMoveKey( spep_5-3 + 118, 1, 62.9, 51.5 , 0 );
setMoveKey( spep_5-3 + 120, 1, 22.9, 58.7 , 0 );
setMoveKey( spep_5-3 + 122, 1, 42.6, 77.9 , 0 );
setMoveKey( spep_5-3 + 124, 1, 44, 70.2 , 0 );
setMoveKey( spep_5-3 + 126, 1, 43, 77.4 , 0 );
setMoveKey( spep_5-3 + 128, 1, 43.2, 77.1 , 0 );
setMoveKey( spep_5-3 + 130, 1, 43.4, 76.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, 43.6, 76.6 , 0 );
setMoveKey( spep_5-3 + 134, 1, 43.8, 76.3 , 0 );
setMoveKey( spep_5-3 + 136, 1, 44, 76 , 0 );
setMoveKey( spep_5-3 + 138, 1, 44.2, 75.7 , 0 );
setMoveKey( spep_5-3 + 140, 1, 44.4, 75.5 , 0 );
setMoveKey( spep_5-3 + 142, 1, 44.6, 75.2 , 0 );
setMoveKey( spep_5-3 + 144, 1, 66, 28.1 , 0 );
setMoveKey( spep_5-3 + 146, 1, 78.9, -0.2 , 0 );
setMoveKey( spep_5-1 + 148, 1, 83.2, -9.6 , 0 );

setScaleKey( spep_5-3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 41, 1, 1.54, 1.54 );

setScaleKey( spep_5-3 + 42, 1, 2.2,2.2);
setScaleKey( spep_5-3 + 44, 1, 2.23,2.23);
setScaleKey( spep_5-3 + 46, 1, 2.26,2.26);
setScaleKey( spep_5-3 + 48, 1, 2.28,2.28);
setScaleKey( spep_5-3 + 50, 1, 2.32,2.32);
setScaleKey( spep_5-3 + 52, 1, 2.35,2.35);
setScaleKey( spep_5-3 + 54, 1, 2.39,2.39);
setScaleKey( spep_5-3 + 55, 1, 2.39,2.39);
setScaleKey( spep_5-3 + 56, 1, 2.41,2.41);
setScaleKey( spep_5-3 + 58, 1, 2.44,2.44);
setScaleKey( spep_5-3 + 60, 1, 2.48,2.48);
setScaleKey( spep_5-3 + 62, 1, 2.5,2.5);
setScaleKey( spep_5-3 + 64, 1, 2.54,2.54);
setScaleKey( spep_5-3 + 65, 1, 2.54,2.54);
setScaleKey( spep_5-3 + 66, 1, 2.57,2.57);
setScaleKey( spep_5-3 + 68, 1, 2.61,2.61);
setScaleKey( spep_5-3 + 70, 1, 2.63,2.63);
setScaleKey( spep_5-3 + 72, 1, 2.66,2.66);
setScaleKey( spep_5-3 + 74, 1, 2.7,2.7);
setScaleKey( spep_5-3 + 76, 1, 2.72,2.72);
setScaleKey( spep_5-3 + 78, 1, 2.76,2.76);
setScaleKey( spep_5-3 + 79, 1, 2.76,2.76);

--[[
setScaleKey( spep_5-3 + 80, 1, 2.33,2.33);
setScaleKey( spep_5-3 + 82, 1, 2.37,2.37);
setScaleKey( spep_5-3 + 84, 1, 2.41,2.41);
setScaleKey( spep_5-3 + 86, 1, 2.46,2.46);
setScaleKey( spep_5-3 + 88, 1, 2.5,2.5);
setScaleKey( spep_5-3 + 90, 1, 2.55,2.55);
setScaleKey( spep_5-3 + 92, 1, 2.6,2.6);
setScaleKey( spep_5-3 + 94, 1, 2.64,2.64);
setScaleKey( spep_5-3 + 96, 1, 2.68,2.68);
setScaleKey( spep_5-3 + 98, 1, 2.73,2.73);
setScaleKey( spep_5-3 + 100, 1, 2.78,2.78);
setScaleKey( spep_5-3 + 102, 1, 2.81,2.81);
setScaleKey( spep_5-3 + 104, 1, 2.85,2.85);
]]
--setScaleKey( spep_5-3 + 106, 1, 2.88,2.88);
setScaleKey( spep_5-3 + 108, 1, 2.91,2.91);
setScaleKey( spep_5-3 + 110, 1, 2.94,2.94);
setScaleKey( spep_5-3 + 112, 1, 2.96,2.96);
setScaleKey( spep_5-3 + 114, 1, 2.97,2.97);
setScaleKey( spep_5-3 + 116, 1, 2.98,2.98);
setScaleKey( spep_5-3 + 118, 1, 3,3);
setScaleKey( spep_5-3 + 120, 1, 3.01,3.01);
setScaleKey( spep_5-3 + 122, 1, 3.03,3.03);
setScaleKey( spep_5-3 + 124, 1, 3.04,3.04);
setScaleKey( spep_5-3 + 126, 1, 3.06,3.06);
setScaleKey( spep_5-3 + 128, 1, 3.07,3.07);
setScaleKey( spep_5-3 + 130, 1, 3.08,3.08);
setScaleKey( spep_5-3 + 132, 1, 3.1,3.1);
setScaleKey( spep_5-3 + 134, 1, 3.11,3.11);
setScaleKey( spep_5-3 + 136, 1, 3.12,3.12);
setScaleKey( spep_5-3 + 138, 1, 3.13,3.13);
setScaleKey( spep_5-3 + 140, 1, 3.15,3.15);
setScaleKey( spep_5-3 + 142, 1, 3.16,3.16);
setScaleKey( spep_5-3 + 144, 1, 4.6,4.6);
setScaleKey( spep_5-3 + 146, 1, 5.47,5.47);
setScaleKey( spep_5-1 + 148, 1, 5.76,5.76);

setRotateKey( spep_5-3 + 40, 1, -48.9 );
setRotateKey( spep_5-3 + 41, 1, -48.9 );

setRotateKey( spep_5-3 + 42, 1, -13 );
setRotateKey( spep_5-3 + 44, 1, -11.3 );
setRotateKey( spep_5-3 + 46, 1, -9.5 );
setRotateKey( spep_5-3 + 48, 1, 0 );
setRotateKey( spep_5-3 + 55, 1, 0 );

setRotateKey( spep_5-3 + 56, 1, -13 );
setRotateKey( spep_5-3 + 58, 1, -9.5 );
setRotateKey( spep_5-3 + 60, 1, 0 );
setRotateKey( spep_5-3 + 65, 1, 0 );

setRotateKey( spep_5-3 + 66, 1, -13 );
setRotateKey( spep_5-3 + 68, 1, -11.3 );
setRotateKey( spep_5-3 + 70, 1, -9.5 );
setRotateKey( spep_5-3 + 72, 1, 0 );
setRotateKey( spep_5-3 + 79, 1, 0 );

setRotateKey( spep_5-3 + 80, 1, -13 );
setRotateKey( spep_5-3 + 82, 1, -12.2 );
setRotateKey( spep_5-3 + 84, 1, -11.3 );
setRotateKey( spep_5-3 + 86, 1, -10.4 );
setRotateKey( spep_5-3 + 88, 1, -9.6 );
setRotateKey( spep_5-3 + 90, 1, -8.7 );
setRotateKey( spep_5-3 + 92, 1, -7.8 );
setRotateKey( spep_5-3 + 94, 1, -6.9 );
setRotateKey( spep_5-3 + 96, 1, -6.1 );
setRotateKey( spep_5-3 + 98, 1, -5.2 );
setRotateKey( spep_5-3 + 100, 1, -4.3 );
setRotateKey( spep_5-3 + 102, 1, -3.5 );
setRotateKey( spep_5-3 + 104, 1, -2.6 );
setRotateKey( spep_5-3 + 106, 1, -1.7 );
setRotateKey( spep_5-3 + 108, 1, -0.9 );
setRotateKey( spep_5-3 + 110, 1, 0 );
setRotateKey( spep_5-1 + 148, 1, 0 );

--SE
--高速移動1
SE064 = playSeVer2( spep_5 + 0, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE064, 126 );
SE065 = playSeVer2( spep_5 + 0, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE065, 69 );
SE066 = playSeVer2( spep_5 + 0, 1179, "",spep_5 + 44, 0, 20, -1);

--高速移動2
SE067 = playSeVer2( spep_5 + 20, 1048, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_5 + 20, 1109, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_5 + 20, 1179, "",spep_5 + 70, 0, 24, -1);

--高速アタック
SE070 = playSeVer2( spep_5 + 40, 1110, "",spep_5 + 64, 0, 8, 0.6);
SE071 = playSeVer2( spep_5 + 40, 1002, "",spep_5 + 68, 0, 10, 0.6);
SE072 = playSeVer2( spep_5 + 46, 1110, "",spep_5 + 70, 0, 8, 0.6);
SE073 = playSeVer2( spep_5 + 56, 1110, "",spep_5 + 78, 0, 8, 0.6);
SE074 = playSeVer2( spep_5 + 62, 1110, "",spep_5 + 90, 0, 8, 0.6);
SE075 = playSeVer2( spep_5 + 56, 1025, "",spep_5 + 118, 0, 14, 0.6);
SE076 = playSeVer2( spep_5 + 72, 1110, "", 0, 0, 0, 0.6);

--瞬間移動
SE077 = playSeVer2( spep_5 + 106, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒 背景

--白フェード
entryFade( spep_5 +142 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 150;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
--ラストパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0,  finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 218,  finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,  finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 218,  finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,  finish_f, 0 );
setEffRotateKey( spep_7 + 218,  finish_f, 0 );
setEffAlphaKey( spep_7 + 0,  finish_f, 255 );
setEffAlphaKey( spep_7 + 218,  finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0,  finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 218,  finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,  finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 218,  finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,  finish_b, 0 );
setEffRotateKey( spep_7 + 218,  finish_b, 0 );
setEffAlphaKey( spep_7 + 0,  finish_b, 255 );
setEffAlphaKey( spep_7 + 218,  finish_b, 255 );

--敵の動き
setDisp( spep_7-3 + 70, 1, 1);
setDisp( spep_7-1 + 86, 1, 0);

changeAnime( spep_7-3 + 70, 1, 105);

setMoveKey( spep_7-3 + 70, 1, -137.9, -222.9 , 0 );
setMoveKey( spep_7-3 + 72, 1, -119.5, -216.4 , 0 );
setMoveKey( spep_7-3 + 74, 1, -101.4, -209.9 , 0 );
setMoveKey( spep_7-3 + 76, 1, -83.5, -203.6 , 0 );
setMoveKey( spep_7-3 + 78, 1, -65.9, -197.3 , 0 );
setMoveKey( spep_7-3 + 80, 1, -48.6, -191 , 0 );
setMoveKey( spep_7-3 + 82, 1, -31.6, -184.8 , 0 );
setMoveKey( spep_7-3 + 84, 1, -14.8, -178.7 , 0 );
setMoveKey( spep_7-1 + 86, 1, 1.8, -172.6 , 0 );

setScaleKey( spep_7-3 + 70, 1, 8.34, 8.34 );
setScaleKey( spep_7-3 + 72, 1, 7.27, 7.27 );
setScaleKey( spep_7-3 + 74, 1, 6.21, 6.21 );
setScaleKey( spep_7-3 + 76, 1, 5.18, 5.18 );
setScaleKey( spep_7-3 + 78, 1, 4.16, 4.16 );
setScaleKey( spep_7-3 + 80, 1, 3.15, 3.15 );
setScaleKey( spep_7-3 + 82, 1, 2.16, 2.16 );
setScaleKey( spep_7-3 + 84, 1, 1.18, 1.18 );
setScaleKey( spep_7-1 + 86, 1, 0.22, 0.22 );

setRotateKey( spep_7-3 + 70, 1, 0 );
setRotateKey( spep_7-1 + 86, 1, 0 );

--SE
--振りかぶる
SE079 = playSeVer2( spep_7 + 0, 1116, "",spep_7 + 46, 0, 20, -1);
SE080 = playSeVer2( spep_7 + 2, 1117, "",spep_7 + 46, 0, 20, -1);

--二人パンチ
SE081 = playSeVer2( spep_7 + 28, 1187, "", 0, 0, 0, -1);
SE082 = playSeVer2( spep_7 + 28, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE083 = playSeVer2( spep_7 + 56, 1121, "",spep_7 + 112, 0, 20, -1);

--地面激突
SE084 = playSeVer2( spep_7 + 86, 1159, "", 0, 0, 0, -1);
SE085 = playSeVer2( spep_7 + 86, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_7+86);
endPhase( spep_7 + 208 ); 
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, beginning_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, beginning_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning_f, 0 );
setEffRotateKey( spep_0 + 166, beginning_f, 0 );
setEffAlphaKey( spep_0 + 0, beginning_f, 255 );
setEffAlphaKey( spep_0 + 164, beginning_f, 255 );
setEffAlphaKey( spep_0 + 165, beginning_f, 255 );
setEffAlphaKey( spep_0 + 166, beginning_f, 0 );

-- ** エフェクト等 ** --
beginning_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 166, beginning_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, beginning_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning_b, 0 );
setEffRotateKey( spep_0 + 166, beginning_b, 0 );
setEffAlphaKey( spep_0 + 0, beginning_b, 255 );
setEffAlphaKey( spep_0 + 164, beginning_b, 255 );
setEffAlphaKey( spep_0 + 165, beginning_b, 255 );
setEffAlphaKey( spep_0 + 166, beginning_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--敵の動き
setDisp( spep_0-3 + 146, 1, 1);
setDisp( spep_0-1 + 168, 1, 0);

changeAnime( spep_0-3 + 146, 1, 104);

setMoveKey( spep_0-3 + 146, 1, -4.5, 26.2 , 0 );
setMoveKey( spep_0-3 + 148, 1, -6.1, 22.9 , 0 );
setMoveKey( spep_0-3 + 150, 1, -7.6, 19.6 , 0 );
setMoveKey( spep_0-3 + 152, 1, -9.1, 16.3 , 0 );
setMoveKey( spep_0-3 + 154, 1, -10.6, 13 , 0 );
setMoveKey( spep_0-3 + 156, 1, -12.2, 9.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, -13.7, 6.4 , 0 );
setMoveKey( spep_0-3 + 160, 1, -15.2, 3.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, -16.7, -0.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, -18.2, -3.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, -19.8, -6.8 , 0 );
setMoveKey( spep_0-1 + 168, 1, -21.3, -10.1 , 0 );

setScaleKey( spep_0-3 + 146, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 148, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 150, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 152, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 154, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 156, 1, 2.18, 2.18 );
setScaleKey( spep_0-3 + 158, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 160, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 162, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 164, 1, 2.65, 2.65 );
setScaleKey( spep_0-3 + 166, 1, 2.76, 2.76 );
setScaleKey( spep_0-1 + 168, 1, 2.88, 2.88 );

setRotateKey( spep_0-3 + 146, 1, 0 );
setRotateKey( spep_0-1 + 168, 1, 0 );

--SE
--顔カットイン
--SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);

--ダッシュ音
SE004 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 86, 1314, "",spep_0 + 348, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 78 );

--ダッシュ足音
SE006 = playSeVer2( spep_0 + 100, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 100, SE006, 158 );
SE007 = playSeVer2( spep_0 + 104, 1106, "", spep_0 + 104 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 104, SE007, 129 );
SE008 = playSeVer2( spep_0 + 110, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 110, SE008, 158 );
SE009 = playSeVer2( spep_0 + 112, 1106, "", spep_0 + 112 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 112, SE009, 151 );
SE010 = playSeVer2( spep_0 + 122, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 122, SE010, 158 );
SE011 = playSeVer2( spep_0 + 126, 1106, "", spep_0 + 126 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 126, SE011, 120 );
SE012 = playSeVer2( spep_0 + 134, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 134, SE012, 158 );
SE013 = playSeVer2( spep_0 + 134, 1106, "", spep_0 + 134 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 134, SE013, 150 );

--向かっていく
SE014 = playSeVer2( spep_0 + 138, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE014, 64 );
setTimeStretch( SE014, 0.67, 30, 4 );

--ダッシュ音
SE015 = playSeVer2( spep_0 + 154, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE015, 68 );
setBandpassFilter( spep_0 + 154, SE015, 980, 24000 );
SE016 = playSeVer2( spep_0 + 164, 9, "",spep_0 + 282, 0, 18, -1);
setTimeStretch( SE016, 1.67, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1= spep_0 + 166;
------------------------------------------------------
--前方ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_1 + 112, dash, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 112, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 110, dash, 255 );
setEffAlphaKey( spep_1 + 111, dash, 255 );
setEffAlphaKey( spep_1 + 112, dash, 0 );

--SE
--ダッシュ足音
SE017 = playSeVer2( spep_1 + 14, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 14, SE017, 168 );
SE018 = playSeVer2( spep_1 + 18, 1106, "", spep_1 + 18 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 18, SE018, 145 );
SE019 = playSeVer2( spep_1 + 26, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 26, SE019, 155 );
SE020 = playSeVer2( spep_1 + 28, 1106, "", spep_1 + 28 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 28, SE020, 202 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
--ダッシュ足音
SE021 = playSeVer2( spep_1 + 38, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 38, SE021, 197 );
SE022 = playSeVer2( spep_1 + 40, 1106, "", spep_1 + 40 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 40, SE022, 151 );
SE023 = playSeVer2( spep_1 + 48, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 48, SE023, 193 );
SE024 = playSeVer2( spep_1 + 50, 1106, "", spep_1 + 50 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 50, SE024, 130 );
SE025 = playSeVer2( spep_1 + 56, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 56, SE025, 130 );
SE026 = playSeVer2( spep_1 + 58, 1106, "", spep_1 + 58 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 58, SE026, 145 );

--位置チェンジ
SE027 = playSeVer2( spep_1 + 52, 1003, "", 0, 0, 0, -1);

--ダッシュ足音
SE028 = playSeVer2( spep_1 + 66, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 66, SE028, 141 );
SE029 = playSeVer2( spep_1 + 68, 1106, "", spep_1 + 68 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 68, SE029, 170 );
SE030 = playSeVer2( spep_1 + 78, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 78, SE030, 204 );
SE031 = playSeVer2( spep_1 + 82, 1106, "", spep_1 + 82 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 82, SE031, 120 );
SE032 = playSeVer2( spep_1 + 88, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 88, SE032, 150 );
SE033 = playSeVer2( spep_1 + 92, 1106, "", spep_1 + 92 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 92, SE033, 151 );
SE034 = playSeVer2( spep_1 + 102, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 102, SE034, 132 );
SE035 = playSeVer2( spep_1 + 106, 1106, "", spep_1 + 106 +6, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 106, SE035, 143 );
SE036 = playSeVer2( spep_1 + 112, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 112, SE036, 153 );

-- ** 次の準備 ** --
spep_2= spep_1 + 112;
------------------------------------------------------
--パンチ敵
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 86, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 82, panting_f, 255 );
setEffAlphaKey( spep_2 + 83, panting_f, 255 );
setEffAlphaKey( spep_2 + 84, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, panting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 86, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 84, panting_b, 255 );
setEffAlphaKey( spep_2 + 85, panting_b, 255 );
setEffAlphaKey( spep_2 + 86, panting_b, 0 );

--敵の動き
setDisp( spep_2-3 + 28, 1, 1);

changeAnime( spep_2-3 + 28, 1, 104);
changeAnime( spep_2-3 + 42, 1, 106);
changeAnime( spep_2-3 + 64, 1, 108);

setMoveKey( spep_2-3 + 28, 1, 22.2, -147.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, 24, -124.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, 25.9, -100.8 , 0 );
setMoveKey( spep_2-3 + 36, 1, 27.7, -77.4 , 0 );
setMoveKey( spep_2-3 + 38, 1, 30.8, -61.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 31.4, -30.7 , 0 );
setMoveKey( spep_2-3 + 41, 1, 31.4, -30.7 , 0 );

setMoveKey( spep_2-3 + 42, 1, 68.9, 42.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, 78.5, 104.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 91, 43.1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 13, 50.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 79.8, 15.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, 84.4, 70.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 72, 48.5 , 0 );
setMoveKey( spep_2-3 + 56, 1, 66.8, 61.4 , 0 );
setMoveKey( spep_2-3 + 58, 1, 73, 50.5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 67.9, 63.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, 74.1, 52.5 , 0 );
setMoveKey( spep_2-3 + 63, 1, 74.1, 52.5 , 0 );

setMoveKey( spep_2-3 + 64, 1, 129.5, 43.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 140.8, 24.1 , 0 );
setMoveKey( spep_2-3 + 68, 1, 140.8, 28.8 , 0 );
setMoveKey( spep_2-3 + 70, 1, 152.1, 9.7 , 0 );
setMoveKey( spep_2-3 + 72, 1, 152.2, 14.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, 163.5, -4.8 , 0 );
setMoveKey( spep_2-3 + 76, 1, 163.6, -0.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, 175, -19.2 , 0 );
setMoveKey( spep_2-3 + 80, 1, 175.1, -14.5 , 0 );
setMoveKey( spep_2-3 + 82, 1, 186.5, -33.6 , 0 );
setMoveKey( spep_2-3 + 84, 1, 186.6, -29 , 0 );
setMoveKey( spep_2-3 + 86, 1, 198, -48.1 , 0 );
--setMoveKey( spep_2-3 + 88, 1, 198.2, -43.4 , 0 );

setScaleKey( spep_2-3 + 28, 1, 4, 4 );
setScaleKey( spep_2-3 + 32, 1, 3.84, 3.84 );
setScaleKey( spep_2-3 + 34, 1, 3.68, 3.68 );
setScaleKey( spep_2-3 + 36, 1, 3.52, 3.52 );
setScaleKey( spep_2-3 + 38, 1, 3.36, 3.36 );
setScaleKey( spep_2-3 + 40, 1, 3.2, 3.2 );
setScaleKey( spep_2-3 + 41, 1, 3.2, 3.2 );

setScaleKey( spep_2-3 + 42, 1, 2.55,2.55);
setScaleKey( spep_2-3 + 44, 1, 2.54,2.54);
setScaleKey( spep_2-3 + 46, 1, 2.53,2.53);
setScaleKey( spep_2-3 + 48, 1, 2.52,2.52);
setScaleKey( spep_2-3 + 50, 1, 2.52,2.52);
setScaleKey( spep_2-3 + 52, 1, 2.51,2.51);
setScaleKey( spep_2-3 + 54, 1, 2.5,2.5);
setScaleKey( spep_2-3 + 56, 1, 2.49,2.49);
setScaleKey( spep_2-3 + 58, 1, 2.48,2.48);
setScaleKey( spep_2-3 + 60, 1, 2.48,2.48);
setScaleKey( spep_2-3 + 62, 1, 2.47,2.47);
setScaleKey( spep_2-3 + 63, 1, 2.47,2.47);

setScaleKey( spep_2-3 + 64, 1, 3.35, 3.35 );
setScaleKey( spep_2-3 + 66, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 68, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 70, 1, 2.61, 2.61 );
setScaleKey( spep_2-3 + 72, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 74, 1, 2.12, 2.12 );
setScaleKey( spep_2-3 + 76, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 78, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 80, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 82, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 84, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 86, 1, 0.65, 0.65 );
--setScaleKey( spep_2-4 + 88, 1, 0.4, 0.4 );

setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 41, 1, 0 );

setRotateKey( spep_2-3 + 42, 1, -45.9 );
setRotateKey( spep_2-3 + 63, 1, -45.9 );

setRotateKey( spep_2-3 + 64, 1, 3 );
setRotateKey( spep_2-3 + 66, 1, 3.7 );
setRotateKey( spep_2-3 + 68, 1, 4.3 );
setRotateKey( spep_2-3 + 70, 1, 5 );
setRotateKey( spep_2-3 + 72, 1, 5.6 );
setRotateKey( spep_2-3 + 74, 1, 6.3 );
setRotateKey( spep_2-3 + 76, 1, 6.9 );
setRotateKey( spep_2-3 + 78, 1, 7.6 );
setRotateKey( spep_2-3 + 80, 1, 8.2 );
setRotateKey( spep_2-3 + 82, 1, 8.9 );
setRotateKey( spep_2-3 + 84, 1, 9.5 );
setRotateKey( spep_2-3 + 86, 1, 10.2 );
--setRotateKey( spep_2-3 + 88, 1, 10.8 );

--SE
--ダッシュ音（追加）
SE005_2 = playSeVer2( spep_2 + 0 -26, 1314, "",spep_2 + 70, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0 -26, SE005_2 , 78 );

--振りかぶる
SE037 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 42, 0, 20, -1);

--ダッシュ足音
SE038 = playSeVer2( spep_2 + 2, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 2, SE038, 166 );

--振りかぶる
SE039 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);

--ダッシュ足音
SE040 = playSeVer2( spep_2 + 12, 1107, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 12, SE040, 216 );
--SE041 = playSeVer2( spep_2 + 16, 1106, "", spep_2 + 16 +6, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_2 + 16, SE041, 174 );
--SE042 = playSeVer2( spep_2 + 24, 1107, "", 0, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_2 + 24, SE042, 133 );
--SE043 = playSeVer2( spep_2 + 26, 1106, "", spep_2 + 26 +6, 0, 0, 0.5);
--setSeVolumeByWorkId( spep_2 + 26, SE043, 214 );

--二人パンチ
SE044 = playSeVer2( spep_2 + 32, 1189, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 42, 1187, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 42, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE046, 83 );

--敵飛んでいく
SE047 = playSeVer2( spep_2 + 62, 1183, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 84;
------------------------------------------------------
--上空視点ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,  rush_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 96,  rush_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,  rush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96,  rush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,  rush_f, 0 );
setEffRotateKey( spep_3 + 96,  rush_f, 0 );
setEffAlphaKey( spep_3 + 0,  rush_f, 255 );
setEffAlphaKey( spep_3 + 94,  rush_f, 255 );
setEffAlphaKey( spep_3 + 95,  rush_f, 255 );
setEffAlphaKey( spep_3 + 96,  rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,  rush_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 96,  rush_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,  rush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96,  rush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,  rush_b, 0 );
setEffRotateKey( spep_3 + 96,  rush_b, 0 );
setEffAlphaKey( spep_3 + 0,  rush_b, 255 );
setEffAlphaKey( spep_3 + 94,  rush_b, 255 );
setEffAlphaKey( spep_3 + 95,  rush_b, 255 );
setEffAlphaKey( spep_3 + 96,  rush_b, 0 );

--敵の動き
--setDisp( spep_3, 1, 1 );
setDisp( spep_3-1 + 100, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -620, -604.2 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -444.2, -426.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -268.3, -248.6 , 0 );
setMoveKey( spep_3-3 + 6, 1, -92.5, -70.8 , 0 );
setMoveKey( spep_3-3 + 8, 1, 83.4, 106.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 88.7, 111.9 , 0 );
setMoveKey( spep_3-3 + 12, 1, 94.1, 116.9 , 0 );
setMoveKey( spep_3-3 + 14, 1, 99.4, 121.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 104.8, 126.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, 110.1, 131.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 115.5, 136.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 120.8, 141.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 28, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 30, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 38, 1, 186.1, 165.3 , 0 );
setMoveKey( spep_3-3 + 40, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 46, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-3 + 50, 1, 118.6, 143.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 153, 115.7 , 0 );
setMoveKey( spep_3-3 + 54, 1, 184.9, 172.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 119.9, 136.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, 151.8, 123.2 , 0 );
setMoveKey( spep_3-1 + 60, 1, 184.9, 172.8 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3-1 + 60, 1, 3, 3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 60, 1, 0 );

--SE
--二人ラッシュ
SE048 = playSeVer2( spep_3 + 20, 1009, "",spep_3 + 40, 0, 8, 0.6);
setSeVolumeByWorkId( spep_3 + 20, SE048, 87 );
SE049 = playSeVer2( spep_3 + 20, 1110, "",spep_3 + 42, 0, 12, 0.6);
setSeVolumeByWorkId( spep_3 + 20, SE049, 89 );
SE050 = playSeVer2( spep_3 + 26, 1110, "",spep_3 + 48, 0, 10, 0.6);
SE051 = playSeVer2( spep_3 + 32, 1010, "",spep_3 + 52, 0, 8, 0.6);
setSeVolumeByWorkId( spep_3 + 32, SE051, 82 );
SE052 = playSeVer2( spep_3 + 32, 1110, "",spep_3 + 52, 0, 8, 0.6);
setPitch( spep_3 + 32, SE052, -400 );
setTimeStretch( SE052, 0.73, 30, 4 );
SE053 = playSeVer2( spep_3 + 38, 1110, "",spep_3 + 60, 0, 10, 0.6);
SE054 = playSeVer2( spep_3 + 46, 1110, "",spep_3 + 66, 0, 10, 0.6);
setPitch( spep_3 + 46, SE054, -200 );
setTimeStretch( SE054, 0.87, 30, 4 );
SE055 = playSeVer2( spep_3 + 54, 1110, "",spep_3 + 74, 0, 12, 0.6);
SE056 = playSeVer2( spep_3 + 60, 1110, "",spep_3 + 82, 0, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 60, SE056, 70 );

--ピッコロ張り手
SE057 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 62, SE057, -400 );
setTimeStretch( SE057, 0.73, 30, 4 );
SE058 = playSeVer2( spep_3 + 62, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE058, 86 );
SE059 = playSeVer2( spep_3 + 82, 1110, "", 0, 0, 0, -1);
setPitch( spep_3 + 82, SE059, -400 );
setTimeStretch( SE059, 0.73, 30, 4 );
SE060 = playSeVer2( spep_3 + 82, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 82, SE060, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 96;
------------------------------------------------------
--悟空蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  kick, 0, 0, 0 );
setEffMoveKey( spep_4 + 46,  kick, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  kick, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46,  kick, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  kick, 0 );
setEffRotateKey( spep_4 + 46,  kick, 0 );
setEffAlphaKey( spep_4 + 0,  kick, 255 );
setEffAlphaKey( spep_4 + 44,  kick, 255 );
setEffAlphaKey( spep_4 + 45,  kick, 255 );
setEffAlphaKey( spep_4 + 46,  kick, 0 );

--SE
--悟空飛び上がる
SE061 = playSeVer2( spep_4 + 0, 44, "", 0, 0, 0, -1);

--悟空キック
SE062 = playSeVer2( spep_4 + 20, 1004, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_4 + 30, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 46;
------------------------------------------------------
--高速ラッシュ敵より前
------------------------------------------------------
-- ** エフェクト等 ** --
rush2_f = entryEffect( spep_5 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,  rush2_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 150,  rush2_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,  rush2_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 150,  rush2_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0,  rush2_f, 0 );
setEffRotateKey( spep_5 + 150,  rush2_f, 0 );
setEffAlphaKey( spep_5 + 0,  rush2_f, 255 );
setEffAlphaKey( spep_5 + 150,  rush2_f, 255 );

-- ** エフェクト等 ** --
rush2_b = entryEffect( spep_5 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0,  rush2_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 150,  rush2_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,  rush2_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 150,  rush2_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0,  rush2_b, 0 );
setEffRotateKey( spep_5 + 150,  rush2_b, 0 );
setEffAlphaKey( spep_5 + 0,  rush2_b, 255 );
setEffAlphaKey( spep_5 + 150,  rush2_b, 255 );

--敵の動き
setDisp( spep_5-3 + 40, 1, 1);
setDisp( spep_5-1 + 148, 1, 0);

changeAnime( spep_5-3 + 40, 1, 6);
changeAnime( spep_5-3 + 42, 1, 8);
changeAnime( spep_5-1 + 46, 1, 108);
changeAnime( spep_5-1 + 54, 1, 8);
changeAnime( spep_5-1 + 58, 1, 108);
changeAnime( spep_5-1 + 64, 1, 8);
changeAnime( spep_5-1 + 70, 1, 108);
changeAnime( spep_5-1 + 78, 1, 8);

setMoveKey( spep_5-3 + 40, 1, 0.9, 27.8 , 0 );
setMoveKey( spep_5-3 + 41, 1, 0.9, 27.8 , 0 );

setMoveKey( spep_5-3 + 42, 1, 1, 30.9 , 0 );
setMoveKey( spep_5-3 + 44, 1, 10, 58.9 , 0 );
setMoveKey( spep_5-3 + 46, 1, -41.1, 21 , 0 );
setMoveKey( spep_5-3 + 48, 1, 19.8, 21 , 0 );
setMoveKey( spep_5-3 + 50, 1, 23.8, 51.5 , 0 );
setMoveKey( spep_5-3 + 52, 1, 46.7, 55.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, 72.6, 74.2 , 0 );
setMoveKey( spep_5-3 + 55, 1, 72.6, 74.2 , 0 );

setMoveKey( spep_5-3 + 56, 1, -0.4, 45.8 , 0 );
setMoveKey( spep_5-3 + 58, 1, -22.3, 68 , 0 );
setMoveKey( spep_5-3 + 60, 1, 0.1, 59.6 , 0 );
setMoveKey( spep_5-3 + 62, 1, 57.7, 95 , 0 );
setMoveKey( spep_5-3 + 64, 1, 56.4, 64.7 , 0 );
setMoveKey( spep_5-3 + 65, 1, 56.4, 64.7 , 0 );

setMoveKey( spep_5-3 + 66, 1, 20.3, 49.7 , 0 );
setMoveKey( spep_5-3 + 68, 1, -11.6, 78.6 , 0 );
setMoveKey( spep_5-3 + 70, 1, -25.4, 80.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, -0.1, 78.8 , 0 );
setMoveKey( spep_5-3 + 74, 1, 27.2, 91.1 , 0 );
setMoveKey( spep_5-3 + 76, 1, 55.1, 103.6 , 0 );
setMoveKey( spep_5-3 + 78, 1, 83.6, 116.3 , 0 );
setMoveKey( spep_5-3 + 79, 1, 83.6, 116.3 , 0 );

setMoveKey( spep_5-3 + 80, 1, 6.7, 112.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, 3.9, 111.7 , 0 );
setMoveKey( spep_5-3 + 84, 1, 1, 111 , 0 );
setMoveKey( spep_5-3 + 86, 1, -2, 110.3 , 0 );
setMoveKey( spep_5-3 + 88, 1, -5, 109.5 , 0 );
setMoveKey( spep_5-3 + 90, 1, -8.1, 108.6 , 0 );
setMoveKey( spep_5-3 + 92, 1, -11.2, 107.6 , 0 );
setMoveKey( spep_5-3 + 94, 1, -14.5, 106.5 , 0 );
setMoveKey( spep_5-3 + 96, 1, -17.7, 105.4 , 0 );
setMoveKey( spep_5-3 + 98, 1, -21.1, 104.1 , 0 );
setMoveKey( spep_5-3 + 100, 1, -24.5, 102.8 , 0 );
setMoveKey( spep_5-3 + 102, 1, -27.8, 98.2 , 0 );
setMoveKey( spep_5-3 + 104, 1, -31.1, 93.6 , 0 );
setMoveKey( spep_5-3 + 106, 1, -34.5, 89 , 0 );
setMoveKey( spep_5-3 + 108, 1, -37.9, 84.3 , 0 );
setMoveKey( spep_5-3 + 110, 1, -41.4, 79.6 , 0 );
setMoveKey( spep_5-3 + 112, 1, -41.6, 79.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, -43, 71.5 , 0 );
setMoveKey( spep_5-3 + 116, 1, -42, 78.8 , 0 );
setMoveKey( spep_5-3 + 118, 1, -62.9, 51.5 , 0 );
setMoveKey( spep_5-3 + 120, 1, -22.9, 58.7 , 0 );
setMoveKey( spep_5-3 + 122, 1, -42.6, 77.9 , 0 );
setMoveKey( spep_5-3 + 124, 1, -44, 70.2 , 0 );
setMoveKey( spep_5-3 + 126, 1, -43, 77.4 , 0 );
setMoveKey( spep_5-3 + 128, 1, -43.2, 77.1 , 0 );
setMoveKey( spep_5-3 + 130, 1, -43.4, 76.8 , 0 );
setMoveKey( spep_5-3 + 132, 1, -43.6, 76.6 , 0 );
setMoveKey( spep_5-3 + 134, 1, -43.8, 76.3 , 0 );
setMoveKey( spep_5-3 + 136, 1, -44, 76 , 0 );
setMoveKey( spep_5-3 + 138, 1, -44.2, 75.7 , 0 );
setMoveKey( spep_5-3 + 140, 1, -44.4, 75.5 , 0 );
setMoveKey( spep_5-3 + 142, 1, -44.6, 75.2 , 0 );
setMoveKey( spep_5-3 + 144, 1, -66, 28.1 , 0 );
setMoveKey( spep_5-3 + 146, 1, -78.9, -0.2 , 0 );
setMoveKey( spep_5-1 + 148, 1, -83.2, -9.6 , 0 );

setScaleKey( spep_5-3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 41, 1, 1.54, 1.54 );

setScaleKey( spep_5-3 + 42, 1, 2.2,2.2);
setScaleKey( spep_5-3 + 44, 1, 2.23,2.23);
setScaleKey( spep_5-3 + 46, 1, 2.26,2.26);
setScaleKey( spep_5-3 + 48, 1, 2.28,2.28);
setScaleKey( spep_5-3 + 50, 1, 2.32,2.32);
setScaleKey( spep_5-3 + 52, 1, 2.35,2.35);
setScaleKey( spep_5-3 + 54, 1, 2.39,2.39);
setScaleKey( spep_5-3 + 55, 1, 2.39,2.39);
setScaleKey( spep_5-3 + 56, 1, 2.41,2.41);
setScaleKey( spep_5-3 + 58, 1, 2.44,2.44);
setScaleKey( spep_5-3 + 60, 1, 2.48,2.48);
setScaleKey( spep_5-3 + 62, 1, 2.5,2.5);
setScaleKey( spep_5-3 + 64, 1, 2.54,2.54);
setScaleKey( spep_5-3 + 65, 1, 2.54,2.54);
setScaleKey( spep_5-3 + 66, 1, 2.57,2.57);
setScaleKey( spep_5-3 + 68, 1, 2.61,2.61);
setScaleKey( spep_5-3 + 70, 1, 2.63,2.63);
setScaleKey( spep_5-3 + 72, 1, 2.66,2.66);
setScaleKey( spep_5-3 + 74, 1, 2.7,2.7);
setScaleKey( spep_5-3 + 76, 1, 2.72,2.72);
setScaleKey( spep_5-3 + 78, 1, 2.76,2.76);
setScaleKey( spep_5-3 + 79, 1, 2.76,2.76);

--[[
setScaleKey( spep_5-3 + 80, 1, 2.33,2.33);
setScaleKey( spep_5-3 + 82, 1, 2.37,2.37);
setScaleKey( spep_5-3 + 84, 1, 2.41,2.41);
setScaleKey( spep_5-3 + 86, 1, 2.46,2.46);
setScaleKey( spep_5-3 + 88, 1, 2.5,2.5);
setScaleKey( spep_5-3 + 90, 1, 2.55,2.55);
setScaleKey( spep_5-3 + 92, 1, 2.6,2.6);
setScaleKey( spep_5-3 + 94, 1, 2.64,2.64);
setScaleKey( spep_5-3 + 96, 1, 2.68,2.68);
setScaleKey( spep_5-3 + 98, 1, 2.73,2.73);
setScaleKey( spep_5-3 + 100, 1, 2.78,2.78);
setScaleKey( spep_5-3 + 102, 1, 2.81,2.81);
setScaleKey( spep_5-3 + 104, 1, 2.85,2.85);
]]
--setScaleKey( spep_5-3 + 106, 1, 2.88,2.88);
setScaleKey( spep_5-3 + 108, 1, 2.91,2.91);
setScaleKey( spep_5-3 + 110, 1, 2.94,2.94);
setScaleKey( spep_5-3 + 112, 1, 2.96,2.96);
setScaleKey( spep_5-3 + 114, 1, 2.97,2.97);
setScaleKey( spep_5-3 + 116, 1, 2.98,2.98);
setScaleKey( spep_5-3 + 118, 1, 3,3);
setScaleKey( spep_5-3 + 120, 1, 3.01,3.01);
setScaleKey( spep_5-3 + 122, 1, 3.03,3.03);
setScaleKey( spep_5-3 + 124, 1, 3.04,3.04);
setScaleKey( spep_5-3 + 126, 1, 3.06,3.06);
setScaleKey( spep_5-3 + 128, 1, 3.07,3.07);
setScaleKey( spep_5-3 + 130, 1, 3.08,3.08);
setScaleKey( spep_5-3 + 132, 1, 3.1,3.1);
setScaleKey( spep_5-3 + 134, 1, 3.11,3.11);
setScaleKey( spep_5-3 + 136, 1, 3.12,3.12);
setScaleKey( spep_5-3 + 138, 1, 3.13,3.13);
setScaleKey( spep_5-3 + 140, 1, 3.15,3.15);
setScaleKey( spep_5-3 + 142, 1, 3.16,3.16);
setScaleKey( spep_5-3 + 144, 1, 4.6,4.6);
setScaleKey( spep_5-3 + 146, 1, 5.47,5.47);
setScaleKey( spep_5-1 + 148, 1, 5.76,5.76);

setRotateKey( spep_5-3 + 40, 1, 48.9 );
setRotateKey( spep_5-3 + 41, 1, 48.9 );

setRotateKey( spep_5-3 + 42, 1, 13 );
setRotateKey( spep_5-3 + 44, 1, 11.3 );
setRotateKey( spep_5-3 + 46, 1, 9.5 );
setRotateKey( spep_5-3 + 48, 1, 0 );
setRotateKey( spep_5-3 + 55, 1, 0 );

setRotateKey( spep_5-3 + 56, 1, 13 );
setRotateKey( spep_5-3 + 58, 1, 9.5 );
setRotateKey( spep_5-3 + 60, 1, 0 );
setRotateKey( spep_5-3 + 65, 1, 0 );

setRotateKey( spep_5-3 + 66, 1, 13 );
setRotateKey( spep_5-3 + 68, 1, 11.3 );
setRotateKey( spep_5-3 + 70, 1, 9.5 );
setRotateKey( spep_5-3 + 72, 1, 0 );
setRotateKey( spep_5-3 + 79, 1, 0 );

setRotateKey( spep_5-3 + 80, 1, 13 );
setRotateKey( spep_5-3 + 82, 1, 12.2 );
setRotateKey( spep_5-3 + 84, 1, 11.3 );
setRotateKey( spep_5-3 + 86, 1, 10.4 );
setRotateKey( spep_5-3 + 88, 1, 9.6 );
setRotateKey( spep_5-3 + 90, 1, 8.7 );
setRotateKey( spep_5-3 + 92, 1, 7.8 );
setRotateKey( spep_5-3 + 94, 1, 6.9 );
setRotateKey( spep_5-3 + 96, 1, 6.1 );
setRotateKey( spep_5-3 + 98, 1, 5.2 );
setRotateKey( spep_5-3 + 100, 1, 4.3 );
setRotateKey( spep_5-3 + 102, 1, 3.5 );
setRotateKey( spep_5-3 + 104, 1, 2.6 );
setRotateKey( spep_5-3 + 106, 1, 1.7 );
setRotateKey( spep_5-3 + 108, 1, 0.9 );
setRotateKey( spep_5-3 + 110, 1, 0 );
setRotateKey( spep_5-1 + 148, 1, 0 );

--SE
--高速移動1
SE064 = playSeVer2( spep_5 + 0, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE064, 126 );
SE065 = playSeVer2( spep_5 + 0, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE065, 69 );
SE066 = playSeVer2( spep_5 + 0, 1179, "",spep_5 + 44, 0, 20, -1);

--高速移動2
SE067 = playSeVer2( spep_5 + 20, 1048, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_5 + 20, 1109, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_5 + 20, 1179, "",spep_5 + 70, 0, 24, -1);

--高速アタック
SE070 = playSeVer2( spep_5 + 40, 1110, "",spep_5 + 64, 0, 8, 0.6);
SE071 = playSeVer2( spep_5 + 40, 1002, "",spep_5 + 68, 0, 10, 0.6);
SE072 = playSeVer2( spep_5 + 46, 1110, "",spep_5 + 70, 0, 8, 0.6);
SE073 = playSeVer2( spep_5 + 56, 1110, "",spep_5 + 78, 0, 8, 0.6);
SE074 = playSeVer2( spep_5 + 62, 1110, "",spep_5 + 90, 0, 8, 0.6);
SE075 = playSeVer2( spep_5 + 56, 1025, "",spep_5 + 118, 0, 14, 0.6);
SE076 = playSeVer2( spep_5 + 72, 1110, "", 0, 0, 0, 0.6);

--瞬間移動
SE077 = playSeVer2( spep_5 + 106, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒 背景

--白フェード
entryFade( spep_5 +142 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 150;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 86, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

--白フェード
entryFade( spep_6 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7= spep_6 + 94;
------------------------------------------------------
--ラストパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0,  finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 218,  finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,  finish_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 218,  finish_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0,  finish_f, 0 );
setEffRotateKey( spep_7 + 218,  finish_f, 0 );
setEffAlphaKey( spep_7 + 0,  finish_f, 255 );
setEffAlphaKey( spep_7 + 218,  finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0,  finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 218,  finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,  finish_b, -1.0, 1.0 );
setEffScaleKey( spep_7 + 218,  finish_b, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0,  finish_b, 0 );
setEffRotateKey( spep_7 + 218,  finish_b, 0 );
setEffAlphaKey( spep_7 + 0,  finish_b, 255 );
setEffAlphaKey( spep_7 + 218,  finish_b, 255 );

--敵の動き
setDisp( spep_7-3 + 70, 1, 1);
setDisp( spep_7-1 + 86, 1, 0);

changeAnime( spep_7-3 + 70, 1, 5);

setMoveKey( spep_7-3 + 70, 1, 137.9, -222.9 , 0 );
setMoveKey( spep_7-3 + 72, 1, 119.5, -216.4 , 0 );
setMoveKey( spep_7-3 + 74, 1, 101.4, -209.9 , 0 );
setMoveKey( spep_7-3 + 76, 1, 83.5, -203.6 , 0 );
setMoveKey( spep_7-3 + 78, 1, 65.9, -197.3 , 0 );
setMoveKey( spep_7-3 + 80, 1, 48.6, -191 , 0 );
setMoveKey( spep_7-3 + 82, 1, 31.6, -184.8 , 0 );
setMoveKey( spep_7-3 + 84, 1, 14.8, -178.7 , 0 );
setMoveKey( spep_7-1 + 86, 1, -1.8, -172.6 , 0 );

setScaleKey( spep_7-3 + 70, 1, 8.34, 8.34 );
setScaleKey( spep_7-3 + 72, 1, 7.27, 7.27 );
setScaleKey( spep_7-3 + 74, 1, 6.21, 6.21 );
setScaleKey( spep_7-3 + 76, 1, 5.18, 5.18 );
setScaleKey( spep_7-3 + 78, 1, 4.16, 4.16 );
setScaleKey( spep_7-3 + 80, 1, 3.15, 3.15 );
setScaleKey( spep_7-3 + 82, 1, 2.16, 2.16 );
setScaleKey( spep_7-3 + 84, 1, 1.18, 1.18 );
setScaleKey( spep_7-1 + 86, 1, 0.22, 0.22 );

setRotateKey( spep_7-3 + 70, 1, 0 );
setRotateKey( spep_7-1 + 86, 1, 0 );

--SE
--振りかぶる
SE079 = playSeVer2( spep_7 + 0, 1116, "",spep_7 + 46, 0, 20, -1);
SE080 = playSeVer2( spep_7 + 2, 1117, "",spep_7 + 46, 0, 20, -1);

--二人パンチ
SE081 = playSeVer2( spep_7 + 28, 1187, "", 0, 0, 0, -1);
SE082 = playSeVer2( spep_7 + 28, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE083 = playSeVer2( spep_7 + 56, 1121, "",spep_7 + 112, 0, 20, -1);

--地面激突
SE084 = playSeVer2( spep_7 + 86, 1159, "", 0, 0, 0, -1);
SE085 = playSeVer2( spep_7 + 86, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_7+86);
endPhase( spep_7 + 208 ); 
end