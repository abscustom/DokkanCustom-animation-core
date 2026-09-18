--1024990:UR_パン(GT) _必殺技：乙女ブラスト
--sp_effect_a1_00360
--sp2400

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
SP_01 = 160197; --冒頭、崖ジャンプ
SP_02 = 160198; --サマーソルトキック：敵前
SP_03 = 160199; --サマーソルトキック：敵後ろ
SP_04 = 160200; --気弾タメ
SP_05 = 160201; --セリフカットイン
SP_06 = 160202; --気弾発射
SP_07 = 160203; --気弾命中：敵前
SP_08 = 160204; --気弾命中：敵後ろ
SP_09 = 160205; --ラスト：敵前
SP_10 = 160206; --ラスト：敵後ろ

--エフェクト(てき)
SP_01x = 160197; --冒頭、崖ジャンプ
SP_02x = 160207; --サマーソルトキック：敵前 (敵)
SP_03x = 160199; --サマーソルトキック：敵後ろ
SP_04x = 160208; --気弾タメ (敵)
SP_05x = 160209; --セリフカットイン (敵)
SP_06x = 160210; --気弾発射 (敵)
SP_07x = 160211; --気弾命中：敵前 (敵)
SP_08x = 160204; --気弾命中：敵後ろ
SP_09x = 160212; --ラスト：敵前 (敵)
SP_10x = 160206; --ラスト：敵後ろ

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
--冒頭、崖ジャンプ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
jump = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_0 + 66, jump, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, jump, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump, 0 );
setEffRotateKey( spep_0 + 66, jump, 0 );
setEffAlphaKey( spep_0 + 0, jump, 255 );
setEffAlphaKey( spep_0 + 64, jump, 255 );
setEffAlphaKey( spep_0 + 65, jump, 255 );
setEffAlphaKey( spep_0 + 66, jump, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "",spep_0 + 50, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );

--走ってくる
SE002 = playSeVer2( spep_0 + 8, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 200 );
setBandpassFilter( spep_0 + 8, SE002, 24, 1000 );
SE003 = playSeVer2( spep_0 + 8, 1111, "",spep_0 + 20, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 79 );
SE004 = playSeVer2( spep_0 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 200 );
setBandpassFilter( spep_0 + 20, SE004, 24, 1000 );
SE005 = playSeVer2( spep_0 + 20, 1111, "",spep_0 + 32, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 79 );

--白フェード
entryFade( spep_0 +0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 36; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );

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
--走ってくる
SE006 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE006, 200 );
setBandpassFilter( spep_0 + 30, SE006, 24, 1000 );
SE007 = playSeVer2( spep_0 + 30, 1111, "",spep_0 + 42, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 30, SE007, 79 );
SE009 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE009, 200 );
SE010 = playSeVer2( spep_0 + 40, 1111, "",spep_0 + 54, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 40, SE010, 79 );

--ジャンプ
SE008 = playSeVer2( spep_0 + 34, 1013, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 38, 1117, "",spep_0 + 90, 0, 10, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 66;
------------------------------------------------------
--サマーソルトキック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0,kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 82,kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 82,kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_f, 0 );
setEffRotateKey( spep_1 + 82,kick_f, 0 );
setEffAlphaKey( spep_1 + 0,kick_f, 255 );
setEffAlphaKey( spep_1 + 82,kick_f, 255 );
setEffAlphaKey( spep_1 + 83,kick_f, 255 );
setEffAlphaKey( spep_1 + 84,kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0,kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 82,kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 82,kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_b, 0 );
setEffRotateKey( spep_1 + 82,kick_b, 0 );
setEffAlphaKey( spep_1 + 0,kick_b, 255 );
setEffAlphaKey( spep_1 + 82,kick_b, 255 );
setEffAlphaKey( spep_1 + 83,kick_b, 255 );
setEffAlphaKey( spep_1 + 84,kick_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1+1 + 74, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1+1 + 40, 1, 106 );

a=-40;
b=40;

setMoveKey( spep_1 + 0, 1, 53.6+a, -141.8+b , 0 );
--setMoveKey( spep_1+1 + 2, 1, 53.6, -141.7 , 0 );
setMoveKey( spep_1+1 + 12, 1, 53.6+a, -141.7+b , 0 );
setMoveKey( spep_1+1 + 14, 1, 53.6+a, -142.4+b , 0 );
setMoveKey( spep_1+1 + 16, 1, 53.6+a, -141.4+b , 0 );
setMoveKey( spep_1+1 + 18, 1, 53.6+a, -142.2+b , 0 );
setMoveKey( spep_1+1 + 20, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 22, 1, 53.6+a, -142.1+b , 0 );
setMoveKey( spep_1+1 + 24, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 26, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 28, 1, 53.6+a, -137.7+b , 0 );
setMoveKey( spep_1+1 + 30, 1, 53.6+a, -141.8+b , 0 );
setMoveKey( spep_1+1 + 32, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 39, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 40, 1, 34.8+a, 200.6+b , 0 );
setMoveKey( spep_1+1 + 42, 1, 36.6+a, 181.8+b , 0 );
setMoveKey( spep_1+1 + 44, 1, 40.3+a, 194.5+b , 0 );
setMoveKey( spep_1+1 + 46, 1, 44.3+a, 185.8+b , 0 );
setMoveKey( spep_1+1 + 48, 1, 48.6+a, 201+b , 0 );
setMoveKey( spep_1+1 + 50, 1, 52.8+a, 195.7+b , 0 );
setMoveKey( spep_1+1 + 52, 1, 57.1+a, 206.8+b , 0 );
setMoveKey( spep_1+1 + 54, 1, 142.5+a, 398.3+b , 0 );
setMoveKey( spep_1+1 + 56, 1, 173.8+a, 474.9+b , 0 );
setMoveKey( spep_1+1 + 58, 1, 195.8+a, 522.3+b , 0 );
setMoveKey( spep_1+1 + 60, 1, 212.9+a, 563.6+b , 0 );
setMoveKey( spep_1+1 + 62, 1, 226.7+a, 594.4+b , 0 );
setMoveKey( spep_1+1 + 64, 1, 237.9+a, 621.2+b , 0 );
setMoveKey( spep_1+1 + 66, 1, 247+a, 642.2+b , 0 );
setMoveKey( spep_1+1 + 68, 1, 254.2+a, 658.9+b , 0 );
setMoveKey( spep_1+1 + 70, 1, 259.6+a, 671.4+b , 0 );
setMoveKey( spep_1+1 + 72, 1, 263.1+a, 679.6+b , 0 );
setMoveKey( spep_1+1 + 74, 1, 264+a, 682.3+b , 0 );

