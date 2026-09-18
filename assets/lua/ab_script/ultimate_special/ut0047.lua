--1025870:超サイヤ人孫悟空_フルパワー一斉攻撃
--sp_effect_a1_00387

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
SP_01 = 161119;  --気弾をためる悟空  ef_001
SP_02 = 161120;  --気弾を放つ悟空 ef_002
SP_03 = 161121;  --気弾を放つベジータ ef_003
SP_04 = 161122;  --気弾を放つトランクス  ef_004
SP_05 = 161123;  --気弾を放つピッコロ ef_005
SP_06 = 161124;  --気弾を放つ悟飯 ef_006
SP_07 = 161125;  --気弾が重なって一つになる  ef_007
SP_08 = 161126;  --気弾が重なって一つになる  ef_008
SP_09 = 161127;  --敵に向かって気弾伸びていく ef_009
SP_10 = 161128;  --敵に向かって気弾伸びていく ef_010
SP_11 = 161129;  --奥に消えていく敵  ef_011
SP_12 = 161130;  --奥に消えていく敵  ef_012

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
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 184;
		    spep_2 = spep_1 + 132;
		    spep_3 = spep_2 + 94;
		    spep_4 = spep_3 + 98;
		    spep_5 = spep_4 + 80;
		    spep_6 = spep_5 + 80;
		    spep_7 = spep_6 + 182;
		    spep_8 = spep_7 + 58;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_6 + 170 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_8 + 0);      -- スキップ先フレーム指定

          --SE
          --気弾ヒット
          SE041 = playSeVer2( spep_8 + 0, 1258, "", 0, 0, 0, -1);
          setSeVolumeByWorkId( spep_8 + 0, SE041, 62 );
          SE042 = playSeVer2( spep_8 + 2, 1159, "", 0, 0, 0, -1);
          setSeVolumeByWorkId( spep_8 + 2, SE042, 68 );
          SE043 = playSeVer2( spep_8 + 2, 1161, "", 0, 0, 0, -1);
          setSeVolumeByWorkId( spep_8 + 2, SE043, 75 );
          SE044 = playSeVer2( spep_8 + 2, 1211, "", 0, 0, 0, -1);
          setSeVolumeByWorkId( spep_8 + 2, SE044, 174 );
          SE045 = playSeVer2( spep_8 + 2, 1284, "", 0, 0, 0, -1);
          setSeVolumeByWorkId( spep_8 + 2, SE045, 74 );


       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--気弾をためる悟空
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --気弾をためる悟空  ef_001
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 184, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 184, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 184, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 184, first, 255 );

--SE
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 40 );
SE008 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE008, 40 );
SE009 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE009, 40 );
SE010 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE010, 40 );
SE011 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE011, 40 );
SE012 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE012, 40 );
SE013 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE013, 40 );

--構える
SE002 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 69 );

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 24, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 68 );
SE005 = playSeVer2( spep_0 + 24, 1210, "",spep_0 + 270, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 60 );
SE006 = playSeVer2( spep_0 + 24, 1325, "",spep_0 + 270, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 58 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 63 );

--ボイス
--「今だあー！！」
playVoice( spep_0 + 42, 532 );
setVoiceVolume( spep_0 + 42, 532, 112 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184 + 2, 0, 0, 0, 0, 255);  --黒　背景


--次の準備
spep_1 = spep_0 + 184;


------------------------------------------------------
--気弾を放つ悟空
------------------------------------------------------
--spep_1=0;
-- ** エフェクト等 ** --
gshot = entryEffectLife( spep_1 + 0, SP_02, 132, 0x100, -1, 0, 0, 0 );  --気弾を放つ悟空 ef_002
setEffMoveKey( spep_1 + 0, gshot, 0, 0 , 0 );
setEffMoveKey( spep_1 + 132, gshot, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, gshot, 1.0, 1.0 );
setEffScaleKey( spep_1 + 132, gshot, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, gshot, 0 );
setEffRotateKey( spep_1 + 132, gshot, 0 );
setEffAlphaKey( spep_1 + 0, gshot, 255 );
setEffAlphaKey( spep_1 + 132 -2, gshot, 255 );
setEffAlphaKey( spep_1 + 132 -1, gshot, 255 );
setEffAlphaKey( spep_1 + 132, gshot, 0 );

--SE
--オーラ
SE014 = playSeVer2( spep_1 + 4, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE014, 40 );
SE015 = playSeVer2( spep_1 + 28, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 28, SE015, 40 );

