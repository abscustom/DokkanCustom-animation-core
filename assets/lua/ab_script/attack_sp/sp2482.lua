--1025800:ヤムチャ_狼牙風風かめはめ波
--sp_effect_b4_00267
--sp2482

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
SP_01=	161029	;--	開幕〜正面へダッシュ
SP_02=	161030	;--	横ダッシュ〜カードカットインまで
SP_03=	161032	;--	横ダッシュ〜カードカットインまで
SP_04=	161034	;--	気弾溜め〜フィニッシュ
SP_05=	161035	;--	気弾溜め〜フィニッシュ

--エフェクト(敵)
SP_01x=	161029	;--	開幕〜正面へダッシュ	
SP_02x=	161031	;--	横ダッシュ〜カードカットインまで	(敵)
SP_03x=	161033	;--	横ダッシュ〜カードカットインまで	(敵)
SP_04x=	161034	;--	気弾溜め〜フィニッシュ	
SP_05x=	161035	;--	気弾溜め〜フィニッシュ	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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
--開幕〜正面へダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, opening, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, opening, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening, 0 );
setEffRotateKey( spep_0 + 110, opening, 0 );
setEffAlphaKey( spep_0 + 0, opening, 255 );
setEffAlphaKey( spep_0 + 108, opening, 255 );
setEffAlphaKey( spep_0 + 109, opening, 255 );
setEffAlphaKey( spep_0 + 110, opening, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]
--SE
--顔カットイン
SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 59 );
SE003 = playSeVer2( spep_0 + 36, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 80 );

--ダッシュする
SE004 = playSeVer2( spep_0 + 88, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 88, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 88, 1277, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 110;
------------------------------------------------------
--横ダッシュ〜カードカットインまで
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 478, dash_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 478, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 478, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 478, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 478, dash_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 478, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 478, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 478, dash_b, 255 );