setScaleKey( spep_1 + 0, 1, 2,2);
setScaleKey( spep_1+1 + 39, 1, 2,2);
setScaleKey( spep_1+1 + 40, 1, 2.2,2.2);
setScaleKey( spep_1+1 + 42, 1, 2.03,2.03);
setScaleKey( spep_1+1 + 44, 1, 1.98,1.98);
setScaleKey( spep_1+1 + 46, 1, 1.96,1.96);
setScaleKey( spep_1+1 + 48, 1, 1.94,1.94);
setScaleKey( spep_1+1 + 50, 1, 1.93,1.93);
setScaleKey( spep_1+1 + 52, 1, 1.92,1.92);
setScaleKey( spep_1+1 + 54, 1, 1.42,1.42);
setScaleKey( spep_1+1 + 56, 1, 1.23,1.23);
setScaleKey( spep_1+1 + 58, 1, 1.1,1.1);
setScaleKey( spep_1+1 + 60, 1, 1,1);
setScaleKey( spep_1+1 + 62, 1, 0.92,0.92);
setScaleKey( spep_1+1 + 64, 1, 0.86,0.86);
setScaleKey( spep_1+1 + 66, 1, 0.8,0.8);
setScaleKey( spep_1+1 + 68, 1, 0.76,0.76);
setScaleKey( spep_1+1 + 70, 1, 0.73,0.73);
setScaleKey( spep_1+1 + 72, 1, 0.71,0.71);
setScaleKey( spep_1+1 + 74, 1, 0.7,0.7);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1+1 + 39, 1, 0 );
setRotateKey( spep_1+1 + 40, 1, -43 );
setRotateKey( spep_1+1 + 42, 1, -42.4 );
setRotateKey( spep_1+1 + 44, 1, -41.8 );
setRotateKey( spep_1+1 + 46, 1, -41.3 );
setRotateKey( spep_1+1 + 48, 1, -40.7 );
setRotateKey( spep_1+1 + 50, 1, -40.2 );
setRotateKey( spep_1+1 + 52, 1, -39.6 );
setRotateKey( spep_1+1 + 54, 1, -32.1 );
setRotateKey( spep_1+1 + 56, 1, -29.3 );
setRotateKey( spep_1+1 + 58, 1, -27.3 );
setRotateKey( spep_1+1 + 60, 1, -25.8 );
setRotateKey( spep_1+1 + 62, 1, -24.6 );
setRotateKey( spep_1+1 + 64, 1, -23.6 );
setRotateKey( spep_1+1 + 66, 1, -22.8 );
setRotateKey( spep_1+1 + 68, 1, -22.2 );
setRotateKey( spep_1+1 + 70, 1, -21.7 );
setRotateKey( spep_1+1 + 72, 1, -21.4 );
setRotateKey( spep_1+1 + 74, 1, -21.3 );

--SE
--着地
SE012 = playSeVer2( spep_1 + 12, 1106, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 14, 1107, "", 0, 0, 0, -1);

--サマーソルト
SE014 = playSeVer2( spep_1 + 28, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 38, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 38, 1110, "", 0, 0, 0, -1);

--着地
SE017 = playSeVer2( spep_1 + 68, 1192, "",spep_1 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 68, SE017, 65 );
SE018 = playSeVer2( spep_1 + 72, 1108, "", 0, 0, 0, -1);
setBandpassFilter( spep_1 + 72, SE018, 24, 1500 );
SE019 = playSeVer2( spep_1 + 74, 1107, "", 0, 0, 0, -1);
setBandpassFilter( spep_1 + 74, SE019, 24, 1500 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 84;
------------------------------------------------------
--気弾タメ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0,tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 116,tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116,tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,tame, 0 );
setEffRotateKey( spep_2 + 116,tame, 0 );
setEffAlphaKey( spep_2 + 0,tame, 255 );
setEffAlphaKey( spep_2 + 114,tame, 255 );
setEffAlphaKey( spep_2 + 115,tame, 255 );
setEffAlphaKey( spep_2 + 116,tame, 0 );

--SE
--右手出す
SE020 = playSeVer2( spep_2 + 12, 1003, "",spep_2 + 26, 0, 6, -1);

--右手気弾溜め
SE021 = playSeVer2( spep_2 + 32, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE021,  183 );
SE022 = playSeVer2( spep_2 + 32, 1296, "",spep_2 + 92, 0, 10, -1);