--悟空気弾撃つ
SE016 = playSeVer2( spep_1 + 62, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 62, SE016, 73 );
SE017 = playSeVer2( spep_1 + 62, 1213, "",spep_1 + 188, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 62, SE017, 47 );
SE018 = playSeVer2( spep_1 + 62, 1284, "",spep_1 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 62, SE018, 82 );

--ボイス
--「はーー！！」(悟空)
playVoice( spep_1 + 10, 533 );
setVoiceVolume( spep_1 + 10, 533, 119 );

--「はあー！！」(ベジータ)
playVoice( spep_1 + 126, 534 );
setVoiceVolume( spep_1 + 126, 534, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);  --黒　背景


--次の準備
spep_2 = spep_1 + 132;


------------------------------------------------------
--気弾を放つベジータ
------------------------------------------------------
--spep_2=0;
-- ** エフェクト等 ** --
bshot = entryEffectLife( spep_2 + 0, SP_03, 94, 0x100, -1, 0, 0, 0 );  --気弾を放つベジータ ef_003
setEffMoveKey( spep_2 + 0, bshot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 94, bshot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bshot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 94, bshot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bshot, 0 );
setEffRotateKey( spep_2 + 94, bshot, 0 );
setEffAlphaKey( spep_2 + 0, bshot, 255 );
setEffAlphaKey( spep_2 + 94 -2, bshot, 255 );
setEffAlphaKey( spep_2 + 94 -1, bshot, 255 );
setEffAlphaKey( spep_2 + 94, bshot, 0 );

--SE
--ベジータ気弾撃つ
SE019 = playSeVer2( spep_2 + 36, 1213, "",spep_2 + 152, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 36, SE019, 56 );
SE020 = playSeVer2( spep_2 + 36, 1284, "",spep_2 + 152, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 36, SE020, 61 );
SE021 = playSeVer2( spep_2 + 36, 1133, "",spep_2 + 152, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 36, SE021, 68 );
setPitch( spep_2 + 36, SE021, -100 );
setTimeStretch( SE021, 0.93, 30, 4 );

--ボイス
--「くああっ！！」(トランクス)
playVoice( spep_2 + 64, 535 );
setVoiceVolume( spep_2 + 64, 535, 119 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);  --黒　背景


--次の準備
spep_3 = spep_2 + 94;


------------------------------------------------------
--気弾を放つトランクス
------------------------------------------------------
--spep_3=0;
-- ** エフェクト等 ** --
tshot = entryEffectLife( spep_3 + 0, SP_04, 98, 0x100, -1, 0, 0, 0 );  --気弾を放つトランクス  ef_004
setEffMoveKey( spep_3 + 0, tshot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, tshot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tshot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tshot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tshot, 0 );
setEffRotateKey( spep_3 + 98, tshot, 0 );
setEffAlphaKey( spep_3 + 0, tshot, 255 );
setEffAlphaKey( spep_3 + 98 -2, tshot, 255 );
setEffAlphaKey( spep_3 + 98 -1, tshot, 255 );
setEffAlphaKey( spep_3 + 98, tshot, 0 );

--SE
--トランクス気弾撃つ
SE022 = playSeVer2( spep_3 + 40, 1145, "",spep_3 + 160, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 40, SE022, 68 );
SE023 = playSeVer2( spep_3 + 40, 1284, "",spep_3 + 160, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 40, SE023, 66 );
SE024 = playSeVer2( spep_3 + 40, 1133, "",spep_3 + 160, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 40, SE024, 65 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);  --黒　背景


--次の準備
spep_4 = spep_3 + 98;


------------------------------------------------------
--気弾を放つピッコロ
------------------------------------------------------
--spep_4=0;
-- ** エフェクト等 ** --
pshot = entryEffectLife( spep_4 + 0, SP_05, 80, 0x100, -1, 0, 0, 0 );  --気弾を放つピッコロ ef_005
setEffMoveKey( spep_4 + 0, pshot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, pshot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, pshot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, pshot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pshot, 0 );
setEffRotateKey( spep_4 + 80, pshot, 0 );
setEffAlphaKey( spep_4 + 0, pshot, 255 );
setEffAlphaKey( spep_4 + 80 -2, pshot, 255 );
setEffAlphaKey( spep_4 + 80 -1, pshot, 255 );
setEffAlphaKey( spep_4 + 80, pshot, 0 );