--SE
--走る音
SE007 = playSeVer2( spep_1 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 166 );
SE008 = playSeVer2( spep_1 + 10, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE008, 162 );
SE009 = playSeVer2( spep_1 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 20, SE009, 162 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 480, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
       
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵側の動き
setDisp( spep_1-3 + 48, 1, 1);
setDisp( spep_1-1 + 230, 1, 0);

changeAnime( spep_1-3 + 48, 1, 104);
changeAnime( spep_1-3 + 82, 1, 108);
changeAnime( spep_1-3 + 102, 1, 106);
changeAnime( spep_1-3 + 142, 1, 108);
changeAnime( spep_1-3 + 174, 1, 117);
changeAnime( spep_1-3 + 196, 1, 118);
changeAnime( spep_1-3 + 220, 1, 108);

setMoveKey( spep_1-3 + 48, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_1-3 + 49, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 231, 19.7 , 0 );
setMoveKey( spep_1-3 + 51, 1, 231, 19.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 222.6, 17 , 0 );
setMoveKey( spep_1-3 + 53, 1, 222.6, 17 , 0 );
setMoveKey( spep_1-3 + 54, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_1-3 + 55, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_1-3 + 57, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_1-3 + 59, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_1-3 + 60, 1, 188.6, 6 , 0 );
setMoveKey( spep_1-3 + 61, 1, 188.6, 6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_1-3 + 63, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_1-3 + 65, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, 156, -4.4 , 0 );
setMoveKey( spep_1-3 + 67, 1, 156, -4.4 , 0 );
setMoveKey( spep_1-3 + 68, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_1-3 + 69, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_1-3 + 71, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_1-3 + 73, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_1-3 + 74, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_1-3 + 75, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_1-3 + 77, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_1-3 + 78, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_1-3 + 79, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_1-3 + 80, 1, 75.2, -35.5 , 0 );
setMoveKey( spep_1-3 + 81, 1, 75.2, -35.5 , 0 );

setMoveKey( spep_1-3 + 82, 1, 118, -21.9 , 0 );
setMoveKey( spep_1-3 + 83, 1, 118, -21.9 , 0 );
setMoveKey( spep_1-3 + 84, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_1-3 + 85, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_1-3 + 86, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_1-3 + 87, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_1-3 + 88, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_1-3 + 89, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, 129.3, -7 , 0 );
setMoveKey( spep_1-3 + 91, 1, 129.3, -7 , 0 );
setMoveKey( spep_1-3 + 92, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_1-3 + 93, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_1-3 + 95, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_1-3 + 97, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_1-3 + 99, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, 124.7, -9.3 , 0 );
setMoveKey( spep_1-3 + 101, 1, 124.7, -9.3 , 0 );

setMoveKey( spep_1-3 + 102, 1, 127.2, -43 , 0 );
setMoveKey( spep_1-3 + 103, 1, 127.2, -43 , 0 );
setMoveKey( spep_1-3 + 104, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_1-3 + 105, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_1-3 + 106, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_1-3 + 107, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_1-3 + 108, 1, 103.5, -34 , 0 );
setMoveKey( spep_1-3 + 109, 1, 103.5, -34 , 0 );
setMoveKey( spep_1-3 + 110, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_1-3 + 111, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_1-3 + 112, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_1-3 + 113, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_1-3 + 114, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_1-3 + 115, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 100.8, -30 , 0 );
setMoveKey( spep_1-3 + 117, 1, 100.8, -30 , 0 );
setMoveKey( spep_1-3 + 118, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_1-3 + 119, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_1-3 + 120, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_1-3 + 121, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_1-3 + 122, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_1-3 + 123, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_1-3 + 124, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_1-3 + 125, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_1-3 + 127, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_1-3 + 128, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_1-3 + 129, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_1-3 + 130, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_1-3 + 131, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_1-3 + 133, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_1-3 + 134, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_1-3 + 135, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_1-3 + 136, 1, 98, -15.5 , 0 );
setMoveKey( spep_1-3 + 137, 1, 98, -15.5 , 0 );
setMoveKey( spep_1-3 + 138, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_1-3 + 139, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_1-3 + 140, 1, 98.9, -14.5 , 0 );
setMoveKey( spep_1-3 + 141, 1, 98.9, -14.5 , 0 );

setMoveKey( spep_1-3 + 142, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_1-3 + 143, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_1-3 + 144, 1, 214.9, -21 , 0 );
setMoveKey( spep_1-3 + 145, 1, 214.9, -21 , 0 );
setMoveKey( spep_1-3 + 146, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_1-3 + 147, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_1-3 + 149, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_1-3 + 150, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_1-3 + 151, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_1-3 + 152, 1, 193, -2 , 0 );
setMoveKey( spep_1-3 + 153, 1, 193, -2 , 0 );
setMoveKey( spep_1-3 + 154, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_1-3 + 155, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_1-3 + 156, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_1-3 + 157, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_1-3 + 158, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_1-3 + 159, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_1-3 + 160, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_1-3 + 161, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_1-3 + 162, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_1-3 + 163, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_1-3 + 164, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_1-3 + 165, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_1-3 + 166, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_1-3 + 167, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_1-3 + 168, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_1-3 + 169, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_1-3 + 170, 1, 226.4, 7 , 0 );
setMoveKey( spep_1-3 + 171, 1, 226.4, 7 , 0 );
setMoveKey( spep_1-3 + 172, 1, 234.8, 13.4 , 0 );
setMoveKey( spep_1-3 + 173, 1, 234.8, 13.4 , 0 );

setMoveKey( spep_1-3 + 174, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_1-3 + 175, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_1-3 + 176, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_1-3 + 177, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_1-3 + 178, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_1-3 + 179, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_1-3 + 180, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_1-3 + 181, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_1-3 + 182, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_1-3 + 183, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_1-3 + 184, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_1-3 + 185, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_1-3 + 186, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_1-3 + 187, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_1-3 + 188, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_1-3 + 189, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_1-3 + 190, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_1-3 + 191, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_1-3 + 192, 1, 125, -79.2 , 0 );
setMoveKey( spep_1-3 + 193, 1, 125, -79.2 , 0 );
setMoveKey( spep_1-3 + 194, 1, 125.1, -79.2 , 0 );
setMoveKey( spep_1-3 + 195, 1, 125.1, -79.2 , 0 );

setMoveKey( spep_1-3 + 196, 1, 153.4, 305.4 , 0 );
setMoveKey( spep_1-3 + 219, 1, 153.4, 305.4 , 0 );

setMoveKey( spep_1-3 + 220, 1, 43.3, 481 , 0 );
setMoveKey( spep_1-3 + 221, 1, 43.3, 481 , 0 );
setMoveKey( spep_1-3 + 222, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_1-3 + 223, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_1-3 + 224, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_1-3 + 225, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_1-3 + 226, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_1-3 + 227, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_1-3 + 228, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_1-3 + 229, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_1-3 + 230, 1, 88.8, 491.9 , 0 );
setMoveKey( spep_1-1 + 230, 1, 88.8, 491.9 , 0 );

setScaleKey( spep_1-3 + 48, 1, 1.96, 1.95 );
setScaleKey( spep_1-3 + 67, 1, 1.96, 1.95 );
setScaleKey( spep_1-3 + 68, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 81, 1, 1.95, 1.95 );

setScaleKey( spep_1-3 + 82, 1, 2.63, 2.62 );
setScaleKey( spep_1-3 + 83, 1, 2.63, 2.62 );
setScaleKey( spep_1-3 + 84, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 85, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 86, 1, 2.68, 2.68 );
setScaleKey( spep_1-3 + 87, 1, 2.68, 2.68 );
setScaleKey( spep_1-3 + 88, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 89, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 90, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 91, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 92, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 93, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 94, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 95, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 96, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 97, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 98, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 100, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 101, 1, 2.1, 2.1 );

setScaleKey( spep_1-3 + 104, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 105, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 107, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 109, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 110, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 111, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 112, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 113, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 114, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 115, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 116, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 117, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 118, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 120, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 121, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 122, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 123, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 124, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 125, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 126, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 127, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 128, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 129, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 130, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 131, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 132, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 133, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 134, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 135, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 136, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 137, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 138, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 141, 1, 1.73, 1.73 );

setScaleKey( spep_1-3 + 142, 1, 3.67, 3.67 );
setScaleKey( spep_1-3 + 143, 1, 3.67, 3.67 );
setScaleKey( spep_1-3 + 144, 1, 2.89, 2.89 );
setScaleKey( spep_1-3 + 145, 1, 2.89, 2.89 );
setScaleKey( spep_1-3 + 146, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 147, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 148, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 149, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 150, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 153, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 154, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 155, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 156, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 157, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 158, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 159, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 160, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 161, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 162, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 164, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 165, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 166, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 168, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 169, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 170, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 171, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 172, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 173, 1, 2.03, 2.03 );

setScaleKey( spep_1-3 + 174, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 175, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 176, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 179, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 180, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 195, 1, 1.8, 1.8 );

setScaleKey( spep_1-3 + 196, 1, 5.78, 5.78 );
setScaleKey( spep_1-3 + 219, 1, 5.78, 5.78 );

setScaleKey( spep_1-3 + 220, 1, 6.29, 6.29 );
setScaleKey( spep_1-1 + 230, 1, 6.29, 6.29 );

setRotateKey( spep_1-3 + 48, 1, 0 );
setRotateKey( spep_1-3 + 101, 1, 0 );

setRotateKey( spep_1-3 + 102, 1, -48.2 );
setRotateKey( spep_1-3 + 104, 1, -48.2 );
setRotateKey( spep_1-3 + 105, 1, -48.2 );
setRotateKey( spep_1-3 + 106, 1, -48 );
setRotateKey( spep_1-3 + 108, 1, -48 );
setRotateKey( spep_1-3 + 109, 1, -48 );
setRotateKey( spep_1-3 + 110, 1, -47.7 );
setRotateKey( spep_1-3 + 112, 1, -47.7 );
setRotateKey( spep_1-3 + 113, 1, -47.7 );
setRotateKey( spep_1-3 + 114, 1, -47.4 );
setRotateKey( spep_1-3 + 116, 1, -47.4 );
setRotateKey( spep_1-3 + 117, 1, -47.4 );
setRotateKey( spep_1-3 + 118, 1, -47.2 );
setRotateKey( spep_1-3 + 120, 1, -47.2 );
setRotateKey( spep_1-3 + 121, 1, -47.2 );
setRotateKey( spep_1-3 + 122, 1, -56.8 );
setRotateKey( spep_1-3 + 124, 1, -56.8 );
setRotateKey( spep_1-3 + 125, 1, -56.8 );
setRotateKey( spep_1-3 + 126, 1, -55.4 );
setRotateKey( spep_1-3 + 128, 1, -55.4 );
setRotateKey( spep_1-3 + 130, 1, -54.4 );
setRotateKey( spep_1-3 + 132, 1, -54.4 );
setRotateKey( spep_1-3 + 133, 1, -54.4 );
setRotateKey( spep_1-3 + 134, 1, -53.7 );
setRotateKey( spep_1-3 + 136, 1, -53.7 );
setRotateKey( spep_1-3 + 137, 1, -53.7 );
setRotateKey( spep_1-3 + 138, 1, -53.4 );
setRotateKey( spep_1-3 + 141, 1, -53.4 );

setRotateKey( spep_1-3 + 142, 1, 0 );
setRotateKey( spep_1-3 + 219, 1, 0 );

setRotateKey( spep_1-3 + 220, 1, 24.8 );
setRotateKey( spep_1-3 + 221, 1, 24.8 );
setRotateKey( spep_1-3 + 222, 1, 60.9 );
setRotateKey( spep_1-3 + 224, 1, 60.9 );
setRotateKey( spep_1-3 + 225, 1, 60.9 );
setRotateKey( spep_1-3 + 226, 1, 64.2 );
setRotateKey( spep_1-3 + 228, 1, 64.2 );
setRotateKey( spep_1-3 + 229, 1, 64.2 );
setRotateKey( spep_1-3 + 230, 1, 66 );
setRotateKey( spep_1-1 + 230, 1, 66 );

--敵側の動き
setDisp( spep_1-3 + 276, 1, 1);
setDisp( spep_1-1 + 300, 1, 0);

changeAnime( spep_1-3 + 276, 1, 108);
changeAnime( spep_1-3 + 288, 1, 106);

setMoveKey( spep_1-3 + 276, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_1-3 + 279, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_1-3 + 280, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_1-3 + 283, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_1-3 + 284, 1, -68.5, -248 , 0 );
setMoveKey( spep_1-3 + 285, 1, -68.5, -248 , 0 );
setMoveKey( spep_1-3 + 286, 1, -98.1, -341 , 0 );
setMoveKey( spep_1-3 + 287, 1, -98.1, -341 , 0 );

setMoveKey( spep_1-3 + 288, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_1-3 + 289, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_1-3 + 290, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_1-3 + 291, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_1-3 + 292, 1, -234, -6 , 0 );
setMoveKey( spep_1-3 + 293, 1, -234, -6 , 0 );
setMoveKey( spep_1-3 + 294, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_1-3 + 295, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_1-3 + 296, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_1-3 + 297, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_1-3 + 298, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_1-3 + 299, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_1-3 + 300, 1, -635.2, -97.5 , 0 );
setMoveKey( spep_1-1 + 300, 1, -635.2, -97.5 , 0 );

setScaleKey( spep_1-3 + 276, 1, 6.99, 6.99 );
setScaleKey( spep_1-3 + 285, 1, 6.99, 6.99 );
setScaleKey( spep_1-3 + 286, 1, 9.62, 9.62 );
setScaleKey( spep_1-3 + 287, 1, 9.62, 9.62 );

setScaleKey( spep_1-3 + 288, 1, 10.45, 10.45 );
setScaleKey( spep_1-3 + 289, 1, 10.45, 10.45 );
setScaleKey( spep_1-3 + 290, 1, 8.21, 8.21 );
setScaleKey( spep_1-3 + 291, 1, 8.21, 8.21 );
setScaleKey( spep_1-3 + 292, 1, 5.97, 5.97 );
setScaleKey( spep_1-3 + 293, 1, 5.97, 5.97 );
setScaleKey( spep_1-3 + 294, 1, 8.95, 8.95 );
setScaleKey( spep_1-3 + 295, 1, 8.95, 8.95 );
setScaleKey( spep_1-3 + 296, 1, 5.97, 5.97 );
setScaleKey( spep_1-1 + 300, 1, 5.97, 5.97 );

setRotateKey( spep_1-3 + 276, 1, 74.2 );
setRotateKey( spep_1-3 + 287, 1, 74.2 );

setRotateKey( spep_1-3 + 288, 1, -69 );
setRotateKey( spep_1-1 + 300, 1, -69 );

--敵側の動き
setDisp( spep_1-3 + 348, 1, 1);
setDisp( spep_1-1 + 396, 1, 0);

changeAnime( spep_1-3 + 348, 1, 106);
changeAnime( spep_1-3 + 376, 1, 108);
changeAnime( spep_1-3 + 388, 1, 5);

setMoveKey( spep_1-3 + 348, 1, 429.8, -188.8 , 0 );
setMoveKey( spep_1-3 + 349, 1, 429.8, -188.8 , 0 );
setMoveKey( spep_1-3 + 350, 1, 428.7, -188.7 , 0 );
setMoveKey( spep_1-3 + 351, 1, 428.7, -188.7 , 0 );
setMoveKey( spep_1-3 + 352, 1, 425.5, -188.5 , 0 );
setMoveKey( spep_1-3 + 353, 1, 425.5, -188.5 , 0 );
setMoveKey( spep_1-3 + 354, 1, 420.1, -188 , 0 );
setMoveKey( spep_1-3 + 355, 1, 420.1, -188 , 0 );
setMoveKey( spep_1-3 + 356, 1, 412.6, -187.4 , 0 );
setMoveKey( spep_1-3 + 357, 1, 412.6, -187.4 , 0 );
setMoveKey( spep_1-3 + 358, 1, 402.9, -186.6 , 0 );
setMoveKey( spep_1-3 + 359, 1, 402.9, -186.6 , 0 );
setMoveKey( spep_1-3 + 360, 1, 391.2, -185.6 , 0 );
setMoveKey( spep_1-3 + 361, 1, 391.2, -185.6 , 0 );
setMoveKey( spep_1-3 + 362, 1, 377.2, -184.4 , 0 );
setMoveKey( spep_1-3 + 363, 1, 377.2, -184.4 , 0 );
setMoveKey( spep_1-3 + 364, 1, 361.1, -183.1 , 0 );
setMoveKey( spep_1-3 + 365, 1, 361.1, -183.1 , 0 );
setMoveKey( spep_1-3 + 366, 1, 299.3, -177.9 , 0 );
setMoveKey( spep_1-3 + 367, 1, 299.3, -177.9 , 0 );
setMoveKey( spep_1-3 + 368, 1, 237.5, -172.8 , 0 );
setMoveKey( spep_1-3 + 369, 1, 237.5, -172.8 , 0 );
setMoveKey( spep_1-3 + 370, 1, 175.7, -167.6 , 0 );
setMoveKey( spep_1-3 + 371, 1, 175.7, -167.6 , 0 );
setMoveKey( spep_1-3 + 372, 1, 113.9, -162.4 , 0 );
setMoveKey( spep_1-3 + 373, 1, 113.9, -162.4 , 0 );
setMoveKey( spep_1-3 + 374, 1, 52, -157.2 , 0 );
setMoveKey( spep_1-3 + 375, 1, 52, -157.2 , 0 );

a=-50;
b=-130;

setMoveKey( spep_1-3 + 376, 1, 260.7+a, -11.7+b , 0 );
setMoveKey( spep_1-3 + 377, 1, 260.7+a, -11.7+b , 0 );
setMoveKey( spep_1-3 + 378, 1, 207+a, -9.2+b , 0 );
setMoveKey( spep_1-3 + 379, 1, 207+a, -9.2+b , 0 );
setMoveKey( spep_1-3 + 380, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 381, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 382, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 383, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 384, 1, 160.4+a, 6.1+b , 0 );
setMoveKey( spep_1-3 + 385, 1, 160.4+a, 6.1+b , 0 );
setMoveKey( spep_1-3 + 386, 1, 152.4+a, -1.7+b , 0 );
setMoveKey( spep_1-3 + 387, 1, 152.4+a, -1.7+b , 0 );

setMoveKey( spep_1-3 + 388, 1, 174.4, 119.4 , 0 );
setMoveKey( spep_1-3 + 389, 1, 174.4, 119.4 , 0 );
setMoveKey( spep_1-3 + 390, 1, 243, 224.7 , 0 );
setMoveKey( spep_1-3 + 391, 1, 243, 224.7 , 0 );
setMoveKey( spep_1-3 + 392, 1, 264.2, 320.8 , 0 );
setMoveKey( spep_1-3 + 393, 1, 264.2, 320.8 , 0 );
setMoveKey( spep_1-3 + 394, 1, 359.2, 454.7 , 0 );
setMoveKey( spep_1-3 + 395, 1, 359.2, 454.7 , 0 );
setMoveKey( spep_1-3 + 396, 1, 454.6, 588.7 , 0 );
setMoveKey( spep_1-1 + 396, 1, 454.6, 588.7 , 0 );

setScaleKey( spep_1-3 + 348, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 351, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 352, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 353, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 354, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 355, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 356, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 357, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 358, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 359, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 360, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 361, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 362, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 363, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 364, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 365, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 366, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 367, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 368, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 369, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 370, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 371, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 372, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 373, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 374, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 375, 1, 1.85, 1.85 );

setScaleKey( spep_1-3 + 376, 1, 3.98, 3.98);
setScaleKey( spep_1-3 + 377, 1, 3.98, 3.98);
setScaleKey( spep_1-3 + 378, 1, 3.13, 3.13);
setScaleKey( spep_1-3 + 379, 1, 3.13, 3.13);
setScaleKey( spep_1-3 + 380, 1, 2.28, 2.28);
setScaleKey( spep_1-3 + 383, 1, 2.28, 2.28);
setScaleKey( spep_1-3 + 387, 1, 2.28, 2.28);
setScaleKey( spep_1-3 + 388, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 389, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 390, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 391, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 392, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 393, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 394, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 395, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 396, 1, 1.12, 1.12 );
setScaleKey( spep_1-1 + 396, 1, 1.12, 1.12 );

setRotateKey( spep_1-3 + 348, 1, -76.2 );
setRotateKey( spep_1-3 + 353, 1, -76.2 );
setRotateKey( spep_1-3 + 354, 1, -76.3 );
setRotateKey( spep_1-3 + 357, 1, -76.3 );
setRotateKey( spep_1-3 + 358, 1, -76.4 );
setRotateKey( spep_1-3 + 359, 1, -76.4 );
setRotateKey( spep_1-3 + 360, 1, -76.5 );
setRotateKey( spep_1-3 + 361, 1, -76.5 );
setRotateKey( spep_1-3 + 362, 1, -76.7 );
setRotateKey( spep_1-3 + 363, 1, -76.7 );
setRotateKey( spep_1-3 + 364, 1, -76.8 );
setRotateKey( spep_1-3 + 365, 1, -76.8 );
setRotateKey( spep_1-3 + 366, 1, -77.4 );
setRotateKey( spep_1-3 + 367, 1, -77.4 );
setRotateKey( spep_1-3 + 368, 1, -78 );
setRotateKey( spep_1-3 + 369, 1, -78 );
setRotateKey( spep_1-3 + 370, 1, -78.6 );
setRotateKey( spep_1-3 + 371, 1, -78.6 );
setRotateKey( spep_1-3 + 372, 1, -79.2 );
setRotateKey( spep_1-3 + 373, 1, -79.2 );
setRotateKey( spep_1-3 + 374, 1, -79.7 );
setRotateKey( spep_1-3 + 375, 1, -79.7 );

setRotateKey( spep_1-3 + 376, 1, -20 );
setRotateKey( spep_1-3 + 387, 1, -20 );
setRotateKey( spep_1-3 + 388, 1, 68 );
setRotateKey( spep_1-1 + 396, 1, 68 );

--敵側の動き
setDisp( spep_1-3 + 426, 1, 1);
setDisp( spep_1-1 + 476, 1, 0);

changeAnime( spep_1-3 + 426, 1, 107);

setMoveKey( spep_1-3 + 426, 1, -516.3, -106.3 , 0 );
setMoveKey( spep_1-3 + 427, 1, -516.3, -106.3 , 0 );
setMoveKey( spep_1-3 + 428, 1, -472.7, -101.6 , 0 );
setMoveKey( spep_1-3 + 429, 1, -472.7, -101.6 , 0 );
setMoveKey( spep_1-3 + 430, 1, -429, -96.8 , 0 );
setMoveKey( spep_1-3 + 431, 1, -429, -96.8 , 0 );
setMoveKey( spep_1-3 + 432, 1, -385.4, -92.1 , 0 );
setMoveKey( spep_1-3 + 433, 1, -385.4, -92.1 , 0 );
setMoveKey( spep_1-3 + 434, 1, -341.7, -87.3 , 0 );
setMoveKey( spep_1-3 + 435, 1, -341.7, -87.3 , 0 );
setMoveKey( spep_1-3 + 436, 1, -300.8, -82.8 , 0 );
setMoveKey( spep_1-3 + 437, 1, -300.8, -82.8 , 0 );
setMoveKey( spep_1-3 + 438, 1, -255.5, -77.9 , 0 );
setMoveKey( spep_1-3 + 439, 1, -255.5, -77.9 , 0 );
setMoveKey( spep_1-3 + 440, 1, -205.9, -72.4 , 0 );
setMoveKey( spep_1-3 + 441, 1, -205.9, -72.4 , 0 );
setMoveKey( spep_1-3 + 442, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 443, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 444, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 445, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 446, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 447, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 448, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 449, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 450, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 451, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 452, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 453, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 454, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 455, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 456, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 457, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 458, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 459, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 460, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 461, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 462, 1, -154.3, -66.9 , 0 );
setMoveKey( spep_1-3 + 464, 1, -154.3, -66.9 , 0 );
setMoveKey( spep_1-3 + 463, 1, -154.3, -66.9 , 0 );
setMoveKey( spep_1-3 + 466, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 467, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 468, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 469, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 470, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 471, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 472, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 473, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 474, 1, -141.6, -65.5 , 0 );
setMoveKey( spep_1-3 + 475, 1, -141.6, -65.5 , 0 );
setMoveKey( spep_1-3 + 476, 1, -140.6, -65.4 , 0 );
setMoveKey( spep_1-1 + 476, 1, -140.6, -65.4 , 0 );

setScaleKey( spep_1-3 + 426, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 427, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 428, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 429, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 430, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 431, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 432, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 433, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 434, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 435, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 436, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 439, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 440, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 445, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 446, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 469, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 470, 1, 0.34, 0.34 );
setScaleKey( spep_1-1 + 476, 1, 0.34, 0.34 );

setRotateKey( spep_1-3 + 426, 1, 25.1 );
setRotateKey( spep_1-1 + 476, 1, 25.1 );

--SE
--走る音
SE010 = playSeVer2( spep_1 + 28, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE010, 180 );
SE011 = playSeVer2( spep_1 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 40, SE011, 162 );
SE012 = playSeVer2( spep_1 + 50, 1108, "", 0, 0, 0, -1);

--向かっていく
SE013 = playSeVer2( spep_1 + 56, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE013, 67 );

--パンチ
SE014 = playSeVer2( spep_1 + 80, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 80, 1110, "", 0, 0, 0, -1);

--パンチ２
SE016 = playSeVer2( spep_1 + 100, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 100, 1110, "", 0, 0, 0, -1);

--キック
SE018 = playSeVer2( spep_1 + 120, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 120, SE018, 81 );
SE019 = playSeVer2( spep_1 + 120, 1110, "", 0, 0, 0, -1);

--キック２
SE020 = playSeVer2( spep_1 + 140, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE020, 92 );
SE021 = playSeVer2( spep_1 + 140, 1187, "",spep_1 + 198, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 140, SE021, 71 );

--敵立つ
SE022 = playSeVer2( spep_1 + 176, 1013, "", 0, 0, 0, -1);

--下回し蹴り
SE023 = playSeVer2( spep_1 + 202, 1116, "",spep_1 + 244, 0, 22, -1);
SE024 = playSeVer2( spep_1 + 202, 44, "",spep_1 + 244, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 202, SE024, 68 );
SE025 = playSeVer2( spep_1 + 216, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 216, SE025, 81 );
SE026 = playSeVer2( spep_1 + 218, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE026, 83 );
SE027 = playSeVer2( spep_1 + 218, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE027, 89 );

--画面遷移
SE028 = playSeVer2( spep_1 + 230, 1232, "", 0, 0, 0, -1);

--後ろ回し蹴り
SE029 = playSeVer2( spep_1 + 274, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 286, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 286, SE030, 82 );
SE031 = playSeVer2( spep_1 + 286, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 286, SE031, 88 );

--瞬間移動
SE032 = playSeVer2( spep_1 + 324, 1109, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 324, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 324, SE033, 68 );
setBandpassFilter( spep_1 + 324, SE033, 830, 24000 );
SE034 = playSeVer2( spep_1 + 324, 1272, "",spep_1 + 376, 0, 30, -1);
setPitch( spep_1 + 324, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );

--瞬間移動2
SE035 = playSeVer2( spep_1 + 348, 1109, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 348, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE036, 69 );
setBandpassFilter( spep_1 + 348, SE036, 830, 24000 );
SE037 = playSeVer2( spep_1 + 348, 1272, "",spep_1 + 404, 0, 30, -1);
setPitch( spep_1 + 348, SE037, 200 );
setTimeStretch( SE037, 1.13, 30, 4 );

--蹴り上げる
SE038 = playSeVer2( spep_1 + 368, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 374, 1110, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 374, 1010, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 374, 1153, "",spep_1 + 418, 0, 14, -1);

--敵飛んでくる
SE042 = playSeVer2( spep_1 + 384, 1183, "", spep_1 + 488, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 384, SE042, 85 );

--飛び上がる
SE043 = playSeVer2( spep_1 + 398, 1117, "",spep_1 + 442, 0, 24, -1);

--瞬間移動3
SE044 = playSeVer2( spep_1 + 406, 1109, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 406, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 406, SE045, 77 );
setBandpassFilter( spep_1 + 406, SE045, 830, 24000 );
SE046 = playSeVer2( spep_1 + 406, 1272, "",spep_1 + 458, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 406, SE046, 86 );
setPitch( spep_1 + 406, SE046, 200 );
setTimeStretch( SE046, 1.13, 30, 4 );

--瞬間移動4
SE047 = playSeVer2( spep_1 + 432, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 432, SE047, 78 );
setBandpassFilter( spep_1 + 432, SE047, 830, 24000 );
SE048 = playSeVer2( spep_1 + 432, 1272, "",spep_1 + 488, 0, 30, -1);
setPitch( spep_1 + 432, SE048, 200 );
setTimeStretch( SE048, 1.13, 30, 4 );
SE049 = playSeVer2( spep_1 + 432, 1109, "",spep_1 + 494, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 432, SE049, 78 );

--白フェード
entryFade( spep_1 +470 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 478;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;
------------------------------------------------------
--気弾溜め〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 320, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 320, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 320, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 320, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 320, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 320, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 320, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 320, finish_b, 255 );

setDisp( spep_3-3 + 92, 1, 1);
setDisp( spep_3-1 + 164, 1, 0);

changeAnime( spep_3-3 + 92, 1, 106);
changeAnime( spep_3-3 + 116, 1, 108);

setMoveKey( spep_3-3 + 92, 1, -92.2, -601.5 , 0 );
setMoveKey( spep_3-3 + 93, 1, -92.2, -601.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, -83.7, -560.8 , 0 );
setMoveKey( spep_3-3 + 95, 1, -83.7, -560.8 , 0 );
setMoveKey( spep_3-3 + 96, 1, -75.3, -520.1 , 0 );
setMoveKey( spep_3-3 + 97, 1, -75.3, -520.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, -66.8, -479.4 , 0 );
setMoveKey( spep_3-3 + 99, 1, -66.8, -479.4 , 0 );
setMoveKey( spep_3-3 + 100, 1, -58.3, -438.7 , 0 );
setMoveKey( spep_3-3 + 101, 1, -58.3, -438.7 , 0 );
setMoveKey( spep_3-3 + 102, 1, -49.8, -398 , 0 );
setMoveKey( spep_3-3 + 103, 1, -49.8, -398 , 0 );
setMoveKey( spep_3-3 + 104, 1, -41.3, -357.3 , 0 );
setMoveKey( spep_3-3 + 105, 1, -41.3, -357.3 , 0 );
setMoveKey( spep_3-3 + 106, 1, -32.8, -316.6 , 0 );
setMoveKey( spep_3-3 + 107, 1, -32.8, -316.6 , 0 );
setMoveKey( spep_3-3 + 108, 1, -24.1, -279.7 , 0 );
setMoveKey( spep_3-3 + 109, 1, -24.1, -279.7 , 0 );
setMoveKey( spep_3-3 + 110, 1, -15.4, -242.9 , 0 );
setMoveKey( spep_3-3 + 111, 1, -15.4, -242.9 , 0 );
setMoveKey( spep_3-3 + 112, 1, -6.6, -206.1 , 0 );
setMoveKey( spep_3-3 + 113, 1, -6.6, -206.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, 2.5, -160.9 , 0 );
setMoveKey( spep_3-3 + 115, 1, 2.5, -160.9 , 0 );

setMoveKey( spep_3-3 + 116, 1, 6.9, -312.7 , 0 );
setMoveKey( spep_3-3 + 117, 1, 6.9, -312.7 , 0 );
setMoveKey( spep_3-3 + 118, 1, 8.5, -408.4 , 0 );
setMoveKey( spep_3-3 + 119, 1, 8.5, -408.4 , 0 );
setMoveKey( spep_3-3 + 120, 1, -0.9, -330.9 , 0 );
setMoveKey( spep_3-3 + 121, 1, -0.9, -330.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, 1.4, -226 , 0 );
setMoveKey( spep_3-3 + 123, 1, 1.4, -226 , 0 );
setMoveKey( spep_3-3 + 124, 1, 5.9, -236.3 , 0 );
setMoveKey( spep_3-3 + 125, 1, 5.9, -236.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, 3.9, -243.1 , 0 );
setMoveKey( spep_3-3 + 127, 1, 3.9, -243.1 , 0 );
setMoveKey( spep_3-3 + 128, 1, -5, -253.9 , 0 );
setMoveKey( spep_3-3 + 129, 1, -5, -253.9 , 0 );
setMoveKey( spep_3-3 + 130, 1, -4.9, -245.9 , 0 );
setMoveKey( spep_3-3 + 131, 1, -4.9, -245.9 , 0 );
setMoveKey( spep_3-3 + 132, 1, -0.4, -256.3 , 0 );
setMoveKey( spep_3-3 + 133, 1, -0.4, -256.3 , 0 );
setMoveKey( spep_3-3 + 134, 1, -2.4, -263.1 , 0 );
setMoveKey( spep_3-3 + 135, 1, -2.4, -263.1 , 0 );
setMoveKey( spep_3-3 + 136, 1, -11.3, -273.8 , 0 );
setMoveKey( spep_3-3 + 137, 1, -11.3, -273.8 , 0 );
setMoveKey( spep_3-3 + 138, 1, -11.2, -265.8 , 0 );
setMoveKey( spep_3-3 + 139, 1, -11.2, -265.8 , 0 );
setMoveKey( spep_3-3 + 140, 1, -6.5, -276.2 , 0 );
setMoveKey( spep_3-3 + 141, 1, -6.5, -276.2 , 0 );
setMoveKey( spep_3-3 + 142, 1, -10, -288 , 0 );
setMoveKey( spep_3-3 + 143, 1, -10, -288 , 0 );
setMoveKey( spep_3-3 + 144, 1, -34.1, -346.7 , 0 );
setMoveKey( spep_3-3 + 145, 1, -34.1, -346.7 , 0 );
setMoveKey( spep_3-3 + 146, 1, -57.6, -414.8 , 0 );
setMoveKey( spep_3-3 + 147, 1, -57.6, -414.8 , 0 );
setMoveKey( spep_3-3 + 148, 1, -79.2, -509.6 , 0 );
setMoveKey( spep_3-3 + 149, 1, -79.2, -509.6 , 0 );
setMoveKey( spep_3-3 + 150, 1, -118.7, -626 , 0 );
setMoveKey( spep_3-3 + 151, 1, -118.7, -626 , 0 );

setMoveKey( spep_3-3 + 152, 1, 166.1, 253.6 , 0 );
setMoveKey( spep_3-3 + 153, 1, 166.1, 253.6 , 0 );
setMoveKey( spep_3-3 + 154, 1, 150.7, 196.1 , 0 );
setMoveKey( spep_3-3 + 155, 1, 150.7, 196.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, 135.2, 138.6 , 0 );
setMoveKey( spep_3-3 + 157, 1, 135.2, 138.6 , 0 );
setMoveKey( spep_3-3 + 158, 1, 119.7, 81 , 0 );
setMoveKey( spep_3-3 + 159, 1, 119.7, 81 , 0 );
setMoveKey( spep_3-3 + 160, 1, 104.2, 23.5 , 0 );
setMoveKey( spep_3-3 + 161, 1, 104.2, 23.5 , 0 );
setMoveKey( spep_3-3 + 162, 1, 88.7, -34 , 0 );
setMoveKey( spep_3-3 + 163, 1, 88.7, -34 , 0 );
setMoveKey( spep_3-3 + 164, 1, 73.2, -91.5 , 0 );
setMoveKey( spep_3-1 + 164, 1, 73.2, -91.5 , 0 );

setScaleKey( spep_3-3 + 92, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 93, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 94, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 95, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 96, 1, 1.73, 1.73 );
setScaleKey( spep_3-3 + 97, 1, 1.73, 1.73 );
setScaleKey( spep_3-3 + 98, 1, 1.75, 1.75 );
setScaleKey( spep_3-3 + 99, 1, 1.75, 1.75 );
setScaleKey( spep_3-3 + 100, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 101, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 102, 1, 1.78, 1.78 );
setScaleKey( spep_3-3 + 103, 1, 1.78, 1.78 );
setScaleKey( spep_3-3 + 104, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 105, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 106, 1, 1.81, 1.81 );
setScaleKey( spep_3-3 + 107, 1, 1.81, 1.81 );
setScaleKey( spep_3-3 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 109, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 110, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 111, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 112, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 113, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 114, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 115, 1, 2.05, 2.05 );

setScaleKey( spep_3-3 + 116, 1, 3.75, 3.75 );
setScaleKey( spep_3-3 + 117, 1, 3.75, 3.75 );
setScaleKey( spep_3-3 + 118, 1, 4.86, 4.86 );
setScaleKey( spep_3-3 + 119, 1, 4.86, 4.86 );
setScaleKey( spep_3-3 + 120, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 121, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 122, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 123, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 124, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 126, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 127, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 128, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 130, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 131, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 132, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 134, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 135, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 136, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 138, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 139, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 140, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 141, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 142, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 143, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 144, 1, 2.88, 2.88 );
setScaleKey( spep_3-3 + 145, 1, 2.88, 2.88 );
setScaleKey( spep_3-3 + 146, 1, 3.03, 3.03 );
setScaleKey( spep_3-3 + 147, 1, 3.03, 3.03 );
setScaleKey( spep_3-3 + 148, 1, 3.21, 3.21 );
setScaleKey( spep_3-3 + 149, 1, 3.21, 3.21 );
setScaleKey( spep_3-3 + 150, 1, 3.43, 3.43 );
setScaleKey( spep_3-3 + 151, 1, 3.43, 3.43 );

setScaleKey( spep_3-3 + 152, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 153, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 154, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 155, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 156, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 157, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 158, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 159, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 160, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 161, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 162, 1, 1.58, 1.58 );
setScaleKey( spep_3-1 + 164, 1, 1.56, 1.56 );

setRotateKey( spep_3-3 + 92, 1, 8 );
setRotateKey( spep_3-3 + 93, 1, 8 );
setRotateKey( spep_3-3 + 94, 1, 8.7 );
setRotateKey( spep_3-3 + 95, 1, 8.7 );
setRotateKey( spep_3-3 + 96, 1, 9.4 );
setRotateKey( spep_3-3 + 97, 1, 9.4 );
setRotateKey( spep_3-3 + 98, 1, 10.1 );
setRotateKey( spep_3-3 + 99, 1, 10.1 );
setRotateKey( spep_3-3 + 100, 1, 10.9 );
setRotateKey( spep_3-3 + 101, 1, 10.9 );
setRotateKey( spep_3-3 + 102, 1, 11.6 );
setRotateKey( spep_3-3 + 103, 1, 11.6 );
setRotateKey( spep_3-3 + 104, 1, 12.3 );
setRotateKey( spep_3-3 + 105, 1, 12.3 );
setRotateKey( spep_3-3 + 106, 1, 13 );
setRotateKey( spep_3-3 + 108, 1, 13 );
setRotateKey( spep_3-3 + 109, 1, 13 );
setRotateKey( spep_3-3 + 110, 1, 12.9 );
setRotateKey( spep_3-3 + 113, 1, 12.9 );
setRotateKey( spep_3-3 + 114, 1, 12.8 );
setRotateKey( spep_3-3 + 115, 1, 12.8 );

setRotateKey( spep_3-3 + 116, 1, 87 );
setRotateKey( spep_3-3 + 119, 1, 87 );
setRotateKey( spep_3-3 + 120, 1, 89 );
setRotateKey( spep_3-3 + 123, 1, 89 );
setRotateKey( spep_3-3 + 124, 1, 87 );
setRotateKey( spep_3-3 + 127, 1, 87 );
setRotateKey( spep_3-3 + 128, 1, 89 );
setRotateKey( spep_3-3 + 131, 1, 89 );
setRotateKey( spep_3-3 + 132, 1, 87 );
setRotateKey( spep_3-3 + 135, 1, 87 );
setRotateKey( spep_3-3 + 136, 1, 89 );
setRotateKey( spep_3-3 + 139, 1, 89 );
setRotateKey( spep_3-3 + 140, 1, 87 );
setRotateKey( spep_3-3 + 151, 1, 87 );

setRotateKey( spep_3-3 + 152, 1, 100 );
setRotateKey( spep_3-1 + 164, 1, 100 );

--SE
--かめはめ波溜め
SE051 = playSeVer2( spep_3 + 2, 1131, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_3 + 2, 1132, "",spep_3 + 104, 0, 14, -1);
SE053 = playSeVer2( spep_3 + 2, 1144, "",spep_3 + 104, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 2, SE053, 62 );

--かめはめ波発射
SE054 = playSeVer2( spep_3 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE054, 68 );
SE055 = playSeVer2( spep_3 + 86, 1022, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_3 + 86, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE056, 89 );
SE057 = playSeVer2( spep_3 + 86, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE057, 74 );

--敵ヒット
SE058 = playSeVer2( spep_3 + 110, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE058, 89 );
SE059 = playSeVer2( spep_3 + 110, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE059, 86 );
SE060 = playSeVer2( spep_3 + 110, 1161, "", 0, 0, 0, -1);

--地面爆発
SE061 = playSeVer2( spep_3 + 170, 1024, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_3 + 170, 1159, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_3 + 170, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 170, SE063, 73 );

--白フェード
entryFade( spep_3 +320 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--終わり
dealDamage( spep_3 + 164 );
endPhase( spep_3 + 310 ); -- 終了フレーム
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕〜正面へダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, opening, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, opening, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening, 0 );
setEffRotateKey( spep_0 + 110, opening, 0 );
setEffAlphaKey( spep_0 + 0, opening, 255 );
setEffAlphaKey( spep_0 + 108, opening, 255 );
setEffAlphaKey( spep_0 + 109, opening, 255 );
setEffAlphaKey( spep_0 + 110, opening, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]
--SE
--顔カットイン
--SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 59 );
SE003 = playSeVer2( spep_0 + 36, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 80 );