--気弾溜め
SE023 = playSeVer2( spep_2 + 32, 1252, "", 0, 0, 0, -1);

--左手気弾溜め
SE025 = playSeVer2( spep_2 + 80, 1328, "", 0, 2, 0, -1);
SE026 = playSeVer2( spep_2 + 80, 1296, "",spep_2 + 232, 0, 10, -1);
setStartTimeMs( SE025,  183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 116;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0,cut, 0, 0, 0 );
setEffMoveKey( spep_3 + 100,cut, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,cut, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100,cut, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,cut, 0 );
setEffRotateKey( spep_3 + 100,cut, 0 );
setEffAlphaKey( spep_3 + 0,cut, 255 );
setEffAlphaKey( spep_3 + 100,cut, 255 );

--顔カットインのタイミング指定
spep_x=spep_3 +8;

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

--集中線
shuchusen2 = entryEffectLife( spep_3-3 + 18,  906, 80+1, 0x100, -1, 0, 0, 8.8 );
setEffShake( spep_3-3 + 18, shuchusen2, 80+1, 20 );
setEffMoveKey( spep_3-3 + 18, shuchusen2, 0, 8.8 , 0 );
setEffMoveKey( spep_3-2 + 98, shuchusen2, 0, 8.8 , 0 );

setEffScaleKey( spep_3-3 + 18, shuchusen2, 1.45, 1.45 );
setEffScaleKey( spep_3-2 + 98, shuchusen2, 1.45, 1.45 );

setEffRotateKey( spep_3-3 + 18, shuchusen2, 180 );
setEffRotateKey( spep_3-2 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_3-3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_3-2 + 98, shuchusen2, 255 );

--SE
--両手気弾溜め
SE024 = playSeVer2( spep_3 + 0, 1210, "",spep_3 + 106, 16, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE024, 68 );
setStartTimeMs( SE024,  1567 );
SE029 = playSeVer2( spep_3 + 12, 1043, "",spep_3 + 106, 0, 8, -1);

--顔カットイン
SE028 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_3 +92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94;
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0,beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 76,beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76,beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,beam, 0 );
setEffRotateKey( spep_5 + 76,beam, 0 );
setEffAlphaKey( spep_5 + 0,beam, 255 );
setEffAlphaKey( spep_5 + 80,beam, 255 );

--SE
--発射前気弾溜め
SE027 = playSeVer2( spep_5 + 2, 1210, "",spep_5 + 40, 4, 10, -1);
setSeVolumeByWorkId( spep_5 + 2, SE027, 71 );
setStartTimeMs( SE027,  3200 );
SE031 = playSeVer2( spep_5 + 2, 1296, "",spep_5 + 40, 4, 10, -1);
setStartTimeMs( SE031,  1367 );
SE032 = playSeVer2( spep_5 + 0, 1043, "",spep_5 + 60, 6, 8, -1);
setStartTimeMs( SE032,  533 );

--気弾発射
SE033 = playSeVer2( spep_5 + 32, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 32, SE033, 65 );
SE034 = playSeVer2( spep_5 + 32, 1146, "",spep_5 + 160, 0, 36, -1);
setSeVolumeByWorkId( spep_5 + 32, SE034, 89 );
SE035 = playSeVer2( spep_5 + 32, 1284, "",spep_5 + 160, 0, 36, -1);
setSeVolumeByWorkId( spep_5 + 32, SE035, 80 );

--白フェード
entryFade( spep_5 +72 , 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 80;
------------------------------------------------------
--気弾命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0,hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 86,hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86,hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,hit_f, 0 );
setEffRotateKey( spep_6 + 86,hit_f, 0 );
setEffAlphaKey( spep_6 + 0,hit_f, 255 );
setEffAlphaKey( spep_6 + 84,hit_f, 255 );
setEffAlphaKey( spep_6 + 85,hit_f, 255 );
setEffAlphaKey( spep_6 + 86,hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0,hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 86,hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86,hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,hit_b, 0 );
setEffRotateKey( spep_6 + 86,hit_b, 0 );
setEffAlphaKey( spep_6 + 0,hit_b, 255 );
setEffAlphaKey( spep_6 + 84,hit_b, 255 );
setEffAlphaKey( spep_6 + 85,hit_b, 255 );
setEffAlphaKey( spep_6 + 86,hit_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 30, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 323.9, 898.8 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 306.7, 852.5 , 0 );
setMoveKey( spep_6-3 + 4, 1, 289.5, 800.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 272.4, 757.7 , 0 );
setMoveKey( spep_6-3 + 8, 1, 255.2, 705.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, 238.1, 661.9 , 0 );
setMoveKey( spep_6-3 + 12, 1, 220.9, 610.5 , 0 );
setMoveKey( spep_6-3 + 14, 1, 203.7, 566.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, 186.6, 515.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 169.4, 469.3 , 0 );
setMoveKey( spep_6-3 + 20, 1, 152.3, 419 , 0 );
setMoveKey( spep_6-3 + 22, 1, 135.1, 376 , 0 );
setMoveKey( spep_6-3 + 24, 1, 117.9, 323.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 100.8, 280.1 , 0 );
setMoveKey( spep_6-1 + 30, 1, 83.6, 228.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_6-1 + 30, 1, 1.9, 1.9 );

setRotateKey( spep_6 + 0, 1, -34.8 );
setRotateKey( spep_6-1 + 30, 1, -34.8 );