--SE
--ピッコロ気弾撃つ
SE025 = playSeVer2( spep_4 + 44, 1213, "",spep_4 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 44, SE025, 54 );
SE026 = playSeVer2( spep_4 + 44, 1284, "",spep_4 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 44, SE026, 56 );
SE027 = playSeVer2( spep_4 + 44, 1177, "",spep_4 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 44, SE027, 65 );
SE028 = playSeVer2( spep_4 + 44, 1249, "",spep_4 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 44, SE028, 64 );

--ボイス
--「ずああっ！」(ピッコロ)
playVoice( spep_4 + 13, 536 );
setVoiceVolume( spep_4 + 13, 536, 119 );

--「はああっ！」(悟飯)
playVoice( spep_4 + 76, 537 );
setVoiceVolume( spep_4 + 76, 537, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);  --黒　背景


--次の準備
spep_5 = spep_4 + 80;


------------------------------------------------------
--気弾を放つ悟飯
------------------------------------------------------
--spep_5=0;
-- ** エフェクト等 ** --
ghshot = entryEffectLife( spep_5 + 0, SP_06, 80, 0x100, -1, 0, 0, 0 );  --気弾を放つ悟飯 ef_006
setEffMoveKey( spep_5 + 0, ghshot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 80, ghshot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ghshot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, ghshot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ghshot, 0 );
setEffRotateKey( spep_5 + 80, ghshot, 0 );
setEffAlphaKey( spep_5 + 0, ghshot, 255 );
setEffAlphaKey( spep_5 + 80 -2, ghshot, 255 );
setEffAlphaKey( spep_5 + 80 -1, ghshot, 255 );
setEffAlphaKey( spep_5 + 80, ghshot, 0 );

--SE
--悟飯気弾撃つ
SE029 = playSeVer2( spep_5 + 42, 1223, "",spep_5 + 262, 0, 60, -1);
setSeVolumeByWorkId( spep_5 + 42, SE029, 77 );
SE030 = playSeVer2( spep_5 + 42, 1213, "",spep_5 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 42, SE030, 55 );
SE031 = playSeVer2( spep_5 + 42, 1284, "",spep_5 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 42, SE031, 72 );

--ボイス
--「はああー！！」(全員)
playVoice( spep_5 + 70, 538 );
setVoiceVolume( spep_5 + 70, 538, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);  --黒　背景


--次の準備
spep_6 = spep_5 + 80;


------------------------------------------------------
--気弾が重なって一つになる
------------------------------------------------------
--spep_6=0;
-- ** エフェクト等 ** --
gattai_f = entryEffectLife( spep_6 + 0, SP_07, 182, 0x100, -1, 0, 0, 0 );  --気弾が重なって一つになる  ef_007
setEffMoveKey( spep_6 + 0, gattai_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 182, gattai_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gattai_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 182, gattai_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gattai_f, 0 );
setEffRotateKey( spep_6 + 182, gattai_f, 0 );
setEffAlphaKey( spep_6 + 0, gattai_f, 255 );
setEffAlphaKey( spep_6 + 182 -2, gattai_f, 255 );
setEffAlphaKey( spep_6 + 182 -1, gattai_f, 255 );
setEffAlphaKey( spep_6 + 182, gattai_f, 0 );

gattai_b = entryEffectLife( spep_6 + 0, SP_08, 182, 0x80, -1, 0, 0, 0 );  --気弾が重なって一つになる  ef_008
setEffMoveKey( spep_6 + 0, gattai_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 182, gattai_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gattai_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 182, gattai_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gattai_b, 0 );
setEffRotateKey( spep_6 + 182, gattai_b, 0 );
setEffAlphaKey( spep_6 + 0, gattai_b, 255 );
setEffAlphaKey( spep_6 + 182 -2, gattai_b, 255 );
setEffAlphaKey( spep_6 + 182 -1, gattai_b, 255 );
setEffAlphaKey( spep_6 + 182, gattai_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 138, 1, 1 );
changeAnime( spep_6 -3 + 138, 1, 100 );