--ダッシュする
SE004 = playSeVer2( spep_0 + 88, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 88, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 88, 1277, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 110;
------------------------------------------------------
--横ダッシュ〜カードカットインまで
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 478, dash_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 478, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 478, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 478, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 478, dash_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 478, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 478, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 478, dash_b, 255 );

--SE
--走る音
SE007 = playSeVer2( spep_1 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 166 );
SE008 = playSeVer2( spep_1 + 10, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE008, 162 );
SE009 = playSeVer2( spep_1 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 20, SE009, 162 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 480, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
       
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵側の動き
setDisp( spep_1-3 + 48, 1, 1);
setDisp( spep_1-1 + 230, 1, 0);

changeAnime( spep_1-3 + 48, 1, 104);
changeAnime( spep_1-3 + 82, 1, 108);
changeAnime( spep_1-3 + 102, 1, 106);
changeAnime( spep_1-3 + 142, 1, 108);
changeAnime( spep_1-3 + 174, 1, 117);
changeAnime( spep_1-3 + 196, 1, 118);
changeAnime( spep_1-3 + 220, 1, 108);

setMoveKey( spep_1-3 + 48, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_1-3 + 49, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 231, 19.7 , 0 );
setMoveKey( spep_1-3 + 51, 1, 231, 19.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 222.6, 17 , 0 );
setMoveKey( spep_1-3 + 53, 1, 222.6, 17 , 0 );
setMoveKey( spep_1-3 + 54, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_1-3 + 55, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_1-3 + 57, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_1-3 + 59, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_1-3 + 60, 1, 188.6, 6 , 0 );
setMoveKey( spep_1-3 + 61, 1, 188.6, 6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_1-3 + 63, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_1-3 + 64, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_1-3 + 65, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, 156, -4.4 , 0 );
setMoveKey( spep_1-3 + 67, 1, 156, -4.4 , 0 );
setMoveKey( spep_1-3 + 68, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_1-3 + 69, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_1-3 + 71, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_1-3 + 73, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_1-3 + 74, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_1-3 + 75, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_1-3 + 77, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_1-3 + 78, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_1-3 + 79, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_1-3 + 80, 1, 75.2, -35.5 , 0 );
setMoveKey( spep_1-3 + 81, 1, 75.2, -35.5 , 0 );

setMoveKey( spep_1-3 + 82, 1, 118, -21.9 , 0 );
setMoveKey( spep_1-3 + 83, 1, 118, -21.9 , 0 );
setMoveKey( spep_1-3 + 84, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_1-3 + 85, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_1-3 + 86, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_1-3 + 87, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_1-3 + 88, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_1-3 + 89, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, 129.3, -7 , 0 );
setMoveKey( spep_1-3 + 91, 1, 129.3, -7 , 0 );
setMoveKey( spep_1-3 + 92, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_1-3 + 93, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_1-3 + 95, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_1-3 + 97, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_1-3 + 99, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_1-3 + 100, 1, 124.7, -9.3 , 0 );
setMoveKey( spep_1-3 + 101, 1, 124.7, -9.3 , 0 );

setMoveKey( spep_1-3 + 102, 1, 127.2, -43 , 0 );
setMoveKey( spep_1-3 + 103, 1, 127.2, -43 , 0 );
setMoveKey( spep_1-3 + 104, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_1-3 + 105, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_1-3 + 106, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_1-3 + 107, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_1-3 + 108, 1, 103.5, -34 , 0 );
setMoveKey( spep_1-3 + 109, 1, 103.5, -34 , 0 );
setMoveKey( spep_1-3 + 110, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_1-3 + 111, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_1-3 + 112, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_1-3 + 113, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_1-3 + 114, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_1-3 + 115, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 100.8, -30 , 0 );
setMoveKey( spep_1-3 + 117, 1, 100.8, -30 , 0 );
setMoveKey( spep_1-3 + 118, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_1-3 + 119, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_1-3 + 120, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_1-3 + 121, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_1-3 + 122, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_1-3 + 123, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_1-3 + 124, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_1-3 + 125, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_1-3 + 127, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_1-3 + 128, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_1-3 + 129, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_1-3 + 130, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_1-3 + 131, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_1-3 + 132, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_1-3 + 133, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_1-3 + 134, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_1-3 + 135, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_1-3 + 136, 1, 98, -15.5 , 0 );
setMoveKey( spep_1-3 + 137, 1, 98, -15.5 , 0 );
setMoveKey( spep_1-3 + 138, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_1-3 + 139, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_1-3 + 140, 1, 98.9, -14.5 , 0 );
setMoveKey( spep_1-3 + 141, 1, 98.9, -14.5 , 0 );

setMoveKey( spep_1-3 + 142, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_1-3 + 143, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_1-3 + 144, 1, 214.9, -21 , 0 );
setMoveKey( spep_1-3 + 145, 1, 214.9, -21 , 0 );
setMoveKey( spep_1-3 + 146, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_1-3 + 147, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_1-3 + 148, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_1-3 + 149, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_1-3 + 150, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_1-3 + 151, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_1-3 + 152, 1, 193, -2 , 0 );
setMoveKey( spep_1-3 + 153, 1, 193, -2 , 0 );
setMoveKey( spep_1-3 + 154, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_1-3 + 155, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_1-3 + 156, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_1-3 + 157, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_1-3 + 158, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_1-3 + 159, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_1-3 + 160, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_1-3 + 161, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_1-3 + 162, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_1-3 + 163, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_1-3 + 164, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_1-3 + 165, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_1-3 + 166, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_1-3 + 167, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_1-3 + 168, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_1-3 + 169, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_1-3 + 170, 1, 226.4, 7 , 0 );
setMoveKey( spep_1-3 + 171, 1, 226.4, 7 , 0 );
setMoveKey( spep_1-3 + 172, 1, 234.8, 13.4 , 0 );
setMoveKey( spep_1-3 + 173, 1, 234.8, 13.4 , 0 );

setMoveKey( spep_1-3 + 174, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_1-3 + 175, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_1-3 + 176, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_1-3 + 177, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_1-3 + 178, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_1-3 + 179, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_1-3 + 180, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_1-3 + 181, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_1-3 + 182, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_1-3 + 183, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_1-3 + 184, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_1-3 + 185, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_1-3 + 186, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_1-3 + 187, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_1-3 + 188, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_1-3 + 189, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_1-3 + 190, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_1-3 + 191, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_1-3 + 192, 1, 125, -79.2 , 0 );
setMoveKey( spep_1-3 + 193, 1, 125, -79.2 , 0 );
setMoveKey( spep_1-3 + 194, 1, 125.1, -79.2 , 0 );
setMoveKey( spep_1-3 + 195, 1, 125.1, -79.2 , 0 );

setMoveKey( spep_1-3 + 196, 1, 153.4, 305.4 , 0 );
setMoveKey( spep_1-3 + 219, 1, 153.4, 305.4 , 0 );

setMoveKey( spep_1-3 + 220, 1, 43.3, 481 , 0 );
setMoveKey( spep_1-3 + 221, 1, 43.3, 481 , 0 );
setMoveKey( spep_1-3 + 222, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_1-3 + 223, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_1-3 + 224, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_1-3 + 225, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_1-3 + 226, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_1-3 + 227, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_1-3 + 228, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_1-3 + 229, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_1-3 + 230, 1, 88.8, 491.9 , 0 );
setMoveKey( spep_1-1 + 230, 1, 88.8, 491.9 , 0 );

setScaleKey( spep_1-3 + 48, 1, 1.96, 1.95 );
setScaleKey( spep_1-3 + 67, 1, 1.96, 1.95 );
setScaleKey( spep_1-3 + 68, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 81, 1, 1.95, 1.95 );

setScaleKey( spep_1-3 + 82, 1, 2.63, 2.62 );
setScaleKey( spep_1-3 + 83, 1, 2.63, 2.62 );
setScaleKey( spep_1-3 + 84, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 85, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 86, 1, 2.68, 2.68 );
setScaleKey( spep_1-3 + 87, 1, 2.68, 2.68 );
setScaleKey( spep_1-3 + 88, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 89, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 90, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 91, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 92, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 93, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 94, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 95, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 96, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 97, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 98, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 100, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 101, 1, 2.1, 2.1 );

setScaleKey( spep_1-3 + 104, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 105, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 107, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 109, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 110, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 111, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 112, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 113, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 114, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 115, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 116, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 117, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 118, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 120, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 121, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 122, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 123, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 124, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 125, 1, 3.03, 3.03 );
setScaleKey( spep_1-3 + 126, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 127, 1, 2.42, 2.42 );
setScaleKey( spep_1-3 + 128, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 129, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 130, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 131, 1, 1.79, 1.79 );
setScaleKey( spep_1-3 + 132, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 133, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 134, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 135, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 136, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 137, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 138, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 141, 1, 1.73, 1.73 );

setScaleKey( spep_1-3 + 142, 1, 3.67, 3.67 );
setScaleKey( spep_1-3 + 143, 1, 3.67, 3.67 );
setScaleKey( spep_1-3 + 144, 1, 2.89, 2.89 );
setScaleKey( spep_1-3 + 145, 1, 2.89, 2.89 );
setScaleKey( spep_1-3 + 146, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 147, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 148, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 149, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 150, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 153, 1, 2.2, 2.2 );
setScaleKey( spep_1-3 + 154, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 155, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 156, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 157, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 158, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 159, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 160, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 161, 1, 2.13, 2.13 );
setScaleKey( spep_1-3 + 162, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 164, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 165, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 166, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 168, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 169, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 170, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 171, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 172, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 173, 1, 2.03, 2.03 );

setScaleKey( spep_1-3 + 174, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 175, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 176, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 179, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 180, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 195, 1, 1.8, 1.8 );

setScaleKey( spep_1-3 + 196, 1, 5.78, 5.78 );
setScaleKey( spep_1-3 + 219, 1, 5.78, 5.78 );

setScaleKey( spep_1-3 + 220, 1, 6.29, 6.29 );
setScaleKey( spep_1-1 + 230, 1, 6.29, 6.29 );

setRotateKey( spep_1-3 + 48, 1, 0 );
setRotateKey( spep_1-3 + 101, 1, 0 );

setRotateKey( spep_1-3 + 102, 1, -48.2 );
setRotateKey( spep_1-3 + 104, 1, -48.2 );
setRotateKey( spep_1-3 + 105, 1, -48.2 );
setRotateKey( spep_1-3 + 106, 1, -48 );
setRotateKey( spep_1-3 + 108, 1, -48 );
setRotateKey( spep_1-3 + 109, 1, -48 );
setRotateKey( spep_1-3 + 110, 1, -47.7 );
setRotateKey( spep_1-3 + 112, 1, -47.7 );
setRotateKey( spep_1-3 + 113, 1, -47.7 );
setRotateKey( spep_1-3 + 114, 1, -47.4 );
setRotateKey( spep_1-3 + 116, 1, -47.4 );
setRotateKey( spep_1-3 + 117, 1, -47.4 );
setRotateKey( spep_1-3 + 118, 1, -47.2 );
setRotateKey( spep_1-3 + 120, 1, -47.2 );
setRotateKey( spep_1-3 + 121, 1, -47.2 );
setRotateKey( spep_1-3 + 122, 1, -56.8 );
setRotateKey( spep_1-3 + 124, 1, -56.8 );
setRotateKey( spep_1-3 + 125, 1, -56.8 );
setRotateKey( spep_1-3 + 126, 1, -55.4 );
setRotateKey( spep_1-3 + 128, 1, -55.4 );
setRotateKey( spep_1-3 + 130, 1, -54.4 );
setRotateKey( spep_1-3 + 132, 1, -54.4 );
setRotateKey( spep_1-3 + 133, 1, -54.4 );
setRotateKey( spep_1-3 + 134, 1, -53.7 );
setRotateKey( spep_1-3 + 136, 1, -53.7 );
setRotateKey( spep_1-3 + 137, 1, -53.7 );
setRotateKey( spep_1-3 + 138, 1, -53.4 );
setRotateKey( spep_1-3 + 141, 1, -53.4 );

setRotateKey( spep_1-3 + 142, 1, 0 );
setRotateKey( spep_1-3 + 219, 1, 0 );

setRotateKey( spep_1-3 + 220, 1, 24.8 );
setRotateKey( spep_1-3 + 221, 1, 24.8 );
setRotateKey( spep_1-3 + 222, 1, 60.9 );
setRotateKey( spep_1-3 + 224, 1, 60.9 );
setRotateKey( spep_1-3 + 225, 1, 60.9 );
setRotateKey( spep_1-3 + 226, 1, 64.2 );
setRotateKey( spep_1-3 + 228, 1, 64.2 );
setRotateKey( spep_1-3 + 229, 1, 64.2 );
setRotateKey( spep_1-3 + 230, 1, 66 );
setRotateKey( spep_1-1 + 230, 1, 66 );

--敵側の動き
setDisp( spep_1-3 + 276, 1, 1);
setDisp( spep_1-1 + 300, 1, 0);

changeAnime( spep_1-3 + 276, 1, 108);
changeAnime( spep_1-3 + 288, 1, 106);

setMoveKey( spep_1-3 + 276, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_1-3 + 279, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_1-3 + 280, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_1-3 + 283, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_1-3 + 284, 1, -68.5, -248 , 0 );
setMoveKey( spep_1-3 + 285, 1, -68.5, -248 , 0 );
setMoveKey( spep_1-3 + 286, 1, -98.1, -341 , 0 );
setMoveKey( spep_1-3 + 287, 1, -98.1, -341 , 0 );

setMoveKey( spep_1-3 + 288, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_1-3 + 289, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_1-3 + 290, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_1-3 + 291, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_1-3 + 292, 1, -234, -6 , 0 );
setMoveKey( spep_1-3 + 293, 1, -234, -6 , 0 );
setMoveKey( spep_1-3 + 294, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_1-3 + 295, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_1-3 + 296, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_1-3 + 297, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_1-3 + 298, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_1-3 + 299, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_1-3 + 300, 1, -635.2, -97.5 , 0 );
setMoveKey( spep_1-1 + 300, 1, -635.2, -97.5 , 0 );

setScaleKey( spep_1-3 + 276, 1, 6.99, 6.99 );
setScaleKey( spep_1-3 + 285, 1, 6.99, 6.99 );
setScaleKey( spep_1-3 + 286, 1, 9.62, 9.62 );
setScaleKey( spep_1-3 + 287, 1, 9.62, 9.62 );

setScaleKey( spep_1-3 + 288, 1, 10.45, 10.45 );
setScaleKey( spep_1-3 + 289, 1, 10.45, 10.45 );
setScaleKey( spep_1-3 + 290, 1, 8.21, 8.21 );
setScaleKey( spep_1-3 + 291, 1, 8.21, 8.21 );
setScaleKey( spep_1-3 + 292, 1, 5.97, 5.97 );
setScaleKey( spep_1-3 + 293, 1, 5.97, 5.97 );
setScaleKey( spep_1-3 + 294, 1, 8.95, 8.95 );
setScaleKey( spep_1-3 + 295, 1, 8.95, 8.95 );
setScaleKey( spep_1-3 + 296, 1, 5.97, 5.97 );
setScaleKey( spep_1-1 + 300, 1, 5.97, 5.97 );

setRotateKey( spep_1-3 + 276, 1, 74.2 );
setRotateKey( spep_1-3 + 287, 1, 74.2 );

setRotateKey( spep_1-3 + 288, 1, -69 );
setRotateKey( spep_1-1 + 300, 1, -69 );

--敵側の動き
setDisp( spep_1-3 + 348, 1, 1);
setDisp( spep_1-1 + 396, 1, 0);

changeAnime( spep_1-3 + 348, 1, 106);
changeAnime( spep_1-3 + 376, 1, 108);
changeAnime( spep_1-3 + 388, 1, 5);

setMoveKey( spep_1-3 + 348, 1, 429.8, -188.8 , 0 );
setMoveKey( spep_1-3 + 349, 1, 429.8, -188.8 , 0 );
setMoveKey( spep_1-3 + 350, 1, 428.7, -188.7 , 0 );
setMoveKey( spep_1-3 + 351, 1, 428.7, -188.7 , 0 );
setMoveKey( spep_1-3 + 352, 1, 425.5, -188.5 , 0 );
setMoveKey( spep_1-3 + 353, 1, 425.5, -188.5 , 0 );
setMoveKey( spep_1-3 + 354, 1, 420.1, -188 , 0 );
setMoveKey( spep_1-3 + 355, 1, 420.1, -188 , 0 );
setMoveKey( spep_1-3 + 356, 1, 412.6, -187.4 , 0 );
setMoveKey( spep_1-3 + 357, 1, 412.6, -187.4 , 0 );
setMoveKey( spep_1-3 + 358, 1, 402.9, -186.6 , 0 );
setMoveKey( spep_1-3 + 359, 1, 402.9, -186.6 , 0 );
setMoveKey( spep_1-3 + 360, 1, 391.2, -185.6 , 0 );
setMoveKey( spep_1-3 + 361, 1, 391.2, -185.6 , 0 );
setMoveKey( spep_1-3 + 362, 1, 377.2, -184.4 , 0 );
setMoveKey( spep_1-3 + 363, 1, 377.2, -184.4 , 0 );
setMoveKey( spep_1-3 + 364, 1, 361.1, -183.1 , 0 );
setMoveKey( spep_1-3 + 365, 1, 361.1, -183.1 , 0 );
setMoveKey( spep_1-3 + 366, 1, 299.3, -177.9 , 0 );
setMoveKey( spep_1-3 + 367, 1, 299.3, -177.9 , 0 );
setMoveKey( spep_1-3 + 368, 1, 237.5, -172.8 , 0 );
setMoveKey( spep_1-3 + 369, 1, 237.5, -172.8 , 0 );
setMoveKey( spep_1-3 + 370, 1, 175.7, -167.6 , 0 );
setMoveKey( spep_1-3 + 371, 1, 175.7, -167.6 , 0 );
setMoveKey( spep_1-3 + 372, 1, 113.9, -162.4 , 0 );
setMoveKey( spep_1-3 + 373, 1, 113.9, -162.4 , 0 );
setMoveKey( spep_1-3 + 374, 1, 52, -157.2 , 0 );
setMoveKey( spep_1-3 + 375, 1, 52, -157.2 , 0 );

a=-50;
b=-130;

setMoveKey( spep_1-3 + 376, 1, 260.7+a, -11.7+b , 0 );
setMoveKey( spep_1-3 + 377, 1, 260.7+a, -11.7+b , 0 );
setMoveKey( spep_1-3 + 378, 1, 207+a, -9.2+b , 0 );
setMoveKey( spep_1-3 + 379, 1, 207+a, -9.2+b , 0 );
setMoveKey( spep_1-3 + 380, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 381, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 382, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 383, 1, 154.6+a, -2.5+b , 0 );
setMoveKey( spep_1-3 + 384, 1, 160.4+a, 6.1+b , 0 );
setMoveKey( spep_1-3 + 385, 1, 160.4+a, 6.1+b , 0 );
setMoveKey( spep_1-3 + 386, 1, 152.4+a, -1.7+b , 0 );
setMoveKey( spep_1-3 + 387, 1, 152.4+a, -1.7+b , 0 );

setMoveKey( spep_1-3 + 388, 1, 174.4, 119.4 , 0 );
setMoveKey( spep_1-3 + 389, 1, 174.4, 119.4 , 0 );
setMoveKey( spep_1-3 + 390, 1, 243, 224.7 , 0 );
setMoveKey( spep_1-3 + 391, 1, 243, 224.7 , 0 );
setMoveKey( spep_1-3 + 392, 1, 264.2, 320.8 , 0 );
setMoveKey( spep_1-3 + 393, 1, 264.2, 320.8 , 0 );
setMoveKey( spep_1-3 + 394, 1, 359.2, 454.7 , 0 );
setMoveKey( spep_1-3 + 395, 1, 359.2, 454.7 , 0 );
setMoveKey( spep_1-3 + 396, 1, 454.6, 588.7 , 0 );
setMoveKey( spep_1-1 + 396, 1, 454.6, 588.7 , 0 );

setScaleKey( spep_1-3 + 348, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 351, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 352, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 353, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 354, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 355, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 356, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 357, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 358, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 359, 1, 0.86, 0.86 );
setScaleKey( spep_1-3 + 360, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 361, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 362, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 363, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 364, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 365, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 366, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 367, 1, 1.15, 1.15 );
setScaleKey( spep_1-3 + 368, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 369, 1, 1.32, 1.32 );
setScaleKey( spep_1-3 + 370, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 371, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 372, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 373, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 374, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 375, 1, 1.85, 1.85 );

setScaleKey( spep_1-3 + 376, 1, 3.98, 3.98);
setScaleKey( spep_1-3 + 377, 1, 3.98, 3.98);
setScaleKey( spep_1-3 + 378, 1, 3.13, 3.13);
setScaleKey( spep_1-3 + 379, 1, 3.13, 3.13);
setScaleKey( spep_1-3 + 380, 1, 2.28, 2.28);
setScaleKey( spep_1-3 + 383, 1, 2.28, 2.28);
setScaleKey( spep_1-3 + 387, 1, 2.28, 2.28);
setScaleKey( spep_1-3 + 388, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 389, 1, 1.68, 1.68 );
setScaleKey( spep_1-3 + 390, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 391, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 392, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 393, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 394, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 395, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 396, 1, 1.12, 1.12 );
setScaleKey( spep_1-1 + 396, 1, 1.12, 1.12 );

setRotateKey( spep_1-3 + 348, 1, -76.2 );
setRotateKey( spep_1-3 + 353, 1, -76.2 );
setRotateKey( spep_1-3 + 354, 1, -76.3 );
setRotateKey( spep_1-3 + 357, 1, -76.3 );
setRotateKey( spep_1-3 + 358, 1, -76.4 );
setRotateKey( spep_1-3 + 359, 1, -76.4 );
setRotateKey( spep_1-3 + 360, 1, -76.5 );
setRotateKey( spep_1-3 + 361, 1, -76.5 );
setRotateKey( spep_1-3 + 362, 1, -76.7 );
setRotateKey( spep_1-3 + 363, 1, -76.7 );
setRotateKey( spep_1-3 + 364, 1, -76.8 );
setRotateKey( spep_1-3 + 365, 1, -76.8 );
setRotateKey( spep_1-3 + 366, 1, -77.4 );
setRotateKey( spep_1-3 + 367, 1, -77.4 );
setRotateKey( spep_1-3 + 368, 1, -78 );
setRotateKey( spep_1-3 + 369, 1, -78 );
setRotateKey( spep_1-3 + 370, 1, -78.6 );
setRotateKey( spep_1-3 + 371, 1, -78.6 );
setRotateKey( spep_1-3 + 372, 1, -79.2 );
setRotateKey( spep_1-3 + 373, 1, -79.2 );
setRotateKey( spep_1-3 + 374, 1, -79.7 );
setRotateKey( spep_1-3 + 375, 1, -79.7 );

setRotateKey( spep_1-3 + 376, 1, -20 );
setRotateKey( spep_1-3 + 387, 1, -20 );
setRotateKey( spep_1-3 + 388, 1, 68 );
setRotateKey( spep_1-1 + 396, 1, 68 );

--敵側の動き
setDisp( spep_1-3 + 426, 1, 1);
setDisp( spep_1-1 + 476, 1, 0);

changeAnime( spep_1-3 + 426, 1, 107);

setMoveKey( spep_1-3 + 426, 1, -516.3, -106.3 , 0 );
setMoveKey( spep_1-3 + 427, 1, -516.3, -106.3 , 0 );
setMoveKey( spep_1-3 + 428, 1, -472.7, -101.6 , 0 );
setMoveKey( spep_1-3 + 429, 1, -472.7, -101.6 , 0 );
setMoveKey( spep_1-3 + 430, 1, -429, -96.8 , 0 );
setMoveKey( spep_1-3 + 431, 1, -429, -96.8 , 0 );
setMoveKey( spep_1-3 + 432, 1, -385.4, -92.1 , 0 );
setMoveKey( spep_1-3 + 433, 1, -385.4, -92.1 , 0 );
setMoveKey( spep_1-3 + 434, 1, -341.7, -87.3 , 0 );
setMoveKey( spep_1-3 + 435, 1, -341.7, -87.3 , 0 );
setMoveKey( spep_1-3 + 436, 1, -300.8, -82.8 , 0 );
setMoveKey( spep_1-3 + 437, 1, -300.8, -82.8 , 0 );
setMoveKey( spep_1-3 + 438, 1, -255.5, -77.9 , 0 );
setMoveKey( spep_1-3 + 439, 1, -255.5, -77.9 , 0 );
setMoveKey( spep_1-3 + 440, 1, -205.9, -72.4 , 0 );
setMoveKey( spep_1-3 + 441, 1, -205.9, -72.4 , 0 );
setMoveKey( spep_1-3 + 442, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 443, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 444, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 445, 1, -199.7, -71.8 , 0 );
setMoveKey( spep_1-3 + 446, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 447, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 448, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 449, 1, -188.2, -70.5 , 0 );
setMoveKey( spep_1-3 + 450, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 451, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 452, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 453, 1, -177.9, -69.4 , 0 );
setMoveKey( spep_1-3 + 454, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 455, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 456, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 457, 1, -168.8, -68.4 , 0 );
setMoveKey( spep_1-3 + 458, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 459, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 460, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 461, 1, -161, -67.6 , 0 );
setMoveKey( spep_1-3 + 462, 1, -154.3, -66.9 , 0 );
setMoveKey( spep_1-3 + 464, 1, -154.3, -66.9 , 0 );
setMoveKey( spep_1-3 + 463, 1, -154.3, -66.9 , 0 );
setMoveKey( spep_1-3 + 466, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 467, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 468, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 469, 1, -148.9, -66.3 , 0 );
setMoveKey( spep_1-3 + 470, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 471, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 472, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 473, 1, -144.6, -65.8 , 0 );
setMoveKey( spep_1-3 + 474, 1, -141.6, -65.5 , 0 );
setMoveKey( spep_1-3 + 475, 1, -141.6, -65.5 , 0 );
setMoveKey( spep_1-3 + 476, 1, -140.6, -65.4 , 0 );
setMoveKey( spep_1-1 + 476, 1, -140.6, -65.4 , 0 );

setScaleKey( spep_1-3 + 426, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 427, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 428, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 429, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 430, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 431, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 432, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 433, 1, 0.29, 0.29 );
setScaleKey( spep_1-3 + 434, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 435, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 436, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 439, 1, 0.31, 0.31 );
setScaleKey( spep_1-3 + 440, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 445, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 446, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 469, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 470, 1, 0.34, 0.34 );
setScaleKey( spep_1-1 + 476, 1, 0.34, 0.34 );

setRotateKey( spep_1-3 + 426, 1, 25.1 );
setRotateKey( spep_1-1 + 476, 1, 25.1 );

--SE
--走る音
SE010 = playSeVer2( spep_1 + 28, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE010, 180 );
SE011 = playSeVer2( spep_1 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 40, SE011, 162 );
SE012 = playSeVer2( spep_1 + 50, 1108, "", 0, 0, 0, -1);

--向かっていく
SE013 = playSeVer2( spep_1 + 56, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE013, 67 );

--パンチ
SE014 = playSeVer2( spep_1 + 80, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 80, 1110, "", 0, 0, 0, -1);

--パンチ２
SE016 = playSeVer2( spep_1 + 100, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 100, 1110, "", 0, 0, 0, -1);

--キック
SE018 = playSeVer2( spep_1 + 120, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 120, SE018, 81 );
SE019 = playSeVer2( spep_1 + 120, 1110, "", 0, 0, 0, -1);

--キック２
SE020 = playSeVer2( spep_1 + 140, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE020, 92 );
SE021 = playSeVer2( spep_1 + 140, 1187, "",spep_1 + 198, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 140, SE021, 71 );

--敵立つ
SE022 = playSeVer2( spep_1 + 176, 1013, "", 0, 0, 0, -1);

--下回し蹴り
SE023 = playSeVer2( spep_1 + 202, 1116, "",spep_1 + 244, 0, 22, -1);
SE024 = playSeVer2( spep_1 + 202, 44, "",spep_1 + 244, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 202, SE024, 68 );
SE025 = playSeVer2( spep_1 + 216, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 216, SE025, 81 );
SE026 = playSeVer2( spep_1 + 218, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE026, 83 );
SE027 = playSeVer2( spep_1 + 218, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE027, 89 );

--画面遷移
SE028 = playSeVer2( spep_1 + 230, 1232, "", 0, 0, 0, -1);

--後ろ回し蹴り
SE029 = playSeVer2( spep_1 + 274, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 286, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 286, SE030, 82 );
SE031 = playSeVer2( spep_1 + 286, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 286, SE031, 88 );

--瞬間移動
SE032 = playSeVer2( spep_1 + 324, 1109, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 324, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 324, SE033, 68 );
setBandpassFilter( spep_1 + 324, SE033, 830, 24000 );
SE034 = playSeVer2( spep_1 + 324, 1272, "",spep_1 + 376, 0, 30, -1);
setPitch( spep_1 + 324, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );

--瞬間移動2
SE035 = playSeVer2( spep_1 + 348, 1109, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 348, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 348, SE036, 69 );
setBandpassFilter( spep_1 + 348, SE036, 830, 24000 );
SE037 = playSeVer2( spep_1 + 348, 1272, "",spep_1 + 404, 0, 30, -1);
setPitch( spep_1 + 348, SE037, 200 );
setTimeStretch( SE037, 1.13, 30, 4 );

--蹴り上げる
SE038 = playSeVer2( spep_1 + 368, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 374, 1110, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 374, 1010, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 374, 1153, "",spep_1 + 418, 0, 14, -1);

--敵飛んでくる
SE042 = playSeVer2( spep_1 + 384, 1183, "", spep_1 + 488, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 384, SE042, 85 );

--飛び上がる
SE043 = playSeVer2( spep_1 + 398, 1117, "",spep_1 + 442, 0, 24, -1);

--瞬間移動3
SE044 = playSeVer2( spep_1 + 406, 1109, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 406, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 406, SE045, 77 );
setBandpassFilter( spep_1 + 406, SE045, 830, 24000 );
SE046 = playSeVer2( spep_1 + 406, 1272, "",spep_1 + 458, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 406, SE046, 86 );
setPitch( spep_1 + 406, SE046, 200 );
setTimeStretch( SE046, 1.13, 30, 4 );

--瞬間移動4
SE047 = playSeVer2( spep_1 + 432, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 432, SE047, 78 );
setBandpassFilter( spep_1 + 432, SE047, 830, 24000 );
SE048 = playSeVer2( spep_1 + 432, 1272, "",spep_1 + 488, 0, 30, -1);
setPitch( spep_1 + 432, SE048, 200 );
setTimeStretch( SE048, 1.13, 30, 4 );
SE049 = playSeVer2( spep_1 + 432, 1109, "",spep_1 + 494, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 432, SE049, 78 );

--白フェード
entryFade( spep_1 +470 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 478;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
--気弾溜め〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 320, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 320, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 320, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 320, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 320, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 320, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 320, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 320, finish_b, 255 );

--敵の動き
setDisp( spep_3-3 + 92, 1, 1);
setDisp( spep_3-1 + 164, 1, 0);

changeAnime( spep_3-3 + 92, 1, 6);
changeAnime( spep_3-3 + 116, 1, 8);

setMoveKey( spep_3-3 + 92, 1, 92.2, -601.5 , 0 );
setMoveKey( spep_3-3 + 93, 1, 92.2, -601.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 83.7, -560.8 , 0 );
setMoveKey( spep_3-3 + 95, 1, 83.7, -560.8 , 0 );
setMoveKey( spep_3-3 + 96, 1, 75.3, -520.1 , 0 );
setMoveKey( spep_3-3 + 97, 1, 75.3, -520.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, 66.8, -479.4 , 0 );
setMoveKey( spep_3-3 + 99, 1, 66.8, -479.4 , 0 );
setMoveKey( spep_3-3 + 100, 1, 58.3, -438.7 , 0 );
setMoveKey( spep_3-3 + 101, 1, 58.3, -438.7 , 0 );
setMoveKey( spep_3-3 + 102, 1, 49.8, -398 , 0 );
setMoveKey( spep_3-3 + 103, 1, 49.8, -398 , 0 );
setMoveKey( spep_3-3 + 104, 1, 41.3, -357.3 , 0 );
setMoveKey( spep_3-3 + 105, 1, 41.3, -357.3 , 0 );
setMoveKey( spep_3-3 + 106, 1, 32.8, -316.6 , 0 );
setMoveKey( spep_3-3 + 107, 1, 32.8, -316.6 , 0 );
setMoveKey( spep_3-3 + 108, 1, 24.1, -279.7 , 0 );
setMoveKey( spep_3-3 + 109, 1, 24.1, -279.7 , 0 );
setMoveKey( spep_3-3 + 110, 1, 15.4, -242.9 , 0 );
setMoveKey( spep_3-3 + 111, 1, 15.4, -242.9 , 0 );
setMoveKey( spep_3-3 + 112, 1, 6.6, -206.1 , 0 );
setMoveKey( spep_3-3 + 113, 1, 6.6, -206.1 , 0 );
setMoveKey( spep_3-3 + 114, 1, -2.5, -160.9 , 0 );
setMoveKey( spep_3-3 + 115, 1, -2.5, -160.9 , 0 );

setMoveKey( spep_3-3 + 116, 1, -6.9, -312.7 , 0 );
setMoveKey( spep_3-3 + 117, 1, -6.9, -312.7 , 0 );
setMoveKey( spep_3-3 + 118, 1, -8.5, -408.4 , 0 );
setMoveKey( spep_3-3 + 119, 1, -8.5, -408.4 , 0 );
setMoveKey( spep_3-3 + 120, 1, 0.9, -330.9 , 0 );
setMoveKey( spep_3-3 + 121, 1, 0.9, -330.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, -1.4, -226 , 0 );
setMoveKey( spep_3-3 + 123, 1, -1.4, -226 , 0 );
setMoveKey( spep_3-3 + 124, 1, -5.9, -236.3 , 0 );
setMoveKey( spep_3-3 + 125, 1, -5.9, -236.3 , 0 );
setMoveKey( spep_3-3 + 126, 1, -3.9, -243.1 , 0 );
setMoveKey( spep_3-3 + 127, 1, -3.9, -243.1 , 0 );
setMoveKey( spep_3-3 + 128, 1, 5, -253.9 , 0 );
setMoveKey( spep_3-3 + 129, 1, 5, -253.9 , 0 );
setMoveKey( spep_3-3 + 130, 1, 4.9, -245.9 , 0 );
setMoveKey( spep_3-3 + 131, 1, 4.9, -245.9 , 0 );
setMoveKey( spep_3-3 + 132, 1, 0.4, -256.3 , 0 );
setMoveKey( spep_3-3 + 133, 1, 0.4, -256.3 , 0 );
setMoveKey( spep_3-3 + 134, 1, 2.4, -263.1 , 0 );
setMoveKey( spep_3-3 + 135, 1, 2.4, -263.1 , 0 );
setMoveKey( spep_3-3 + 136, 1, 11.3, -273.8 , 0 );
setMoveKey( spep_3-3 + 137, 1, 11.3, -273.8 , 0 );
setMoveKey( spep_3-3 + 138, 1, 11.2, -265.8 , 0 );
setMoveKey( spep_3-3 + 139, 1, 11.2, -265.8 , 0 );
setMoveKey( spep_3-3 + 140, 1, 6.5, -276.2 , 0 );
setMoveKey( spep_3-3 + 141, 1, 6.5, -276.2 , 0 );
setMoveKey( spep_3-3 + 142, 1, 10, -288 , 0 );
setMoveKey( spep_3-3 + 143, 1, 10, -288 , 0 );
setMoveKey( spep_3-3 + 144, 1, 34.1, -346.7 , 0 );
setMoveKey( spep_3-3 + 145, 1, 34.1, -346.7 , 0 );
setMoveKey( spep_3-3 + 146, 1, 57.6, -414.8 , 0 );
setMoveKey( spep_3-3 + 147, 1, 57.6, -414.8 , 0 );
setMoveKey( spep_3-3 + 148, 1, 79.2, -509.6 , 0 );
setMoveKey( spep_3-3 + 149, 1, 79.2, -509.6 , 0 );
setMoveKey( spep_3-3 + 150, 1, 118.7, -626 , 0 );
setMoveKey( spep_3-3 + 151, 1, 118.7, -626 , 0 );

setMoveKey( spep_3-3 + 152, 1, -166.1, 253.6 , 0 );
setMoveKey( spep_3-3 + 153, 1, -166.1, 253.6 , 0 );
setMoveKey( spep_3-3 + 154, 1, -150.7, 196.1 , 0 );
setMoveKey( spep_3-3 + 155, 1, -150.7, 196.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, -135.2, 138.6 , 0 );
setMoveKey( spep_3-3 + 157, 1, -135.2, 138.6 , 0 );
setMoveKey( spep_3-3 + 158, 1, -119.7, 81 , 0 );
setMoveKey( spep_3-3 + 159, 1, -119.7, 81 , 0 );
setMoveKey( spep_3-3 + 160, 1, -104.2, 23.5 , 0 );
setMoveKey( spep_3-3 + 161, 1, -104.2, 23.5 , 0 );
setMoveKey( spep_3-3 + 162, 1, -88.7, -34 , 0 );
setMoveKey( spep_3-3 + 163, 1, -88.7, -34 , 0 );
setMoveKey( spep_3-3 + 164, 1, -73.2, -91.5 , 0 );
setMoveKey( spep_3-1 + 164, 1, -73.2, -91.5 , 0 );

setScaleKey( spep_3-3 + 92, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 93, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 94, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 95, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 96, 1, 1.73, 1.73 );
setScaleKey( spep_3-3 + 97, 1, 1.73, 1.73 );
setScaleKey( spep_3-3 + 98, 1, 1.75, 1.75 );
setScaleKey( spep_3-3 + 99, 1, 1.75, 1.75 );
setScaleKey( spep_3-3 + 100, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 101, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 102, 1, 1.78, 1.78 );
setScaleKey( spep_3-3 + 103, 1, 1.78, 1.78 );
setScaleKey( spep_3-3 + 104, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 105, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 106, 1, 1.81, 1.81 );
setScaleKey( spep_3-3 + 107, 1, 1.81, 1.81 );
setScaleKey( spep_3-3 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 109, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 110, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 111, 1, 1.98, 1.98 );
setScaleKey( spep_3-3 + 112, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 113, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 114, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 115, 1, 2.05, 2.05 );

setScaleKey( spep_3-3 + 116, 1, 3.75, 3.75 );
setScaleKey( spep_3-3 + 117, 1, 3.75, 3.75 );
setScaleKey( spep_3-3 + 118, 1, 4.86, 4.86 );
setScaleKey( spep_3-3 + 119, 1, 4.86, 4.86 );
setScaleKey( spep_3-3 + 120, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 121, 1, 3.78, 3.78 );
setScaleKey( spep_3-3 + 122, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 123, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 124, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 126, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 127, 1, 2.68, 2.68 );
setScaleKey( spep_3-3 + 128, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 130, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 131, 1, 2.7, 2.7 );
setScaleKey( spep_3-3 + 132, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 134, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 135, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 136, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 138, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 139, 1, 2.74, 2.74 );
setScaleKey( spep_3-3 + 140, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 141, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 142, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 143, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 144, 1, 2.88, 2.88 );
setScaleKey( spep_3-3 + 145, 1, 2.88, 2.88 );
setScaleKey( spep_3-3 + 146, 1, 3.03, 3.03 );
setScaleKey( spep_3-3 + 147, 1, 3.03, 3.03 );
setScaleKey( spep_3-3 + 148, 1, 3.21, 3.21 );
setScaleKey( spep_3-3 + 149, 1, 3.21, 3.21 );
setScaleKey( spep_3-3 + 150, 1, 3.43, 3.43 );
setScaleKey( spep_3-3 + 151, 1, 3.43, 3.43 );

setScaleKey( spep_3-3 + 152, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 153, 1, 1.7, 1.7 );
setScaleKey( spep_3-3 + 154, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 155, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 156, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 157, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 158, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 159, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 160, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 161, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 162, 1, 1.58, 1.58 );
setScaleKey( spep_3-1 + 164, 1, 1.56, 1.56 );

setRotateKey( spep_3-3 + 92, 1, -8 );
setRotateKey( spep_3-3 + 93, 1, -8 );
setRotateKey( spep_3-3 + 94, 1, -8.7 );
setRotateKey( spep_3-3 + 95, 1, -8.7 );
setRotateKey( spep_3-3 + 96, 1, -9.4 );
setRotateKey( spep_3-3 + 97, 1, -9.4 );
setRotateKey( spep_3-3 + 98, 1, -10.1 );
setRotateKey( spep_3-3 + 99, 1, -10.1 );
setRotateKey( spep_3-3 + 100, 1, -10.9 );
setRotateKey( spep_3-3 + 101, 1, -10.9 );
setRotateKey( spep_3-3 + 102, 1, -11.6 );
setRotateKey( spep_3-3 + 103, 1, -11.6 );
setRotateKey( spep_3-3 + 104, 1, -12.3 );
setRotateKey( spep_3-3 + 105, 1, -12.3 );
setRotateKey( spep_3-3 + 106, 1, -13 );
setRotateKey( spep_3-3 + 108, 1, -13 );
setRotateKey( spep_3-3 + 109, 1, -13 );
setRotateKey( spep_3-3 + 110, 1, -12.9 );
setRotateKey( spep_3-3 + 113, 1, -12.9 );
setRotateKey( spep_3-3 + 114, 1, -12.8 );
setRotateKey( spep_3-3 + 115, 1, -12.8 );

setRotateKey( spep_3-3 + 116, 1, -87 );
setRotateKey( spep_3-3 + 119, 1, -87 );
setRotateKey( spep_3-3 + 120, 1, -89 );
setRotateKey( spep_3-3 + 123, 1, -89 );
setRotateKey( spep_3-3 + 124, 1, -87 );
setRotateKey( spep_3-3 + 127, 1, -87 );
setRotateKey( spep_3-3 + 128, 1, -89 );
setRotateKey( spep_3-3 + 131, 1, -89 );
setRotateKey( spep_3-3 + 132, 1, -87 );
setRotateKey( spep_3-3 + 135, 1, -87 );
setRotateKey( spep_3-3 + 136, 1, -89 );
setRotateKey( spep_3-3 + 139, 1, -89 );
setRotateKey( spep_3-3 + 140, 1, -87 );
setRotateKey( spep_3-3 + 151, 1, -87 );

setRotateKey( spep_3-3 + 152, 1, -100 );
setRotateKey( spep_3-1 + 164, 1, -100 );

--SE
--かめはめ波溜め
SE051 = playSeVer2( spep_3 + 2, 1131, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_3 + 2, 1132, "",spep_3 + 104, 0, 14, -1);
SE053 = playSeVer2( spep_3 + 2, 1144, "",spep_3 + 104, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 2, SE053, 62 );

--かめはめ波発射
SE054 = playSeVer2( spep_3 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE054, 68 );
SE055 = playSeVer2( spep_3 + 86, 1022, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_3 + 86, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE056, 89 );
SE057 = playSeVer2( spep_3 + 86, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE057, 74 );

--敵ヒット
SE058 = playSeVer2( spep_3 + 110, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE058, 89 );
SE059 = playSeVer2( spep_3 + 110, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE059, 86 );
SE060 = playSeVer2( spep_3 + 110, 1161, "", 0, 0, 0, -1);

--地面爆発
SE061 = playSeVer2( spep_3 + 170, 1024, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_3 + 170, 1159, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_3 + 170, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 170, SE063, 73 );

--白フェード
entryFade( spep_3 +320 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--終わり
dealDamage( spep_3 + 164 );
endPhase( spep_3 + 310 ); -- 終了フレーム 
end