--敵の動き
shuchusen1 = entryEffectLife( spep_6-3 + 36,  906, 52+1, 0x100, -1, 0, -52.8, 124 );
setEffShake( spep_6-3 + 36, shuchusen1, 52+1, 20 );
setEffMoveKey( spep_6-3 + 36, shuchusen1, -52.8, 124 , 0 );
setEffMoveKey( spep_6-2 + 88, shuchusen1, -52.8, 124 , 0 );

setEffScaleKey( spep_6-3 + 36, shuchusen1, 2.5, 2.5 );
setEffScaleKey( spep_6-2 + 88, shuchusen1, 2.5, 2.5 );

setEffRotateKey( spep_6-3 + 36, shuchusen1, 180 );
setEffRotateKey( spep_6-2 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_6-3 + 36, shuchusen1, 219 );
setEffAlphaKey( spep_6-2 + 88, shuchusen1, 219 );

--SE
--気弾迫る
SE036 = playSeVer2( spep_6 + 14, 1021, "", 0, 0, 0, -1);

--爆発
SE037 = playSeVer2( spep_6 + 28, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE037, 87 );
SE038 = playSeVer2( spep_6 + 28, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE038, 81 );

--敵飛んでいく
SE039 = playSeVer2( spep_6 + 60, 1183, "",spep_6 + 124, 0, 12, -1);

--白フェード
entryFade( spep_6 +84 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 86;
------------------------------------------------------
--ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0,finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 160,finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160,finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,finish_f, 0 );
setEffRotateKey( spep_7 + 160,finish_f, 0 );
setEffAlphaKey( spep_7 + 0,finish_f, 255 );
setEffAlphaKey( spep_7 + 160,finish_f,255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0,finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 160,finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160,finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,finish_b, 0 );
setEffRotateKey( spep_7 + 160,finish_b, 0 );
setEffAlphaKey( spep_7 + 0,finish_b, 255 );
setEffAlphaKey( spep_7 + 160,finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 26, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, 202.3, 790.5 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 200.2, 718 , 0 );
setMoveKey( spep_7-3 + 4, 1, 198.2, 645.5 , 0 );
setMoveKey( spep_7-3 + 6, 1, 196.2, 573 , 0 );
setMoveKey( spep_7-3 + 8, 1, 194.1, 500.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, 192.1, 428 , 0 );
setMoveKey( spep_7-3 + 12, 1, 190.1, 355.4 , 0 );
setMoveKey( spep_7-3 + 14, 1, 188.1, 282.9 , 0 );
setMoveKey( spep_7-3 + 16, 1, 186, 210.4 , 0 );
setMoveKey( spep_7-3 + 18, 1, 184, 137.9 , 0 );
setMoveKey( spep_7-3 + 20, 1, 182, 65.3 , 0 );
setMoveKey( spep_7-3 + 22, 1, 180, -7.2 , 0 );
setMoveKey( spep_7-3 + 24, 1, 178, -79.8 , 0 );
setMoveKey( spep_7-1 + 26, 1, 175.9, -152.3 , 0 );

setScaleKey( spep_7 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_7-1 + 26, 1, 0.7, 0.7 );

setRotateKey( spep_7 + 0, 1, 54.9 );
--setRotateKey( spep_7-3 + 2, 1, 56.4 );
setRotateKey( spep_7-3 + 4, 1, 58 );
setRotateKey( spep_7-3 + 6, 1, 59.5 );
setRotateKey( spep_7-3 + 8, 1, 61 );
setRotateKey( spep_7-3 + 10, 1, 62.5 );
setRotateKey( spep_7-3 + 12, 1, 64.1 );
setRotateKey( spep_7-3 + 14, 1, 65.6 );
setRotateKey( spep_7-3 + 16, 1, 67.1 );
setRotateKey( spep_7-3 + 18, 1, 68.6 );
setRotateKey( spep_7-3 + 20, 1, 70.2 );
setRotateKey( spep_7-3 + 22, 1, 71.7 );
setRotateKey( spep_7-3 + 24, 1, 73.2 );
setRotateKey( spep_7-1 + 26, 1, 74.7 );

--SE
--地面落ちる
SE040 = playSeVer2( spep_7 + 22, 1014, "", 0, 0, 0, -1);

--手を払う
SE041 = playSeVer2( spep_7 + 26, 1111, "",spep_7 + 40, 0, 4, -1);
setPitch( spep_7 + 26, SE041, 400 );
setTimeStretch( SE041, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 26, SE041, 820, 24000 );
SE042 = playSeVer2( spep_7 + 28, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 28, SE042, 126 );
setPitch( spep_7 + 28, SE042, 200 );
setTimeStretch( SE042, 1.13, 30, 4 );
SE043 = playSeVer2( spep_7 + 44, 1111, "",spep_7 + 58, 0, 4, -1);
setPitch( spep_7 + 44, SE043, 400 );
setTimeStretch( SE043, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 44, SE043, 820, 24000 );
SE044 = playSeVer2( spep_7 + 46, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 46, SE044, 126 );
setPitch( spep_7 + 46, SE044, 200 );
setTimeStretch( SE044, 1.13, 30, 4 );
SE045 = playSeVer2( spep_7 + 72, 1111, "",spep_7 + 86, 0, 2, -1);
setPitch( spep_7 + 72, SE045, 400 );
setTimeStretch( SE045, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 72, SE045, 820, 24000 );
SE046 = playSeVer2( spep_7 + 74, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 74, SE046, 126 );
setPitch( spep_7 + 74, SE046, 200 );
setTimeStretch( SE046, 1.13, 30, 4 );
SE047 = playSeVer2( spep_7 + 92, 1111, "",spep_7 + 106, 0, 4, -1);
setPitch( spep_7 + 92, SE047, 400 );
setTimeStretch( SE047, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 92, SE047, 820, 24000 );
SE048 = playSeVer2( spep_7 + 94, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 94, SE048, 126 );
setPitch( spep_7 + 94, SE048, 200 );
setTimeStretch( SE048, 1.13, 30, 4 );