setMoveKey( spep_6 -3 + 138, 1, 0, 343.9 , 0 );
setMoveKey( spep_6 -3 + 140, 1, 0, 343.2 , 0 );
setMoveKey( spep_6 -3 + 142, 1, 0, 342.3 , 0 );
setMoveKey( spep_6 -3 + 144, 1, 0, 341.4 , 0 );
setMoveKey( spep_6 -3 + 146, 1, 0, 340.4 , 0 );
setMoveKey( spep_6 -3 + 148, 1, 0, 339.2 , 0 );
setMoveKey( spep_6 -3 + 150, 1, 0, 338 , 0 );
setMoveKey( spep_6 -3 + 152, 1, 0, 336.6 , 0 );
setMoveKey( spep_6 -3 + 154, 1, 0, 335.1 , 0 );
setMoveKey( spep_6 -3 + 156, 1, 0, 333.5 , 0 );
setMoveKey( spep_6 -3 + 158, 1, 0, 331.7 , 0 );
setMoveKey( spep_6 -3 + 160, 1, 0, 329.7 , 0 );
setMoveKey( spep_6 -3 + 162, 1, 0, 327.5 , 0 );
setMoveKey( spep_6 -3 + 164, 1, 0, 325.1 , 0 );
setMoveKey( spep_6 -3 + 166, 1, 0, 322.5 , 0 );
setMoveKey( spep_6 -3 + 168, 1, 0, 319.5 , 0 );
setMoveKey( spep_6 -3 + 170, 1, 0, 316.2 , 0 );
setMoveKey( spep_6 -3 + 172, 1, 0, 312.5 , 0 );

setScaleKey( spep_6 -3 + 138, 1, 0.05, 0.05 );
setScaleKey( spep_6 -3 + 140, 1, 0.05, 0.05 );
setScaleKey( spep_6 -3 + 142, 1, 0.06, 0.06 );
setScaleKey( spep_6 -3 + 144, 1, 0.06, 0.06 );
setScaleKey( spep_6 -3 + 146, 1, 0.07, 0.07 );
setScaleKey( spep_6 -3 + 148, 1, 0.07, 0.07 );
setScaleKey( spep_6 -3 + 150, 1, 0.08, 0.08 );
setScaleKey( spep_6 -3 + 152, 1, 0.09, 0.09 );
setScaleKey( spep_6 -3 + 154, 1, 0.1, 0.1 );
setScaleKey( spep_6 -3 + 156, 1, 0.11, 0.11 );
setScaleKey( spep_6 -3 + 158, 1, 0.12, 0.12 );
setScaleKey( spep_6 -3 + 160, 1, 0.13, 0.13 );
setScaleKey( spep_6 -3 + 162, 1, 0.14, 0.14 );
setScaleKey( spep_6 -3 + 164, 1, 0.15, 0.15 );
setScaleKey( spep_6 -3 + 166, 1, 0.16, 0.16 );
setScaleKey( spep_6 -3 + 168, 1, 0.18, 0.18 );
setScaleKey( spep_6 -3 + 170, 1, 0.2, 0.2 );
setScaleKey( spep_6 -3 + 172, 1, 0.22, 0.22 );

setRotateKey( spep_6 -3 + 138, 1, 0 );

setAlphaKey( spep_6 -3 + 138, 1, 255 );