-- 終わり
dealDamage(spep_7+28);
endPhase( spep_7 + 150 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭、崖ジャンプ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
jump = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_0 + 66, jump, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, jump, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump, 0 );
setEffRotateKey( spep_0 + 66, jump, 0 );
setEffAlphaKey( spep_0 + 0, jump, 255 );
setEffAlphaKey( spep_0 + 64, jump, 255 );
setEffAlphaKey( spep_0 + 65, jump, 255 );
setEffAlphaKey( spep_0 + 66, jump, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "",spep_0 + 50, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );

--走ってくる
SE002 = playSeVer2( spep_0 + 8, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 200 );
setBandpassFilter( spep_0 + 8, SE002, 24, 1000 );
SE003 = playSeVer2( spep_0 + 8, 1111, "",spep_0 + 20, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 79 );
SE004 = playSeVer2( spep_0 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 200 );
setBandpassFilter( spep_0 + 20, SE004, 24, 1000 );
SE005 = playSeVer2( spep_0 + 20, 1111, "",spep_0 + 32, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 79 );

--白フェード
entryFade( spep_0 +0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 36; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );

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
--走ってくる
SE006 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE006, 200 );
setBandpassFilter( spep_0 + 30, SE006, 24, 1000 );
SE007 = playSeVer2( spep_0 + 30, 1111, "",spep_0 + 42, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 30, SE007, 79 );
SE009 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE009, 200 );
SE010 = playSeVer2( spep_0 + 40, 1111, "",spep_0 + 54, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 40, SE010, 79 );

--ジャンプ
SE008 = playSeVer2( spep_0 + 34, 1013, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 38, 1117, "",spep_0 + 90, 0, 10, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 66;
------------------------------------------------------
--サマーソルトキック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0,kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 82,kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 82,kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_f, 0 );
setEffRotateKey( spep_1 + 82,kick_f, 0 );
setEffAlphaKey( spep_1 + 0,kick_f, 255 );
setEffAlphaKey( spep_1 + 82,kick_f, 255 );
setEffAlphaKey( spep_1 + 83,kick_f, 255 );
setEffAlphaKey( spep_1 + 84,kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0,kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 82,kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 82,kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,kick_b, 0 );
setEffRotateKey( spep_1 + 82,kick_b, 0 );
setEffAlphaKey( spep_1 + 0,kick_b, 255 );
setEffAlphaKey( spep_1 + 82,kick_b, 255 );
setEffAlphaKey( spep_1 + 83,kick_b, 255 );
setEffAlphaKey( spep_1 + 84,kick_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1+1 + 74, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1+1 + 40, 1, 106 );

a=-40;
b=40;

setMoveKey( spep_1 + 0, 1, 53.6+a, -141.8+b , 0 );
--setMoveKey( spep_1+1 + 2, 1, 53.6, -141.7 , 0 );
setMoveKey( spep_1+1 + 12, 1, 53.6+a, -141.7+b , 0 );
setMoveKey( spep_1+1 + 14, 1, 53.6+a, -142.4+b , 0 );
setMoveKey( spep_1+1 + 16, 1, 53.6+a, -141.4+b , 0 );
setMoveKey( spep_1+1 + 18, 1, 53.6+a, -142.2+b , 0 );
setMoveKey( spep_1+1 + 20, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 22, 1, 53.6+a, -142.1+b , 0 );
setMoveKey( spep_1+1 + 24, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 26, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 28, 1, 53.6+a, -137.7+b , 0 );
setMoveKey( spep_1+1 + 30, 1, 53.6+a, -141.8+b , 0 );
setMoveKey( spep_1+1 + 32, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 39, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 40, 1, 34.8+a, 200.6+b , 0 );
setMoveKey( spep_1+1 + 42, 1, 36.6+a, 181.8+b , 0 );
setMoveKey( spep_1+1 + 44, 1, 40.3+a, 194.5+b , 0 );
setMoveKey( spep_1+1 + 46, 1, 44.3+a, 185.8+b , 0 );
setMoveKey( spep_1+1 + 48, 1, 48.6+a, 201+b , 0 );
setMoveKey( spep_1+1 + 50, 1, 52.8+a, 195.7+b , 0 );
setMoveKey( spep_1+1 + 52, 1, 57.1+a, 206.8+b , 0 );
setMoveKey( spep_1+1 + 54, 1, 142.5+a, 398.3+b , 0 );
setMoveKey( spep_1+1 + 56, 1, 173.8+a, 474.9+b , 0 );
setMoveKey( spep_1+1 + 58, 1, 195.8+a, 522.3+b , 0 );
setMoveKey( spep_1+1 + 60, 1, 212.9+a, 563.6+b , 0 );
setMoveKey( spep_1+1 + 62, 1, 226.7+a, 594.4+b , 0 );
setMoveKey( spep_1+1 + 64, 1, 237.9+a, 621.2+b , 0 );
setMoveKey( spep_1+1 + 66, 1, 247+a, 642.2+b , 0 );
setMoveKey( spep_1+1 + 68, 1, 254.2+a, 658.9+b , 0 );
setMoveKey( spep_1+1 + 70, 1, 259.6+a, 671.4+b , 0 );
setMoveKey( spep_1+1 + 72, 1, 263.1+a, 679.6+b , 0 );
setMoveKey( spep_1+1 + 74, 1, 264+a, 682.3+b , 0 );

setScaleKey( spep_1 + 0, 1, 2,2);
setScaleKey( spep_1+1 + 39, 1, 2,2);
setScaleKey( spep_1+1 + 40, 1, 2.2,2.2);
setScaleKey( spep_1+1 + 42, 1, 2.03,2.03);
setScaleKey( spep_1+1 + 44, 1, 1.98,1.98);
setScaleKey( spep_1+1 + 46, 1, 1.96,1.96);
setScaleKey( spep_1+1 + 48, 1, 1.94,1.94);
setScaleKey( spep_1+1 + 50, 1, 1.93,1.93);
setScaleKey( spep_1+1 + 52, 1, 1.92,1.92);
setScaleKey( spep_1+1 + 54, 1, 1.42,1.42);
setScaleKey( spep_1+1 + 56, 1, 1.23,1.23);
setScaleKey( spep_1+1 + 58, 1, 1.1,1.1);
setScaleKey( spep_1+1 + 60, 1, 1,1);
setScaleKey( spep_1+1 + 62, 1, 0.92,0.92);
setScaleKey( spep_1+1 + 64, 1, 0.86,0.86);
setScaleKey( spep_1+1 + 66, 1, 0.8,0.8);
setScaleKey( spep_1+1 + 68, 1, 0.76,0.76);
setScaleKey( spep_1+1 + 70, 1, 0.73,0.73);
setScaleKey( spep_1+1 + 72, 1, 0.71,0.71);
setScaleKey( spep_1+1 + 74, 1, 0.7,0.7);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1+1 + 39, 1, 0 );
setRotateKey( spep_1+1 + 40, 1, -43 );
setRotateKey( spep_1+1 + 42, 1, -42.4 );
setRotateKey( spep_1+1 + 44, 1, -41.8 );
setRotateKey( spep_1+1 + 46, 1, -41.3 );
setRotateKey( spep_1+1 + 48, 1, -40.7 );
setRotateKey( spep_1+1 + 50, 1, -40.2 );
setRotateKey( spep_1+1 + 52, 1, -39.6 );
setRotateKey( spep_1+1 + 54, 1, -32.1 );
setRotateKey( spep_1+1 + 56, 1, -29.3 );
setRotateKey( spep_1+1 + 58, 1, -27.3 );
setRotateKey( spep_1+1 + 60, 1, -25.8 );
setRotateKey( spep_1+1 + 62, 1, -24.6 );
setRotateKey( spep_1+1 + 64, 1, -23.6 );
setRotateKey( spep_1+1 + 66, 1, -22.8 );
setRotateKey( spep_1+1 + 68, 1, -22.2 );
setRotateKey( spep_1+1 + 70, 1, -21.7 );
setRotateKey( spep_1+1 + 72, 1, -21.4 );
setRotateKey( spep_1+1 + 74, 1, -21.3 );

--SE
--着地
SE012 = playSeVer2( spep_1 + 12, 1106, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 14, 1107, "", 0, 0, 0, -1);

--サマーソルト
SE014 = playSeVer2( spep_1 + 28, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 38, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 38, 1110, "", 0, 0, 0, -1);

--着地
SE017 = playSeVer2( spep_1 + 68, 1192, "",spep_1 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 68, SE017, 65 );
SE018 = playSeVer2( spep_1 + 72, 1108, "", 0, 0, 0, -1);
setBandpassFilter( spep_1 + 72, SE018, 24, 1500 );
SE019 = playSeVer2( spep_1 + 74, 1107, "", 0, 0, 0, -1);
setBandpassFilter( spep_1 + 74, SE019, 24, 1500 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 84;
------------------------------------------------------
--気弾タメ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0,tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 116,tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116,tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,tame, 0 );
setEffRotateKey( spep_2 + 116,tame, 0 );
setEffAlphaKey( spep_2 + 0,tame, 255 );
setEffAlphaKey( spep_2 + 114,tame, 255 );
setEffAlphaKey( spep_2 + 115,tame, 255 );
setEffAlphaKey( spep_2 + 116,tame, 0 );

--SE
--右手出す
SE020 = playSeVer2( spep_2 + 12, 1003, "",spep_2 + 26, 0, 6, -1);

--右手気弾溜め
SE021 = playSeVer2( spep_2 + 32, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE021,  183 );
SE022 = playSeVer2( spep_2 + 32, 1296, "",spep_2 + 92, 0, 10, -1);

--気弾溜め
SE023 = playSeVer2( spep_2 + 32, 1252, "", 0, 0, 0, -1);

--左手気弾溜め
SE025 = playSeVer2( spep_2 + 80, 1328, "", 0, 2, 0, -1);
SE026 = playSeVer2( spep_2 + 80, 1296, "",spep_2 + 232, 0, 10, -1);
setStartTimeMs( SE025,  183 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 116;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0,cut, 0, 0, 0 );
setEffMoveKey( spep_3 + 100,cut, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,cut, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100,cut, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,cut, 0 );
setEffRotateKey( spep_3 + 100,cut, 0 );
setEffAlphaKey( spep_3 + 0,cut, 255 );
setEffAlphaKey( spep_3 + 100,cut, 255 );