--全員気弾撃つ
SE034 = playSeVer2( spep_6 + 44, 1213, "",spep_6 + 394, 0, 22, -1);
setSeVolumeByWorkId( spep_6 + 44, SE034, 56 );
SE035 = playSeVer2( spep_6 + 44, 1284, "",spep_6 + 394, 0, 22, -1);
setSeVolumeByWorkId( spep_6 + 44, SE035, 74 );
SE036 = playSeVer2( spep_6 + 44, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 44, SE036, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 182 + 2, 0, 0, 0, 0, 255);  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6 + 170 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE034, 0);
    stopSe( SP_dodge - 12, SE035, 0);
    stopSe( SP_dodge - 12, SE036, 0);

    setVoiceVolume( SP_dodge - 12, 538, 0 );
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0, 312.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 0, 308.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 0, 303.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 0, 297.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 0, 290.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 0, 280.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.22, 0.22 );
    setScaleKey( SP_dodge + 2, 1, 0.24, 0.24 );
    setScaleKey( SP_dodge + 4, 1, 0.27, 0.27 );
    setScaleKey( SP_dodge + 6, 1, 0.3, 0.3 );
    setScaleKey( SP_dodge + 8, 1, 0.34, 0.34 );
    setScaleKey( SP_dodge + 10, 1, 0.39, 0.39 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    setAlphaKey( SP_dodge + 0, 1, 255 );
    setAlphaKey( SP_dodge + 10, 1, 255 );
    
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

setMoveKey( spep_6 -3 + 174, 1, 0, 308.3 , 0 );
setMoveKey( spep_6 -3 + 176, 1, 0, 303.4 , 0 );
setMoveKey( spep_6 -3 + 178, 1, 0, 297.6 , 0 );
setMoveKey( spep_6 -3 + 180, 1, 0, 290.2 , 0 );
setMoveKey( spep_6 -3 + 182, 1, 0, 280.2 , 0 );
setMoveKey( spep_6 -3 + 184, 1, 0, 260 , 0 );
--setMoveKey( spep_6 -3 + 185, 1, 0, 260 , 0 );

setScaleKey( spep_6 -3 + 174, 1, 0.24, 0.24 );
setScaleKey( spep_6 -3 + 176, 1, 0.27, 0.27 );
setScaleKey( spep_6 -3 + 178, 1, 0.3, 0.3 );
setScaleKey( spep_6 -3 + 180, 1, 0.34, 0.34 );
setScaleKey( spep_6 -3 + 182, 1, 0.39, 0.39 );
setScaleKey( spep_6 -3 + 184, 1, 0.5, 0.5 );
--setScaleKey( spep_6 -3 + 185, 1, 0.5, 0.5 );

setRotateKey( spep_6 -3 + 184, 1, 0 );

setAlphaKey( spep_6 -3 + 184, 1, 255 );

--SE
--気弾飛んでいく
SE032 = playSeVer2( spep_6 + 76, 1193, "",spep_6 + 182 + 54 +12, 24, 22, -1);
setSeVolumeByWorkId( spep_6 + 76, SE032, 76 );
setStartTimeMs( SE032,  867 );
SE033 = playSeVer2( spep_6 + 76, 1212, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_6 + 76, SE033, 73 );
setStartTimeMs( SE033,  317 );

--次の準備
spep_7 = spep_6 + 182;


------------------------------------------------------
--敵に向かって気弾伸びていく
------------------------------------------------------
--spep_7=0;
-- ** エフェクト等 ** --
grow_f = entryEffectLife( spep_7 + 0, SP_09, 58, 0x100, -1, 0, 0, 0 );  --敵に向かって気弾伸びていく ef_009
setEffMoveKey( spep_7 + 0, grow_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 58, grow_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, grow_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 58, grow_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, grow_f, 0 );
setEffRotateKey( spep_7 + 58, grow_f, 0 );
setEffAlphaKey( spep_7 + 0, grow_f, 255 );
setEffAlphaKey( spep_7 + 58 -2, grow_f, 255 );
setEffAlphaKey( spep_7 + 58 -1, grow_f, 255 );
setEffAlphaKey( spep_7 + 58, grow_f, 0 );

grow_b = entryEffectLife( spep_7 + 0, SP_10, 58, 0x80, -1, 0, 0, 0 );  --敵に向かって気弾伸びていく  ef_010
setEffMoveKey( spep_7 + 0, grow_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 58, grow_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, grow_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 58, grow_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, grow_b, 0 );
setEffRotateKey( spep_7 + 58, grow_b, 0 );
setEffAlphaKey( spep_7 + 0, grow_b, 255 );
setEffAlphaKey( spep_7 + 58 -2, grow_b, 255 );
setEffAlphaKey( spep_7 + 58 -1, grow_b, 255 );
setEffAlphaKey( spep_7 + 58, grow_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_7 + 0, 1, 1 );--
setDisp( spep_7 + 58, 1, 0 );
changeAnime( spep_7 + 0, 1, 104 );

setMoveKey( spep_7 + 0, 1, 59.8, 45.7 , 0 );
setMoveKey( spep_7 + 58, 1, 59.8, 45.7 , 0 );

s7 = 0.04;
setScaleKey( spep_7 + 0, 1, 0.18 -s7, 0.18 -s7 );
setScaleKey( spep_7 + 58, 1, 0.18 -s7, 0.18 -s7 );

setRotateKey( spep_7 + 0, 1, -20 );
setRotateKey( spep_7 + 58, 1, -20 );

setAlphaKey( spep_7 + 0, 1, 255 );--
setAlphaKey( spep_7 + 58, 1, 255 );

--SE
--気弾まとまって飛んでいく
SE037 = playSeVer2( spep_7 + 0 -6, 1177, "",spep_7 + 110, 0, 20, -1);
setSeVolumeByWorkId( spep_7 + 0 -6, SE037, 67 );
SE038 = playSeVer2( spep_7 + 0 -6, 1306, "",spep_7 + 92, 0, 16, -1);
setSeVolumeByWorkId( spep_7 + 0 -6, SE038, 55 );
SE039 = playSeVer2( spep_7 + 6 -6, 1021, "", 0, 0, 0, -1);

--気弾ヒット
SE040 = playSeVer2( spep_7 + 46, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 58 + 2, 0, 0, 0, 0, 255);  --黒　背景


--次の準備
spep_8 = spep_7 + 58;


------------------------------------------------------
--奥に消えていく敵
------------------------------------------------------
--spep_8=0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --奥に消えていく敵  ef_011
setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 240, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 240, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 240, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 240, finish_f, 255 );