--顔カットインのタイミング指定
spep_x=spep_3 +8;

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

--集中線
shuchusen2 = entryEffectLife( spep_3-3 + 18,  906, 80+1, 0x100, -1, 0, 0, 8.8 );
setEffShake( spep_3-3 + 18, shuchusen2, 80+1, 20 );
setEffMoveKey( spep_3-3 + 18, shuchusen2, 0, 8.8 , 0 );
setEffMoveKey( spep_3-2 + 98, shuchusen2, 0, 8.8 , 0 );

setEffScaleKey( spep_3-3 + 18, shuchusen2, 1.45, 1.45 );
setEffScaleKey( spep_3-2 + 98, shuchusen2, 1.45, 1.45 );

setEffRotateKey( spep_3-3 + 18, shuchusen2, 180 );
setEffRotateKey( spep_3-2 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_3-3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_3-2 + 98, shuchusen2, 255 );

--SE
--両手気弾溜め
SE024 = playSeVer2( spep_3 + 0, 1210, "",spep_3 + 106, 16, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE024, 68 );
setStartTimeMs( SE024,  1567 );
SE029 = playSeVer2( spep_3 + 12, 1043, "",spep_3 + 106, 0, 8, -1);

--顔カットイン
--SE028 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_3 +92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94;
------------------------------------------------------
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0,beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 76,beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76,beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0,beam, 0 );
setEffRotateKey( spep_5 + 76,beam, 0 );
setEffAlphaKey( spep_5 + 0,beam, 255 );
setEffAlphaKey( spep_5 + 80,beam, 255 );

--SE
--発射前気弾溜め
SE027 = playSeVer2( spep_5 + 2, 1210, "",spep_5 + 40, 4, 10, -1);
setSeVolumeByWorkId( spep_5 + 2, SE027, 71 );
setStartTimeMs( SE027,  3200 );
SE031 = playSeVer2( spep_5 + 2, 1296, "",spep_5 + 40, 4, 10, -1);
setStartTimeMs( SE031,  1367 );
SE032 = playSeVer2( spep_5 + 0, 1043, "",spep_5 + 60, 6, 8, -1);
setStartTimeMs( SE032,  533 );

--気弾発射
SE033 = playSeVer2( spep_5 + 32, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 32, SE033, 65 );
SE034 = playSeVer2( spep_5 + 32, 1146, "",spep_5 + 160, 0, 36, -1);
setSeVolumeByWorkId( spep_5 + 32, SE034, 89 );
SE035 = playSeVer2( spep_5 + 32, 1284, "",spep_5 + 160, 0, 36, -1);
setSeVolumeByWorkId( spep_5 + 32, SE035, 80 );

--白フェード
entryFade( spep_5 +72 , 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 80;
------------------------------------------------------
--気弾命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_07x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0,hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 86,hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86,hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,hit_f, 0 );
setEffRotateKey( spep_6 + 86,hit_f, 0 );
setEffAlphaKey( spep_6 + 0,hit_f, 255 );
setEffAlphaKey( spep_6 + 84,hit_f, 255 );
setEffAlphaKey( spep_6 + 85,hit_f, 255 );
setEffAlphaKey( spep_6 + 86,hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0,hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 86,hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0,hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86,hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0,hit_b, 0 );
setEffRotateKey( spep_6 + 86,hit_b, 0 );
setEffAlphaKey( spep_6 + 0,hit_b, 255 );
setEffAlphaKey( spep_6 + 84,hit_b, 255 );
setEffAlphaKey( spep_6 + 85,hit_b, 255 );
setEffAlphaKey( spep_6 + 86,hit_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 30, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 323.9, 898.8 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 306.7, 852.5 , 0 );
setMoveKey( spep_6-3 + 4, 1, 289.5, 800.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 272.4, 757.7 , 0 );
setMoveKey( spep_6-3 + 8, 1, 255.2, 705.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, 238.1, 661.9 , 0 );
setMoveKey( spep_6-3 + 12, 1, 220.9, 610.5 , 0 );
setMoveKey( spep_6-3 + 14, 1, 203.7, 566.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, 186.6, 515.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 169.4, 469.3 , 0 );
setMoveKey( spep_6-3 + 20, 1, 152.3, 419 , 0 );
setMoveKey( spep_6-3 + 22, 1, 135.1, 376 , 0 );
setMoveKey( spep_6-3 + 24, 1, 117.9, 323.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 100.8, 280.1 , 0 );
setMoveKey( spep_6-1 + 30, 1, 83.6, 228.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_6-1 + 30, 1, 1.9, 1.9 );

setRotateKey( spep_6 + 0, 1, -34.8 );
setRotateKey( spep_6-1 + 30, 1, -34.8 );

--敵の動き
shuchusen1 = entryEffectLife( spep_6-3 + 36,  906, 52+1, 0x100, -1, 0, -52.8, 124 );
setEffShake( spep_6-3 + 36, shuchusen1, 52+1, 20 );
setEffMoveKey( spep_6-3 + 36, shuchusen1, -52.8, 124 , 0 );
setEffMoveKey( spep_6-2 + 88, shuchusen1, -52.8, 124 , 0 );

setEffScaleKey( spep_6-3 + 36, shuchusen1, 2.5, 2.5 );
setEffScaleKey( spep_6-2 + 88, shuchusen1, 2.5, 2.5 );