finish_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 );  --奥に消えていく敵  ef_012
setEffMoveKey( spep_8 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 240, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 240, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 240, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 240, finish_b, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_8 -3 + 8, 1, 1 );
setDisp( spep_8 -3 + 118, 1, 0 );
changeAnime( spep_8 -3 + 8, 1, 105 );

setBlendColor( spep_8 -3 + 14, 1, 3, 0.26, 0.26, 0.26, 0.1 );
setBlendColor( spep_8 -3 + 16, 1, 3, 0.26, 0.26, 0.26, 0.3 );
setBlendColor( spep_8 -3 + 18, 1, 3, 0.26, 0.26, 0.26, 0.4 );
setBlendColor( spep_8 -3 + 20, 1, 3, 0.26, 0.26, 0.26, 0.6 );
setBlendColor( spep_8 -3 + 22, 1, 3, 0.26, 0.26, 0.26, 0.8 );
setBlendColor( spep_8 -3 + 23, 1, 3, 0.26, 0.26, 0.26, 0.8 );
setBlendColor( spep_8 -3 + 24, 1, 3, 0.26, 0.26, 0.26, 0.9 );--
setBlendColor( spep_8 -3 + 39, 1, 3, 0.26, 0.26, 0.26, 0.9 );--
setBlendColor( spep_8 -3 + 40, 1, 3, 0.09, 0.09, 0.09, 0.9 );
setBlendColor( spep_8 -3 + 42, 1, 3, 0.09, 0.09, 0.09, 0.95 );
setBlendColor( spep_8 -3 + 44, 1, 3, 0.0, 0.0, 0.0, 1 );
setBlendColor( spep_8 -3 + 91, 1, 3, 0.0, 0.0, 0.0, 1 );--
setBlendColor( spep_8 -3 + 92, 1, 3, 0.0, 0.0, 0.0, 0 );

setBlendColor( spep_8 -3 + 93, 1, 3, 0.0, 0.0, 0.0, 0 );--
setBlendColor( spep_8 -3 + 94, 1, 3, 1, 1, 1, 0.06 );
setBlendColor( spep_8 -3 + 96, 1, 3, 1, 1, 1, 0.08 );
setBlendColor( spep_8 -3 + 98, 1, 3, 1, 1, 1, 0.1 );
setBlendColor( spep_8 -3 + 100, 1, 3, 1, 1, 1, 0.12 );
setBlendColor( spep_8 -3 + 117, 1, 3, 1, 1, 1, 0.12 );
setBlendColor( spep_8 -3 + 118, 1, 3, 1, 1, 1, 0 );

setMoveKey( spep_8 -3 + 8, 1, -20, -160.8 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 1.7, -154.8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -3.5, -144.1 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -7.8, -133.2 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -32.7, -113.3 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -12.3, -114.3 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -16.1, -104.1 , 0 );
setMoveKey( spep_8 -3 + 22, 1, -6.3, -103 , 0 );
setMoveKey( spep_8 -3 + 24, 1, -19.7, -90.7 , 0 );
setMoveKey( spep_8 -3 + 26, 1, -9.6, -90.5 , 0 );
setMoveKey( spep_8 -3 + 28, 1, -21.1, -80.7 , 0 );
setMoveKey( spep_8 -3 + 30, 1, -9.2, -82.9 , 0 );
setMoveKey( spep_8 -3 + 32, 1, -20.6, -73.5 , 0 );
setMoveKey( spep_8 -3 + 34, 1, -8.7, -76 , 0 );
setMoveKey( spep_8 -3 + 36, 1, -20.3, -67 , 0 );
setMoveKey( spep_8 -3 + 38, 1, -8.4, -69.8 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -19.9, -61 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -8, -64.1 , 0 );
setMoveKey( spep_8 -3 + 44, 1, -19.6, -55.5 , 0 );
setMoveKey( spep_8 -3 + 46, 1, -7.7, -58.8 , 0 );
setMoveKey( spep_8 -3 + 48, 1, -19.3, -50.4 , 0 );
setMoveKey( spep_8 -3 + 50, 1, -7.4, -53.8 , 0 );
setMoveKey( spep_8 -3 + 52, 1, -19, -45.6 , 0 );
setMoveKey( spep_8 -3 + 54, 1, -7.2, -49.2 , 0 );
setMoveKey( spep_8 -3 + 56, 1, -18.7, -41.1 , 0 );
setMoveKey( spep_8 -3 + 58, 1, -6.9, -44.8 , 0 );
setMoveKey( spep_8 -3 + 60, 1, -18.5, -36.9 , 0 );
setMoveKey( spep_8 -3 + 62, 1, -6.7, -40.7 , 0 );
setMoveKey( spep_8 -3 + 64, 1, -18.3, -32.9 , 0 );
setMoveKey( spep_8 -3 + 66, 1, -6.4, -36.9 , 0 );
setMoveKey( spep_8 -3 + 68, 1, -18, -29.2 , 0 );
setMoveKey( spep_8 -3 + 70, 1, -6.2, -33.2 , 0 );
setMoveKey( spep_8 -3 + 72, 1, -17.8, -25.7 , 0 );
setMoveKey( spep_8 -3 + 74, 1, -17.7, -24 , 0 );
setMoveKey( spep_8 -3 + 76, 1, -17.6, -22.3 , 0 );
setMoveKey( spep_8 -3 + 78, 1, -17.5, -20.7 , 0 );
setMoveKey( spep_8 -3 + 80, 1, -17.4, -19.2 , 0 );
setMoveKey( spep_8 -3 + 82, 1, -17.4, -17.7 , 0 );
setMoveKey( spep_8 -3 + 84, 1, -17.3, -16.2 , 0 );
setMoveKey( spep_8 -3 + 86, 1, -17.2, -14.8 , 0 );
setMoveKey( spep_8 -3 + 88, 1, -17.1, -13.5 , 0 );
setMoveKey( spep_8 -3 + 90, 1, -17, -12.1 , 0 );
setMoveKey( spep_8 -3 + 92, 1, -16.9, -10.9 , 0 );
setMoveKey( spep_8 -3 + 94, 1, -16.8, -10.3 , 0 );
setMoveKey( spep_8 -3 + 96, 1, -16.8, -9.7 , 0 );
setMoveKey( spep_8 -3 + 98, 1, -16.7, -9.1 , 0 );
setMoveKey( spep_8 -3 + 100, 1, -16.7, -8.6 , 0 );
setMoveKey( spep_8 -3 + 102, 1, -16.6, -8 , 0 );
setMoveKey( spep_8 -3 + 104, 1, -16.6, -7.5 , 0 );
setMoveKey( spep_8 -3 + 106, 1, -16.5, -7 , 0 );
setMoveKey( spep_8 -3 + 108, 1, -16.5, -6.5 , 0 );
setMoveKey( spep_8 -3 + 110, 1, -16.4, -6.1 , 0 );
setMoveKey( spep_8 -3 + 112, 1, -16.4, -5.6 , 0 );
setMoveKey( spep_8 -3 + 114, 1, -16.3, -5.2 , 0 );
setMoveKey( spep_8 -3 + 116, 1, -16.3, -4.8 , 0 );
setMoveKey( spep_8 -3 + 118, 1, -16.2, -4.3 , 0 );