setEffRotateKey( spep_6-3 + 36, shuchusen1, 180 );
setEffRotateKey( spep_6-2 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_6-3 + 36, shuchusen1, 219 );
setEffAlphaKey( spep_6-2 + 88, shuchusen1, 219 );

--SE
--気弾迫る
SE036 = playSeVer2( spep_6 + 14, 1021, "", 0, 0, 0, -1);

--爆発
SE037 = playSeVer2( spep_6 + 28, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE037, 87 );
SE038 = playSeVer2( spep_6 + 28, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE038, 81 );

--敵飛んでいく
SE039 = playSeVer2( spep_6 + 60, 1183, "",spep_6 + 124, 0, 12, -1);

--白フェード
entryFade( spep_6 +84 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 86;
------------------------------------------------------
--ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0,finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 160,finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160,finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,finish_f, 0 );
setEffRotateKey( spep_7 + 160,finish_f, 0 );
setEffAlphaKey( spep_7 + 0,finish_f, 255 );
setEffAlphaKey( spep_7 + 160,finish_f,255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0,finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 160,finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0,finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160,finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0,finish_b, 0 );
setEffRotateKey( spep_7 + 160,finish_b, 0 );
setEffAlphaKey( spep_7 + 0,finish_b, 255 );
setEffAlphaKey( spep_7 + 160,finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 26, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, 202.3, 790.5 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 200.2, 718 , 0 );
setMoveKey( spep_7-3 + 4, 1, 198.2, 645.5 , 0 );
setMoveKey( spep_7-3 + 6, 1, 196.2, 573 , 0 );
setMoveKey( spep_7-3 + 8, 1, 194.1, 500.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, 192.1, 428 , 0 );
setMoveKey( spep_7-3 + 12, 1, 190.1, 355.4 , 0 );
setMoveKey( spep_7-3 + 14, 1, 188.1, 282.9 , 0 );
setMoveKey( spep_7-3 + 16, 1, 186, 210.4 , 0 );
setMoveKey( spep_7-3 + 18, 1, 184, 137.9 , 0 );
setMoveKey( spep_7-3 + 20, 1, 182, 65.3 , 0 );
setMoveKey( spep_7-3 + 22, 1, 180, -7.2 , 0 );
setMoveKey( spep_7-3 + 24, 1, 178, -79.8 , 0 );
setMoveKey( spep_7-1 + 26, 1, 175.9, -152.3 , 0 );

setScaleKey( spep_7 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_7-1 + 26, 1, 0.7, 0.7 );

setRotateKey( spep_7 + 0, 1, 54.9 );
--setRotateKey( spep_7-3 + 2, 1, 56.4 );
setRotateKey( spep_7-3 + 4, 1, 58 );
setRotateKey( spep_7-3 + 6, 1, 59.5 );
setRotateKey( spep_7-3 + 8, 1, 61 );
setRotateKey( spep_7-3 + 10, 1, 62.5 );
setRotateKey( spep_7-3 + 12, 1, 64.1 );
setRotateKey( spep_7-3 + 14, 1, 65.6 );
setRotateKey( spep_7-3 + 16, 1, 67.1 );
setRotateKey( spep_7-3 + 18, 1, 68.6 );
setRotateKey( spep_7-3 + 20, 1, 70.2 );
setRotateKey( spep_7-3 + 22, 1, 71.7 );
setRotateKey( spep_7-3 + 24, 1, 73.2 );
setRotateKey( spep_7-1 + 26, 1, 74.7 );

--SE
--地面落ちる
SE040 = playSeVer2( spep_7 + 22, 1014, "", 0, 0, 0, -1);

--手を払う
SE041 = playSeVer2( spep_7 + 26, 1111, "",spep_7 + 40, 0, 4, -1);
setPitch( spep_7 + 26, SE041, 400 );
setTimeStretch( SE041, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 26, SE041, 820, 24000 );
SE042 = playSeVer2( spep_7 + 28, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 28, SE042, 126 );
setPitch( spep_7 + 28, SE042, 200 );
setTimeStretch( SE042, 1.13, 30, 4 );
SE043 = playSeVer2( spep_7 + 44, 1111, "",spep_7 + 58, 0, 4, -1);
setPitch( spep_7 + 44, SE043, 400 );
setTimeStretch( SE043, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 44, SE043, 820, 24000 );
SE044 = playSeVer2( spep_7 + 46, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 46, SE044, 126 );
setPitch( spep_7 + 46, SE044, 200 );
setTimeStretch( SE044, 1.13, 30, 4 );
SE045 = playSeVer2( spep_7 + 72, 1111, "",spep_7 + 86, 0, 2, -1);
setPitch( spep_7 + 72, SE045, 400 );
setTimeStretch( SE045, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 72, SE045, 820, 24000 );
SE046 = playSeVer2( spep_7 + 74, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 74, SE046, 126 );
setPitch( spep_7 + 74, SE046, 200 );
setTimeStretch( SE046, 1.13, 30, 4 );
SE047 = playSeVer2( spep_7 + 92, 1111, "",spep_7 + 106, 0, 4, -1);
setPitch( spep_7 + 92, SE047, 400 );
setTimeStretch( SE047, 1.27, 30, 4 );
setBandpassFilter( spep_7 + 92, SE047, 820, 24000 );
SE048 = playSeVer2( spep_7 + 94, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 94, SE048, 126 );
setPitch( spep_7 + 94, SE048, 200 );
setTimeStretch( SE048, 1.13, 30, 4 );


-- 終わり
dealDamage(spep_7+28);
endPhase( spep_7 + 150 );
end