setScaleKey( spep_8 -3 + 8, 1, 6, 6 );
setScaleKey( spep_8 -3 + 10, 1, 5.13, 5.13 );
setScaleKey( spep_8 -3 + 12, 1, 4.78, 4.78 );
setScaleKey( spep_8 -3 + 14, 1, 4.51, 4.51 );
setScaleKey( spep_8 -3 + 16, 1, 4.28, 4.28 );
setScaleKey( spep_8 -3 + 18, 1, 4.08, 4.08 );
setScaleKey( spep_8 -3 + 20, 1, 3.91, 3.91 );
setScaleKey( spep_8 -3 + 22, 1, 3.75, 3.75 );
setScaleKey( spep_8 -3 + 24, 1, 3.6, 3.6 );
setScaleKey( spep_8 -3 + 26, 1, 3.46, 3.46 );
setScaleKey( spep_8 -3 + 28, 1, 3.33, 3.33 );
setScaleKey( spep_8 -3 + 30, 1, 3.21, 3.21 );
setScaleKey( spep_8 -3 + 32, 1, 3.09, 3.09 );
setScaleKey( spep_8 -3 + 34, 1, 2.98, 2.98 );
setScaleKey( spep_8 -3 + 36, 1, 2.87, 2.87 );
setScaleKey( spep_8 -3 + 38, 1, 2.77, 2.77 );
setScaleKey( spep_8 -3 + 40, 1, 2.67, 2.67 );
setScaleKey( spep_8 -3 + 42, 1, 2.58, 2.58 );
setScaleKey( spep_8 -3 + 44, 1, 2.49, 2.49 );
setScaleKey( spep_8 -3 + 46, 1, 2.4, 2.4 );
setScaleKey( spep_8 -3 + 48, 1, 2.32, 2.32 );
setScaleKey( spep_8 -3 + 50, 1, 2.24, 2.24 );
setScaleKey( spep_8 -3 + 52, 1, 2.16, 2.16 );
setScaleKey( spep_8 -3 + 54, 1, 2.08, 2.08 );
setScaleKey( spep_8 -3 + 56, 1, 2.01, 2.01 );
setScaleKey( spep_8 -3 + 58, 1, 1.94, 1.94 );
setScaleKey( spep_8 -3 + 60, 1, 1.87, 1.87 );
setScaleKey( spep_8 -3 + 62, 1, 1.8, 1.8 );
setScaleKey( spep_8 -3 + 64, 1, 1.74, 1.74 );
setScaleKey( spep_8 -3 + 66, 1, 1.67, 1.67 );
setScaleKey( spep_8 -3 + 68, 1, 1.61, 1.61 );
setScaleKey( spep_8 -3 + 70, 1, 1.55, 1.55 );
setScaleKey( spep_8 -3 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_8 -3 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_8 -3 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_8 -3 + 78, 1, 1.33, 1.33 );
setScaleKey( spep_8 -3 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_8 -3 + 82, 1, 1.23, 1.23 );
setScaleKey( spep_8 -3 + 84, 1, 1.18, 1.18 );
setScaleKey( spep_8 -3 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_8 -3 + 88, 1, 1.09, 1.09 );
setScaleKey( spep_8 -3 + 90, 1, 1.04, 1.04 );
setScaleKey( spep_8 -3 + 92, 1, 1, 1 );
setScaleKey( spep_8 -3 + 94, 1, 0.96, 0.96 );
setScaleKey( spep_8 -3 + 96, 1, 0.93, 0.93 );
setScaleKey( spep_8 -3 + 98, 1, 0.89, 0.89 );
setScaleKey( spep_8 -3 + 100, 1, 0.86, 0.86 );
setScaleKey( spep_8 -3 + 102, 1, 0.83, 0.83 );
setScaleKey( spep_8 -3 + 104, 1, 0.79, 0.79 );
setScaleKey( spep_8 -3 + 106, 1, 0.76, 0.76 );
setScaleKey( spep_8 -3 + 108, 1, 0.73, 0.73 );
setScaleKey( spep_8 -3 + 110, 1, 0.7, 0.7 );
setScaleKey( spep_8 -3 + 112, 1, 0.68, 0.68 );
setScaleKey( spep_8 -3 + 114, 1, 0.65, 0.65 );
setScaleKey( spep_8 -3 + 116, 1, 0.62, 0.62 );
setScaleKey( spep_8 -3 + 118, 1, 0.6, 0.6 );

setRotateKey( spep_8 -3 + 8, 1, 0 );
setRotateKey( spep_8 -3 + 118, 1, 0 );

setAlphaKey( spep_8 -3 + 8, 1, 255 );
setAlphaKey( spep_8 -3 + 101, 1, 255 );
setAlphaKey( spep_8 -3 + 102, 1, 245 );
setAlphaKey( spep_8 -3 + 104, 1, 204 );
setAlphaKey( spep_8 -3 + 106, 1, 153 );
setAlphaKey( spep_8 -3 + 108, 1, 102 );
setAlphaKey( spep_8 -3 + 110, 1, 51 );
setAlphaKey( spep_8 -3 + 112, 1, 0 );
setAlphaKey( spep_8 -3 + 118, 1, 0 );

--SE
--気弾ヒット
SE041 = playSeVer2( spep_8 + 0 -4, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0 -4, SE041, 62 );
SE042 = playSeVer2( spep_8 + 6 -4, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 6 -4, SE042, 68 );
SE043 = playSeVer2( spep_8 + 6 -4, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 6 -4, SE043, 75 );
SE044 = playSeVer2( spep_8 + 6 -4, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 6 -4, SE044, 174 );
SE045 = playSeVer2( spep_8 + 6 -4, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 6 -4, SE045, 74 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 240 + 2, 0, 0, 0, 0, 255);  --黒　背景


--終わり
dealDamage( spep_8 + 130 );
endPhase( spep_8 + 230 );
end