--1022220:孫悟飯(幼年期)_フルパワー魔閃光(ユニット必殺技)
--sp_effect_a1_00296
--sp2208

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
SP_01 =	157373; --3人構え〜悟飯気の解放
SP_02 =	157374; --3人構え〜悟飯気の解放
SP_03 =	157375; --魔閃光発射〜フィニッシュ
SP_04 =	157376; --魔閃光発射〜フィニッシュ

--エフェクト(敵)
SP_01x = 157377; --3人構え〜悟飯気の解放
SP_02x = 157378; --3人構え〜悟飯気の解放
SP_03x = 157379; --魔閃光発射〜フィニッシュ
SP_04x = 157380; --魔閃光発射〜フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.8);


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
-- 3人構え〜悟飯気の解放
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 736, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.01, 1.01 );
setEffScaleKey( spep_0 + 736, tame_f, 1.01, 1.01 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 736, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 734, tame_f, 255 );
setEffAlphaKey( spep_0 + 735, tame_f, 255 );
setEffAlphaKey( spep_0 + 736, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 736, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 736, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 736, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 734, tame_b, 255 );
setEffAlphaKey( spep_0 + 735, tame_b, 255 );
setEffAlphaKey( spep_0 + 736, tame_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--構える
SE002 = playSe( spep_0 + 18, 1233 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 81 );
SE003 = playSe( spep_0 + 28, 1006 );
setSeVolumeByWorkId( spep_0 + 28, SE003, 93 );

--画面遷移
SE004 = playSe( spep_0 + 80, 1072 );
setSeVolumeByWorkId( spep_0 + 80, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 81, SE004, 7.8 );
setSeVolumeByWorkId( spep_0 + 82, SE004, 15.6 );
setSeVolumeByWorkId( spep_0 + 83, SE004, 23.4 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 31.2 );
setSeVolumeByWorkId( spep_0 + 85, SE004, 39 );
setSeVolumeByWorkId( spep_0 + 86, SE004, 46.8 );
setSeVolumeByWorkId( spep_0 + 87, SE004, 54.6 );
setSeVolumeByWorkId( spep_0 + 88, SE004, 62.4 );
setSeVolumeByWorkId( spep_0 + 89, SE004, 70.2 );
setSeVolumeByWorkId( spep_0 + 90, SE004, 78 );
setStartTimeMs( SE004,  367 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 740, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

    endPhase( SP_dodge + 10 );

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--文字エントリー
ctga = entryEffectLife( spep_0-3 + 224,  10005, 26, 0x100, -1, 0, -98, 198 );--ガッ
setEffShake(spep_0-3 + 224, ctga, 26, 10 );
setEffMoveKey( spep_0-3 + 224, ctga, -98, 198 , 0 );
setEffMoveKey( spep_0-3 + 226, ctga, -0.2, 299.4 , 0 );
setEffMoveKey( spep_0-3 + 228, ctga, 8.4, 309.2 , 0 );
setEffMoveKey( spep_0-3 + 230, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 232, ctga, -23.6, 289.8 , 0 );
setEffMoveKey( spep_0-3 + 234, ctga, -35.1, 274.9 , 0 );
setEffMoveKey( spep_0-3 + 236, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 238, ctga, -23.6, 289.8 , 0 );
setEffMoveKey( spep_0-3 + 240, ctga, -35.1, 274.9 , 0 );
setEffMoveKey( spep_0-3 + 242, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 244, ctga, -23.6, 289.8 , 0 );
setEffMoveKey( spep_0-3 + 246, ctga, -35.1, 274.9 , 0 );
setEffMoveKey( spep_0-3 + 248, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 250, ctga, -23.6, 289.8 , 0 );

setEffScaleKey( spep_0-3 + 224, ctga,1.8,1.8);
setEffScaleKey( spep_0-3 + 226, ctga,3.27,3.27);
setEffScaleKey( spep_0-3 + 228, ctga,3.27,3.27);
setEffScaleKey( spep_0-3 + 230, ctga,2.89,2.89);
setEffScaleKey( spep_0-3 + 250, ctga,2.89,2.89);

setEffRotateKey( spep_0-3 + 224, ctga, 10 );
setEffRotateKey( spep_0-3 + 250, ctga, 10 );

setEffAlphaKey( spep_0-3 + 224, ctga, 255 );
setEffAlphaKey( spep_0-3 + 250, ctga, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_0-3 + 448,  10012, 14, 0x100, -1, 0, -86.8, 137.1 );
setEffShake(spep_0-3 + 448, ctzuo, 14, 10 );
setEffMoveKey( spep_0-3 + 448, ctzuo, -86.8, 137.1 , 0 );
setEffMoveKey( spep_0-3 + 450, ctzuo, -56.2, 160.9 , 0 );
setEffMoveKey( spep_0-3 + 452, ctzuo, 15.5, 211.7 , 0 );
setEffMoveKey( spep_0-3 + 454, ctzuo, 13.2, 211.1 , 0 );
setEffMoveKey( spep_0-3 + 456, ctzuo, -16.9, 185.9 , 0 );
setEffMoveKey( spep_0-3 + 458, ctzuo, -23.3, 185.9 , 0 );
setEffMoveKey( spep_0-3 + 460, ctzuo, -16.9, 179.4 , 0 );
setEffMoveKey( spep_0-3 + 462, ctzuo, -23.3, 179.4 , 0 );

setEffScaleKey( spep_0-3 + 448, ctzuo, 1, 1 );
setEffScaleKey( spep_0-3 + 450, ctzuo, 1.22, 1.22 );
setEffScaleKey( spep_0-3 + 452, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0-3 + 454, ctzuo, 1.8, 1.8 );
setEffScaleKey( spep_0-3 + 456, ctzuo, 1.56, 1.56 );
setEffScaleKey( spep_0-3 + 462, ctzuo, 1.56, 1.56 );

setEffRotateKey( spep_0-3 + 448, ctzuo, -15 );
setEffRotateKey( spep_0-3 + 462, ctzuo, -15 );

setEffAlphaKey( spep_0-3 + 448, ctzuo, 125 );
setEffAlphaKey( spep_0-3 + 450, ctzuo, 157 );
setEffAlphaKey( spep_0-3 + 452, ctzuo, 255 );
setEffAlphaKey( spep_0-3 + 462, ctzuo, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_0-3 + 496,  10014, 56 +1, 0x100, -1, 0, -26.4, 221.8 );--ズドドドッ
setEffShake(spep_0-3 + 496, ctzudodo, 56, 10 );
setEffMoveKey( spep_0-3 + 496, ctzudodo, -26.4, 221.8 , 0 );
setEffMoveKey( spep_0-3 + 498, ctzudodo, -23.8, 205.5 , 0 );
setEffMoveKey( spep_0-3 + 500, ctzudodo, -23.6, 223.7 , 0 );
setEffMoveKey( spep_0-3 + 502, ctzudodo, -21.2, 207.4 , 0 );
setEffMoveKey( spep_0-3 + 504, ctzudodo, -21.1, 225.5 , 0 );
setEffMoveKey( spep_0-3 + 506, ctzudodo, -18.7, 209.1 , 0 );
setEffMoveKey( spep_0-3 + 508, ctzudodo, -18.7, 227.1 , 0 );
setEffMoveKey( spep_0-3 + 510, ctzudodo, -16.5, 210.7 , 0 );
setEffMoveKey( spep_0-3 + 512, ctzudodo, -16.6, 228.6 , 0 );
setEffMoveKey( spep_0-3 + 514, ctzudodo, -14.4, 212.1 , 0 );
setEffMoveKey( spep_0-3 + 516, ctzudodo, -14.6, 230 , 0 );
setEffMoveKey( spep_0-3 + 518, ctzudodo, -12.6, 213.4 , 0 );
setEffMoveKey( spep_0-3 + 520, ctzudodo, -12.9, 231.2 , 0 );
setEffMoveKey( spep_0-3 + 522, ctzudodo, -11, 214.5 , 0 );
setEffMoveKey( spep_0-3 + 524, ctzudodo, -11.4, 232.3 , 0 );
setEffMoveKey( spep_0-3 + 526, ctzudodo, -9.5, 215.5 , 0 );
setEffMoveKey( spep_0-3 + 528, ctzudodo, -10, 233.2 , 0 );
setEffMoveKey( spep_0-3 + 530, ctzudodo, -8.3, 216.4 , 0 );
setEffMoveKey( spep_0-3 + 532, ctzudodo, -8.9, 234 , 0 );
setEffMoveKey( spep_0-3 + 534, ctzudodo, -7.3, 217.1 , 0 );
setEffMoveKey( spep_0-3 + 536, ctzudodo, -8, 234.6 , 0 );
setEffMoveKey( spep_0-3 + 538, ctzudodo, -6.4, 217.6 , 0 );
setEffMoveKey( spep_0-3 + 540, ctzudodo, -7.3, 235.1 , 0 );
setEffMoveKey( spep_0-3 + 542, ctzudodo, -5.8, 218.1 , 0 );
setEffMoveKey( spep_0-3 + 544, ctzudodo, -6.8, 235.5 , 0 );
setEffMoveKey( spep_0-3 + 546, ctzudodo, -5.4, 218.4 , 0 );
setEffMoveKey( spep_0-3 + 548, ctzudodo, -6.5, 235.7 , 0 );
setEffMoveKey( spep_0-3 + 550, ctzudodo, -5.2, 218.5 , 0 );
setEffMoveKey( spep_0-2 + 552, ctzudodo, -6.4, 235.8 , 0 );

setEffScaleKey( spep_0-3 + 496, ctzudodo, 1.94, 1.94 );
setEffScaleKey( spep_0-2 + 552, ctzudodo, 1.94, 1.94 );

setEffRotateKey( spep_0-3 + 496, ctzudodo, 13.2 );
setEffRotateKey( spep_0-2 + 552, ctzudodo, 13.2 );

setEffAlphaKey( spep_0-3 + 496, ctzudodo, 255 );
setEffAlphaKey( spep_0-2 + 496, ctzudodo, 255 );

--敵の動き
setDisp( spep_0-3 + 214, 1, 1);
setDisp( spep_0-1 + 352, 1, 0);

setBlendColor(spep_0-1 +340,1,3,1,1,0.62,0);
setBlendColor(spep_0-1 +341,1,3,1,1,0.62,0.024);
setBlendColor(spep_0-1 +342,1,3,1,1,0.62,0.048);
setBlendColor(spep_0-1 +343,1,3,1,1,0.62,0.072);
setBlendColor(spep_0-1 +344,1,3,1,1,0.62,0.096);
setBlendColor(spep_0-1 +345,1,3,1,1,0.62,0.12);
setBlendColor(spep_0-1 +346,1,3,1,1,0.62,0.144);
setBlendColor(spep_0-1 +347,1,3,1,1,0.62,0.168);
setBlendColor(spep_0-1 +348,1,3,1,1,0.62,0.192);
setBlendColor(spep_0-1 +349,1,3,1,1,0.62,0.216);
setBlendColor(spep_0-1 +350,1,3,1,1,0.62,0.24);
setBlendColor(spep_0 +354,1,3,1,1,0.62,0);

changeAnime( spep_0-3 + 214, 1, 107);
changeAnime( spep_0-3 + 252, 1, 106);
changeAnime( spep_0-3 + 302, 1, 107);

setMoveKey( spep_0-3 + 214, 1, -210.1, -332.2 , 0 );
setMoveKey( spep_0-3 + 216, 1, -210.2, -332.2 , 0 );
setMoveKey( spep_0-3 + 218, 1, -16.2, -283.7 , 0 );
setMoveKey( spep_0-3 + 220, 1, -16.2, -283.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, -16.2, -283.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, -45.7, -298.3 , 0 );
setMoveKey( spep_0-3 + 230, 1, 74, -262.6 , 0 );
setMoveKey( spep_0-3 + 232, 1, 55.1, -268.8 , 0 );
setMoveKey( spep_0-3 + 234, 1, 74, -262.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 74, -262.5 , 0 );
setMoveKey( spep_0-3 + 238, 1, -16.4, -283.5 , 0 );
setMoveKey( spep_0-3 + 240, 1, 73.9, -262.5 , 0 );
setMoveKey( spep_0-3 + 242, 1, 55, -268.8 , 0 );
setMoveKey( spep_0-3 + 244, 1, -16.4, -283.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, -16.4, -283.4 , 0 );
setMoveKey( spep_0-3 + 248, 1, -45.8, -298.1 , 0 );
setMoveKey( spep_0-3 + 250, 1, 73.8, -262.4 , 0 );
setMoveKey( spep_0-3 + 251, 1, 73.8, -262.4 , 0 );

setMoveKey( spep_0-3 + 252, 1, 14.4, -28.6 , 0 );
setMoveKey( spep_0-3 + 254, 1, 14.1, -28.7 , 0 );
setMoveKey( spep_0-3 + 256, 1, 13.2, -29 , 0 );
setMoveKey( spep_0-3 + 258, 1, 12, -29.4 , 0 );
setMoveKey( spep_0-3 + 260, 1, 10.4, -29.9 , 0 );
setMoveKey( spep_0-3 + 262, 1, 8.6, -30.5 , 0 );
setMoveKey( spep_0-3 + 264, 1, 6.5, -31.2 , 0 );
setMoveKey( spep_0-3 + 266, 1, 4.1, -31.9 , 0 );
setMoveKey( spep_0-3 + 268, 1, 1.4, -32.7 , 0 );
setMoveKey( spep_0-3 + 270, 1, 6.6, -28 , 0 );
setMoveKey( spep_0-3 + 272, 1, 12.4, -22.8 , 0 );
setMoveKey( spep_0-3 + 274, 1, 18.9, -17 , 0 );
setMoveKey( spep_0-3 + 276, 1, 26.3, -10.4 , 0 );
setMoveKey( spep_0-3 + 278, 1, 34.8, -2.9 , 0 );
setMoveKey( spep_0-3 + 280, 1, 44.7, 5.9 , 0 );
setMoveKey( spep_0-3 + 282, 1, 56.1, 15.9 , 0 );
setMoveKey( spep_0-3 + 284, 1, 69.5, 27.6 , 0 );
setMoveKey( spep_0-3 + 286, 1, 85.1, 41.2 , 0 );
setMoveKey( spep_0-3 + 288, 1, 103.5, 57.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, 124.9, 75.4 , 0 );
setMoveKey( spep_0-3 + 292, 1, 149.6, 96.5 , 0 );
setMoveKey( spep_0-3 + 294, 1, 176.2, 119 , 0 );
setMoveKey( spep_0-3 + 296, 1, 201.2, 140 , 0 );
setMoveKey( spep_0-3 + 298, 1, 218.3, 154.4 , 0 );
setMoveKey( spep_0-3 + 300, 1, 223.8, 158.8 , 0 );
setMoveKey( spep_0-3 + 301, 1, 223.8, 158.8 , 0 );

a=100;

setMoveKey( spep_0-3 + 302, 1, 1422.8+a, -1044.5 , 0 );
setMoveKey( spep_0-3 + 304, 1, 1411+a, -1039.4 , 0 );
setMoveKey( spep_0-3 + 306, 1, 1382.8+a, -1025.7 , 0 );
setMoveKey( spep_0-3 + 308, 1, 1338+a, -1003.5 , 0 );
setMoveKey( spep_0-3 + 310, 1, 1276.5+a, -972.6 , 0 );
setMoveKey( spep_0-3 + 312, 1, 1198.7+a, -933.1 , 0 );
setMoveKey( spep_0-3 + 314, 1, 1105.4+a, -885.4 , 0 );
setMoveKey( spep_0-3 + 316, 1, 998.3+a, -829.7 , 0 );
setMoveKey( spep_0-3 + 318, 1, 879.7+a, -766.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, 752.8+a, -696.6 , 0 );
setMoveKey( spep_0-3 + 322, 1, 623.4+a, -622.6 , 0 );
setMoveKey( spep_0-3 + 324, 1, 503.9+a, -554.4 , 0 );
setMoveKey( spep_0-3 + 326, 1, 397.3+a, -494.1 , 0 );
setMoveKey( spep_0-3 + 328, 1, 304.5+a, -441.6 , 0 );
setMoveKey( spep_0-3 + 330, 1, 225.6+a, -397.2 , 0 );
setMoveKey( spep_0-3 + 332, 1, 159.9+a, -360.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, 106.4+a, -331.5 , 0 );
setMoveKey( spep_0-3 + 336, 1, 63.6+a, -309.7 , 0 );
setMoveKey( spep_0-3 + 338, 1, 30+a, -294.7 , 0 );
setMoveKey( spep_0-3 + 340, 1, 4.2+a, -286.4 , 0 );
setMoveKey( spep_0-3 + 342, 1, -16.1+a, -281.7 , 0 );
setMoveKey( spep_0-3 + 344, 1, -31.9+a, -278 , 0 );
setMoveKey( spep_0-3 + 346, 1, -43.4+a, -275.4 , 0 );
setMoveKey( spep_0-3 + 348, 1, -51.3+a, -273.6 , 0 );
setMoveKey( spep_0-1 + 352, 1, -55.5+a, -272.6 , 0 );

setScaleKey( spep_0-3 + 214, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 251, 1, 2.6, 2.6 );

setScaleKey( spep_0-3 + 252, 1,2.08,2.08);
setScaleKey( spep_0-3 + 258, 1,2.08,2.08);
setScaleKey( spep_0-3 + 260, 1,2.09,2.09);
setScaleKey( spep_0-3 + 264, 1,2.09,2.09);
setScaleKey( spep_0-3 + 266, 1,2.1,2.1);
setScaleKey( spep_0-3 + 268, 1,2.1,2.1);
setScaleKey( spep_0-3 + 270, 1,2.09,2.09);
setScaleKey( spep_0-3 + 272, 1,2.08,2.08);
setScaleKey( spep_0-3 + 274, 1,2.06,2.06);
setScaleKey( spep_0-3 + 276, 1,2.04,2.04);
setScaleKey( spep_0-3 + 278, 1,2.02,2.02);
setScaleKey( spep_0-3 + 280, 1,2,2);
setScaleKey( spep_0-3 + 282, 1,1.97,1.97);
setScaleKey( spep_0-3 + 284, 1,1.95,1.95);
setScaleKey( spep_0-3 + 286, 1,1.91,1.91);
setScaleKey( spep_0-3 + 288, 1,1.87,1.87);
setScaleKey( spep_0-3 + 290, 1,1.82,1.82);
setScaleKey( spep_0-3 + 292, 1,1.76,1.76);
setScaleKey( spep_0-3 + 294, 1,1.71,1.71);
setScaleKey( spep_0-3 + 296, 1,1.66,1.66);
setScaleKey( spep_0-3 + 298, 1,1.62,1.62);
setScaleKey( spep_0-3 + 300, 1,1.61,1.61);
setScaleKey( spep_0-3 + 301, 1,1.61,1.61);

setScaleKey( spep_0-3 + 302, 1, 6.01, 6.01 );
setScaleKey( spep_0-3 + 304, 1, 5.98, 5.98 );
setScaleKey( spep_0-3 + 306, 1, 5.9, 5.9 );
setScaleKey( spep_0-3 + 308, 1, 5.77, 5.77 );
setScaleKey( spep_0-3 + 310, 1, 5.58, 5.58 );
setScaleKey( spep_0-3 + 312, 1, 5.35, 5.35 );
setScaleKey( spep_0-3 + 314, 1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 316, 1, 4.74, 4.74 );
setScaleKey( spep_0-3 + 318, 1, 4.37, 4.37 );
setScaleKey( spep_0-3 + 320, 1, 3.97, 3.97 );
setScaleKey( spep_0-3 + 322, 1, 3.56, 3.56 );
setScaleKey( spep_0-3 + 324, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 326, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 328, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 330, 1, 2.29, 2.29 );
setScaleKey( spep_0-3 + 332, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 334, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 336, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 338, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 340, 1, 1.63, 1.63 );
setScaleKey( spep_0-3 + 342, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 344, 1, 1.55, 1.55 );
setScaleKey( spep_0-3 + 346, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 348, 1, 1.51, 1.51 );
setScaleKey( spep_0-1 + 352, 1, 1.5, 1.5 );

setRotateKey( spep_0-3 + 214, 1, -100 );
setRotateKey( spep_0-3 + 251, 1, -100 );

setRotateKey( spep_0-3 + 252, 1, -15 );
setRotateKey( spep_0-3 + 256, 1, -15 );
setRotateKey( spep_0-3 + 258, 1, -14.9 );
setRotateKey( spep_0-3 + 260, 1, -14.8 );
setRotateKey( spep_0-3 + 262, 1, -14.8 );
setRotateKey( spep_0-3 + 264, 1, -14.7 );
setRotateKey( spep_0-3 + 266, 1, -14.6 );
setRotateKey( spep_0-3 + 268, 1, -14.5 );
setRotateKey( spep_0-3 + 270, 1, -14.4 );
setRotateKey( spep_0-3 + 272, 1, -14.2 );
setRotateKey( spep_0-3 + 274, 1, -14.1 );
setRotateKey( spep_0-3 + 276, 1, -13.9 );
setRotateKey( spep_0-3 + 278, 1, -13.7 );
setRotateKey( spep_0-3 + 280, 1, -13.5 );
setRotateKey( spep_0-3 + 282, 1, -13.3 );
setRotateKey( spep_0-3 + 284, 1, -13 );
setRotateKey( spep_0-3 + 286, 1, -12.7 );
setRotateKey( spep_0-3 + 288, 1, -12.3 );
setRotateKey( spep_0-3 + 290, 1, -11.9 );
setRotateKey( spep_0-3 + 292, 1, -11.5 );
setRotateKey( spep_0-3 + 294, 1, -11 );
setRotateKey( spep_0-3 + 296, 1, -10.6 );
setRotateKey( spep_0-3 + 298, 1, -10.3 );
setRotateKey( spep_0-3 + 300, 1, -10.2 );
setRotateKey( spep_0-3 + 301, 1, -10.2 );

b=60;

setRotateKey( spep_0-3 + 302, 1, 15+b );
setRotateKey( spep_0-3 + 304, 1, 14.9+b );
setRotateKey( spep_0-3 + 306, 1, 14.8+b );
setRotateKey( spep_0-3 + 308, 1, 14.5+b );
setRotateKey( spep_0-3 + 310, 1, 14.1+b );
setRotateKey( spep_0-3 + 312, 1, 13.7+b );
setRotateKey( spep_0-3 + 314, 1, 13.1+b );
setRotateKey( spep_0-3 + 316, 1, 12.3+b );
setRotateKey( spep_0-3 + 318, 1, 11.5+b );
setRotateKey( spep_0-3 + 320, 1, 10.6+b );
setRotateKey( spep_0-3 + 322, 1, 9.5+b );
setRotateKey( spep_0-3 + 324, 1, 8.4+b );
setRotateKey( spep_0-3 + 326, 1, 7.3+b );
setRotateKey( spep_0-3 + 328, 1, 6.2+b );
setRotateKey( spep_0-3 + 330, 1, 5.1+b );
setRotateKey( spep_0-3 + 332, 1, 4.1+b );
setRotateKey( spep_0-3 + 334, 1, 3.2+b );
setRotateKey( spep_0-3 + 336, 1, 2.5+b );
setRotateKey( spep_0-3 + 338, 1, 1.8+b );
setRotateKey( spep_0-3 + 340, 1, 1.3+b );
setRotateKey( spep_0-3 + 342, 1, 0.8+b );
setRotateKey( spep_0-3 + 344, 1, 0.5+b );
setRotateKey( spep_0-3 + 346, 1, 0.3+b );
setRotateKey( spep_0-3 + 348, 1, 0.1+b );
setRotateKey( spep_0-1 + 352, 1, 0+b );

--敵の動き
setDisp( spep_0-3 + 464, 1, 1);
setDisp( spep_0-1 + 554, 1, 0);

changeAnime( spep_0-3 + 464, 1, 5);
changeAnime( spep_0-3 + 490, 1, 108);

setMoveKey( spep_0-3 + 464, 1, 82.5, 65.8 , 0 );
setMoveKey( spep_0-3 + 466, 1, 86.9, 65.7 , 0 );
setMoveKey( spep_0-3 + 468, 1, 90.8, 65.6 , 0 );
setMoveKey( spep_0-3 + 470, 1, 94.3, 65.6 , 0 );
setMoveKey( spep_0-3 + 472, 1, 97.5, 65.5 , 0 );
setMoveKey( spep_0-3 + 474, 1, 100.3, 65.5 , 0 );
setMoveKey( spep_0-3 + 476, 1, 102.7, 65.5 , 0 );
setMoveKey( spep_0-3 + 478, 1, 104.8, 65.4 , 0 );
setMoveKey( spep_0-3 + 480, 1, 106.4, 65.4 , 0 );
setMoveKey( spep_0-3 + 482, 1, 107.8, 65.4 , 0 );
setMoveKey( spep_0-3 + 484, 1, 108.7, 65.4 , 0 );
setMoveKey( spep_0-3 + 486, 1, 109.2, 65.4 , 0 );
setMoveKey( spep_0-3 + 488, 1, 109.4, 65.4 , 0 );
setMoveKey( spep_0-3 + 489, 1, 109.4, 65.4 , 0 );

setMoveKey( spep_0-3 + 490, 1, 109.3, 65.4 , 0 );
setMoveKey( spep_0-3 + 492, 1, 109.3, 65.4 , 0 );
setMoveKey( spep_0-3 + 494, 1, 129.2, 76.5 , 0 );
setMoveKey( spep_0-3 + 496, 1, 127.3, 76 , 0 );
setMoveKey( spep_0-3 + 498, 1, 132, 78.7 , 0 );
setMoveKey( spep_0-3 + 500, 1, 131.8, 78 , 0 );
setMoveKey( spep_0-3 + 502, 1, 134, 82.6 , 0 );
setMoveKey( spep_0-3 + 504, 1, 134.9, 80.5 , 0 );
setMoveKey( spep_0-3 + 506, 1, 136.6, 84.3 , 0 );
setMoveKey( spep_0-3 + 508, 1, 136, 84.4 , 0 );
setMoveKey( spep_0-3 + 510, 1, 139.7, 84.9 , 0 );
setMoveKey( spep_0-3 + 512, 1, 138.4, 88.2 , 0 );
setMoveKey( spep_0-3 + 514, 1, 141.2, 87.1 , 0 );
setMoveKey( spep_0-3 + 516, 1, 140.1, 88.8 , 0 );
setMoveKey( spep_0-3 + 518, 1, 143.3, 88.5 , 0 );
setMoveKey( spep_0-3 + 520, 1, 141.8, 91.2 , 0 );
setMoveKey( spep_0-3 + 522, 1, 145.2, 92 , 0 );
setMoveKey( spep_0-3 + 524, 1, 144.2, 91.2 , 0 );
setMoveKey( spep_0-3 + 526, 1, 146.3, 94.6 , 0 );
setMoveKey( spep_0-3 + 528, 1, 145.2, 93 , 0 );
setMoveKey( spep_0-3 + 530, 1, 148.6, 94.9 , 0 );
setMoveKey( spep_0-3 + 532, 1, 146.2, 94.5 , 0 );
setMoveKey( spep_0-3 + 534, 1, 148.4, 96.2 , 0 );
setMoveKey( spep_0-3 + 536, 1, 147.6, 95 , 0 );
setMoveKey( spep_0-3 + 538, 1, 150.2, 96.2 , 0 );
setMoveKey( spep_0-3 + 540, 1, 148.3, 96.1 , 0 );
setMoveKey( spep_0-3 + 542, 1, 151.1, 97.9 , 0 );
setMoveKey( spep_0-3 + 544, 1, 148.4, 96.5 , 0 );
setMoveKey( spep_0-3 + 546, 1, 150.8, 98.2 , 0 );
setMoveKey( spep_0-3 + 548, 1, 148.5, 97.4 , 0 );
setMoveKey( spep_0-3 + 550, 1, 151.5, 97.5 , 0 );
setMoveKey( spep_0-1 + 554, 1, 148.6, 98.1 , 0 );

setScaleKey( spep_0-3 + 464, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 466, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 468, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 470, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 472, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 474, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 476, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 478, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 480, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 482, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 484, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 486, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 489, 1, 0.5, 0.5 );

setScaleKey( spep_0-3 + 490, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 494, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 496, 1, 0.6, 0.6 );
setScaleKey( spep_0-1 + 554, 1, 0.6, 0.6 );

setRotateKey( spep_0-3 + 464, 1, 35.2 );
setRotateKey( spep_0-3 + 466, 1, 36.7 );
setRotateKey( spep_0-3 + 468, 1, 38.2 );
setRotateKey( spep_0-3 + 470, 1, 39.5 );
setRotateKey( spep_0-3 + 472, 1, 40.6 );
setRotateKey( spep_0-3 + 474, 1, 41.7 );
setRotateKey( spep_0-3 + 476, 1, 42.5 );
setRotateKey( spep_0-3 + 478, 1, 43.3 );
setRotateKey( spep_0-3 + 480, 1, 43.9 );
setRotateKey( spep_0-3 + 482, 1, 44.4 );
setRotateKey( spep_0-3 + 484, 1, 44.7 );
setRotateKey( spep_0-3 + 486, 1, 44.9 );
setRotateKey( spep_0-3 + 488, 1, 45 );
setRotateKey( spep_0-3 + 489, 1, 45 );

setRotateKey( spep_0-3 + 490, 1, 0 );
setRotateKey( spep_0-1 + 554, 1, 0 );

--SE
--悟飯気だめ
SE005 = playSe( spep_0 + 128, 1226 );
setSeVolumeByWorkId( spep_0 + 128, SE005, 48 );
stopSe( spep_0 + 168, SE005, 12 );
SE006 = playSe( spep_0 + 128, 1278 );
setSeVolumeByWorkId( spep_0 + 128, SE006, 71 );
stopSe( spep_0 + 168, SE006, 22 );
SE007 = playSe( spep_0 + 158, 1035 );
SE008 = playSe( spep_0 + 158, 1067 );
setSeVolumeByWorkId( spep_0 + 158, SE008, 68 );

--2人出てくる
SE009 = playSe( spep_0 + 178, 1004 );
SE010 = playSe( spep_0 + 188, 1116 );
stopSe( spep_0 + 212, SE010, 12 );

--ピッコロ膝蹴り
SE011 = playSe( spep_0 + 212, 1049 );
setSeVolumeByWorkId( spep_0 + 212, SE011, 74 );
stopSe( spep_0 + 240, SE011, 24 );
SE012 = playSe( spep_0 + 216, 1010 );
SE013 = playSe( spep_0 + 216, 1190 );

--クリリン向かっていく
SE014 = playSe( spep_0 + 274, 1117 );
stopSe( spep_0 + 306, SE014, 20 );

--クリリン気弾投げる
SE015 = playSe( spep_0 + 316, 1003 );
SE016 = playSe( spep_0 + 332, 1027 );
SE017 = playSe( spep_0 + 332, 1179 );

--爆発
SE018 = playSe( spep_0 + 356, 1023 );

--ピッコロ気弾溜め
SE019 = playSe( spep_0 + 384, 1122 );
setSeVolumeByWorkId( spep_0 + 384, SE019, 73 );
stopSe( spep_0 + 424, SE019, 20 );

--ピッコロ気弾発射
SE020 = playSe( spep_0 + 426, 1177 );
stopSe( spep_0 + 496, SE020, 14 );
SE021 = playSe( spep_0 + 426, 1205 );
SE022 = playSe( spep_0 + 426, 1027 );
setSeVolumeByWorkId( spep_0 + 426, SE022, 76 );

--ピッコロ気弾道
SE023 = playSe( spep_0 + 458, 1202 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 458, SE023, 160 );

--ピッコロ気弾ヒット
SE024 = playSe( spep_0 + 490, 1038 );
SE025 = playSe( spep_0 + 490, 1043 );
stopSe( spep_0 + 558, SE025, 10 );
SE026 = playSe( spep_0 + 490, 1017 );

--クリリン＆ピッコロカットイン
SE027 = playSe( spep_0 + 548, 1258 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 548, SE027, 55 );
SE028 = playSe( spep_0 + 552, 1264 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 552, SE028, 68 );
stopSe( spep_0 + 648, SE028, 58 );

--悟飯気爆発させる
SE029 = playSe( spep_0 + 648, 1278 );
setSeVolumeByWorkId( spep_0 + 648, SE029, 62 );
stopSe( spep_0 + 696, SE029, 12 );
SE030 = playSe( spep_0 + 690, 1126 );
setSeVolumeByWorkId( spep_0 + 690, SE030, 42 );
SE031 = playSe( spep_0 + 690, 1231 );
setSeVolumeByWorkId( spep_0 + 690, SE031, 202 );
SE032 = playSe( spep_0 + 690, 1011 );


--白フェード
entryFade( spep_0 + 732, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+736;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

--悟飯気爆発させる
stopSe( spep_1 + 0, SE030, 10 );
stopSe( spep_1 + 0, SE031, 10 );
stopSe( spep_1 + 0, SE032, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- 魔閃光発射〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

--文字エントリー
ctgyua = entryEffectLife( spep_2-3 + 174,  10032, 30, 0x100, -1, 0, -4.6, 100.9 );--ギュアアッ
setEffShake(spep_2-3 + 174, ctgyua, 30, 10 );
setEffMoveKey( spep_2-3 + 174, ctgyua, -4.6, 100.9 , 0 );
setEffMoveKey( spep_2-3 + 176, ctgyua, -8.9, 116.2 , 0 );
setEffMoveKey( spep_2-3 + 178, ctgyua, -7.4, 145.3 , 0 );
setEffMoveKey( spep_2-3 + 180, ctgyua, -14.2, 169 , 0 );
setEffMoveKey( spep_2-3 + 182, ctgyua, -4.5, 180.7 , 0 );
setEffMoveKey( spep_2-3 + 184, ctgyua, -9.7, 191.4 , 0 );
setEffMoveKey( spep_2-3 + 186, ctgyua, -18.2, 213.2 , 0 );
setEffMoveKey( spep_2-3 + 188, ctgyua, -5.4, 219.6 , 0 );
setEffMoveKey( spep_2-3 + 190, ctgyua, -11.4, 225.4 , 0 );
setEffMoveKey( spep_2-3 + 192, ctgyua, -21, 244.7 , 0 );
setEffMoveKey( spep_2-3 + 194, ctgyua, -5.9, 246.2 , 0 );
setEffMoveKey( spep_2-3 + 196, ctgyua, -12.5, 247.4 , 0 );
setEffMoveKey( spep_2-3 + 198, ctgyua, -22.7, 263.7 , 0 );
setEffMoveKey( spep_2-3 + 200, ctgyua, -6.2, 260.5 , 0 );
setEffMoveKey( spep_2-3 + 202, ctgyua, -13, 257.4 , 0 );
setEffMoveKey( spep_2-3 + 204, ctgyua, -13, 258.1 , 0 );

setEffScaleKey( spep_2-3 + 174, ctgyua, 1, 1 );
setEffScaleKey( spep_2-3 + 176, ctgyua, 1.19, 1.19 );
setEffScaleKey( spep_2-3 + 178, ctgyua, 1.77, 1.77 );
setEffScaleKey( spep_2-3 + 180, ctgyua, 2.01, 2.01 );
setEffScaleKey( spep_2-3 + 182, ctgyua, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 184, ctgyua, 2.43, 2.43 );
setEffScaleKey( spep_2-3 + 186, ctgyua, 2.61, 2.61 );
setEffScaleKey( spep_2-3 + 188, ctgyua, 2.78, 2.78 );
setEffScaleKey( spep_2-3 + 190, ctgyua, 2.92, 2.92 );
setEffScaleKey( spep_2-3 + 192, ctgyua, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 194, ctgyua, 3.15, 3.15 );
setEffScaleKey( spep_2-3 + 196, ctgyua, 3.24, 3.24 );
setEffScaleKey( spep_2-3 + 198, ctgyua, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 200, ctgyua, 3.36, 3.36 );
setEffScaleKey( spep_2-3 + 202, ctgyua, 3.39, 3.39 );
setEffScaleKey( spep_2-3 + 204, ctgyua, 3.4, 3.4 );

setEffRotateKey( spep_2-3 + 174, ctgyua, 0 );
setEffRotateKey( spep_2-3 + 204, ctgyua, 0 );

setEffAlphaKey( spep_2-3 + 174, ctgyua, 82 );
setEffAlphaKey( spep_2-3 + 176, ctgyua, 125 );
setEffAlphaKey( spep_2-3 + 178, ctgyua, 255 );
setEffAlphaKey( spep_2-3 + 204, ctgyua, 255 );

--敵の動き
setDisp( spep_2-3 + 150, 1, 1);
setDisp( spep_2 + 202, 1, 0);

setBlendColor(spep_2-1 +182,1,3,0.82,0.77,0.66,0);
setBlendColor(spep_2-1 +183,1,3,0.82,0.77,0.66,0.049);
setBlendColor(spep_2-1 +184,1,3,0.82,0.77,0.66,0.098);
setBlendColor(spep_2-1 +185,1,3,0.82,0.77,0.66,0.147);
setBlendColor(spep_2-1 +186,1,3,0.82,0.77,0.66,0.196);
setBlendColor(spep_2-1 +187,1,3,0.82,0.77,0.66,0.245);
setBlendColor(spep_2-1 +188,1,3,0.82,0.77,0.66,0.294);
setBlendColor(spep_2-1 +189,1,3,0.82,0.77,0.66,0.343);
setBlendColor(spep_2-1 +190,1,3,0.82,0.77,0.66,0.392);
setBlendColor(spep_2-1 +191,1,3,0.82,0.77,0.66,0.441);
setBlendColor(spep_2-1 +192,1,3,0.82,0.77,0.66,0.49);
setBlendColor(spep_2-1 +193,1,3,0.82,0.77,0.66,0.539);
setBlendColor(spep_2-1 +194,1,3,0.82,0.77,0.66,0.588);
setBlendColor(spep_2-1 +195,1,3,0.82,0.77,0.66,0.637);
setBlendColor(spep_2-1 +196,1,3,0.82,0.77,0.66,0.686);
setBlendColor(spep_2-1 +197,1,3,0.82,0.77,0.66,0.735);
setBlendColor(spep_2-1 +198,1,3,0.82,0.77,0.66,0.784);
setBlendColor(spep_2-1 +199,1,3,0.82,0.77,0.66,0.833);
setBlendColor(spep_2-1 +200,1,3,0.82,0.77,0.66,0.882);
setBlendColor(spep_2-1 +201,1,3,0.82,0.77,0.66,0.931);
setBlendColor(spep_2-1 +202,1,3,0.82,0.77,0.66,0.99);
setBlendColor(spep_2 +204,1,3,0.82,0.77,0.66,0);

changeAnime( spep_2-3 + 150, 1, 107);

c=40;

setMoveKey( spep_2-3 + 150, 1, 0, -16.8+c , 0 );
setMoveKey( spep_2-3 + 152, 1, 0, -22+c , 0 );
setMoveKey( spep_2-3 + 154, 1, 0, -26.9+c , 0 );
setMoveKey( spep_2-3 + 156, 1, 0, -31.7+c , 0 );
setMoveKey( spep_2-3 + 158, 1, 0, -36.2+c , 0 );
setMoveKey( spep_2-3 + 160, 1, 0, -40.6+c , 0 );
setMoveKey( spep_2-3 + 162, 1, 0, -44.7+c , 0 );
setMoveKey( spep_2-3 + 164, 1, 0, -48.7+c , 0 );
setMoveKey( spep_2-3 + 166, 1, 0, -52.4+c , 0 );
setMoveKey( spep_2-3 + 168, 1, 0, -56+c , 0 );
setMoveKey( spep_2-3 + 170, 1, 0, -59.3+c , 0 );
setMoveKey( spep_2-3 + 172, 1, 0, -62.5+c , 0 );
setMoveKey( spep_2-3 + 174, 1, 0, -65.4+c , 0 );
setMoveKey( spep_2-3 + 176, 1, 0, -68.1+c , 0 );
setMoveKey( spep_2-3 + 178, 1, 0, -70.7+c , 0 );
setMoveKey( spep_2-3 + 180, 1, -2.3, -70.4+c , 0 );
setMoveKey( spep_2-3 + 182, 1, 3.3, -74.9+c , 0 );
setMoveKey( spep_2-3 + 184, 1, -2.8, -78.9+c , 0 );
setMoveKey( spep_2-3 + 186, 1, 1, -76.8+c , 0 );
setMoveKey( spep_2-3 + 188, 1, -1.2, -82.5+c , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.7, -78.3+c , 0 );
setMoveKey( spep_2-3 + 192, 1, 3, -83.1+c , 0 );
setMoveKey( spep_2-3 + 194, 1, -3.1, -84.9+c , 0 );
setMoveKey( spep_2-3 + 196, 1, 2.7, -85.3+c , 0 );
setMoveKey( spep_2-3 + 198, 1, -2.4, -82.3+c , 0 );
setMoveKey( spep_2-3 + 200, 1, 3.2, -85.7+c , 0 );
setMoveKey( spep_2 + 202, 1, 0, -85.2+c , 0 );

setScaleKey( spep_2-3 + 150, 1, 0.5, 0.5 );
setScaleKey( spep_2-3 + 152, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 154, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 156, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 158, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 160, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 162, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 164, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 166, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 168, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 170, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 172, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 174, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 176, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 178, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 180, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 182, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 184, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 186, 1, 0.77, 0.77 );
setScaleKey( spep_2-3 + 188, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 190, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 192, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 194, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 196, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 202, 1, 0.8, 0.8 );

setRotateKey( spep_2-3 + 150, 1, -70 );
setRotateKey( spep_2 + 202, 1, -70 );

--SE
--発射前電撃
SE034 = playSe( spep_2 + 0, 1056 );
setSeVolumeByWorkId( spep_2 + 0, SE034, 107 );

--気弾発射
SE036 = playSe( spep_2 + 42, 1226 );
stopSe( spep_2 + 208, SE036, 18 );
SE037 = playSe( spep_2 + 42, 1068 );
SE038 = playSe( spep_2 + 42, 1213 );
setSeVolumeByWorkId( spep_2 + 42, SE038, 78 );
stopSe( spep_2 + 208, SE038, 40 );
SE039 = playSe( spep_2 + 42, 1215 ,"",0.6);
stopSe( spep_2 + 208, SE039, 40 );
SE035 = playSe( spep_2 + 84, 1193 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 84, SE035, 0 );
setSeVolumeByWorkId( spep_2 + 85, SE035, 8.4 );
setSeVolumeByWorkId( spep_2 + 86, SE035, 16.8 );
setSeVolumeByWorkId( spep_2 + 87, SE035, 25.2 );
setSeVolumeByWorkId( spep_2 + 88, SE035, 33.6 );
setSeVolumeByWorkId( spep_2 + 89, SE035, 42 );
setSeVolumeByWorkId( spep_2 + 90, SE035, 50.4 );
setSeVolumeByWorkId( spep_2 + 91, SE035, 58.8 );
setSeVolumeByWorkId( spep_2 + 92, SE035, 67.2 );
setSeVolumeByWorkId( spep_2 + 93, SE035, 75.6 );
setSeVolumeByWorkId( spep_2 + 94, SE035, 84 );
setSeVolumeByWorkId( spep_2 + 95, SE035, 92.4 );
setSeVolumeByWorkId( spep_2 + 96, SE035, 100.8 );
setSeVolumeByWorkId( spep_2 + 97, SE035, 109.2 );
setSeVolumeByWorkId( spep_2 + 98, SE035, 117 );
setStartTimeMs( SE035,  833 );
stopSe( spep_2 + 218, SE035, 30 );

--煙立ち上がる
SE040 = playSe( spep_2 + 78, 1033 );
setSeVolumeByWorkId( spep_2 + 78, SE040, 87 );
SE041 = playSe( spep_2 + 78, 1188 );
setSeVolumeByWorkId( spep_2 + 78, SE041, 79 );

--気弾重なる
SE042 = playSe( spep_2 + 180, 1021 ,"",0.5);

--ラスト爆発
SE043 = playSe( spep_2 + 272, 1024 );
SE044 = playSe( spep_2 + 272, 1159 );
setSeVolumeByWorkId( spep_2 + 272, SE044, 81 );
SE045 = playSe( spep_2 + 272, 1067 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 340, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +212 );
endPhase( spep_2 + 340 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 3人構え〜悟飯気の解放
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 736, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.01, 1.01 );
setEffScaleKey( spep_0 + 736, tame_f, -1.01, 1.01 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 736, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 734, tame_f, 255 );
setEffAlphaKey( spep_0 + 735, tame_f, 255 );
setEffAlphaKey( spep_0 + 736, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 736, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 736, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 736, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 734, tame_b, 255 );
setEffAlphaKey( spep_0 + 735, tame_b, 255 );
setEffAlphaKey( spep_0 + 736, tame_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
--SE001 = playSe( spep_x + 12, 1018 );

--構える
SE002 = playSe( spep_0 + 18, 1233 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 81 );
SE003 = playSe( spep_0 + 28, 1006 );
setSeVolumeByWorkId( spep_0 + 28, SE003, 93 );

--画面遷移
SE004 = playSe( spep_0 + 80, 1072 );
setSeVolumeByWorkId( spep_0 + 80, SE004, 0 );
setSeVolumeByWorkId( spep_0 + 81, SE004, 7.8 );
setSeVolumeByWorkId( spep_0 + 82, SE004, 15.6 );
setSeVolumeByWorkId( spep_0 + 83, SE004, 23.4 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 31.2 );
setSeVolumeByWorkId( spep_0 + 85, SE004, 39 );
setSeVolumeByWorkId( spep_0 + 86, SE004, 46.8 );
setSeVolumeByWorkId( spep_0 + 87, SE004, 54.6 );
setSeVolumeByWorkId( spep_0 + 88, SE004, 62.4 );
setSeVolumeByWorkId( spep_0 + 89, SE004, 70.2 );
setSeVolumeByWorkId( spep_0 + 90, SE004, 78 );
setStartTimeMs( SE004,  367 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 740, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

    endPhase( SP_dodge + 10 );

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--文字エントリー
ctga = entryEffectLife( spep_0-3 + 224,  10005, 26, 0x100, -1, 0, -98, 198 );--ガッ
setEffShake(spep_0-3 + 224, ctga, 26, 10 );
setEffMoveKey( spep_0-3 + 224, ctga, -98, 198 , 0 );
setEffMoveKey( spep_0-3 + 226, ctga, -0.2, 299.4 , 0 );
setEffMoveKey( spep_0-3 + 228, ctga, 8.4, 309.2 , 0 );
setEffMoveKey( spep_0-3 + 230, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 232, ctga, -23.6, 289.8 , 0 );
setEffMoveKey( spep_0-3 + 234, ctga, -35.1, 274.9 , 0 );
setEffMoveKey( spep_0-3 + 236, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 238, ctga, -23.6, 289.8 , 0 );
setEffMoveKey( spep_0-3 + 240, ctga, -35.1, 274.9 , 0 );
setEffMoveKey( spep_0-3 + 242, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 244, ctga, -23.6, 289.8 , 0 );
setEffMoveKey( spep_0-3 + 246, ctga, -35.1, 274.9 , 0 );
setEffMoveKey( spep_0-3 + 248, ctga, -31.2, 281.1 , 0 );
setEffMoveKey( spep_0-3 + 250, ctga, -23.6, 289.8 , 0 );

setEffScaleKey( spep_0-3 + 224, ctga,1.8,1.8);
setEffScaleKey( spep_0-3 + 226, ctga,3.27,3.27);
setEffScaleKey( spep_0-3 + 228, ctga,3.27,3.27);
setEffScaleKey( spep_0-3 + 230, ctga,2.89,2.89);
setEffScaleKey( spep_0-3 + 250, ctga,2.89,2.89);

setEffRotateKey( spep_0-3 + 224, ctga, 10 );
setEffRotateKey( spep_0-3 + 250, ctga, 10 );

setEffAlphaKey( spep_0-3 + 224, ctga, 255 );
setEffAlphaKey( spep_0-3 + 250, ctga, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_0-3 + 448,  10012, 14, 0x100, -1, 0, -86.8, 137.1 );
setEffShake(spep_0-3 + 448, ctzuo, 14, 10 );
setEffMoveKey( spep_0-3 + 448, ctzuo, -86.8, 137.1 , 0 );
setEffMoveKey( spep_0-3 + 450, ctzuo, -56.2, 160.9 , 0 );
setEffMoveKey( spep_0-3 + 452, ctzuo, 15.5, 211.7 , 0 );
setEffMoveKey( spep_0-3 + 454, ctzuo, 13.2, 211.1 , 0 );
setEffMoveKey( spep_0-3 + 456, ctzuo, -16.9, 185.9 , 0 );
setEffMoveKey( spep_0-3 + 458, ctzuo, -23.3, 185.9 , 0 );
setEffMoveKey( spep_0-3 + 460, ctzuo, -16.9, 179.4 , 0 );
setEffMoveKey( spep_0-3 + 462, ctzuo, -23.3, 179.4 , 0 );

setEffScaleKey( spep_0-3 + 448, ctzuo, 1, 1 );
setEffScaleKey( spep_0-3 + 450, ctzuo, 1.22, 1.22 );
setEffScaleKey( spep_0-3 + 452, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0-3 + 454, ctzuo, 1.8, 1.8 );
setEffScaleKey( spep_0-3 + 456, ctzuo, 1.56, 1.56 );
setEffScaleKey( spep_0-3 + 462, ctzuo, 1.56, 1.56 );

setEffRotateKey( spep_0-3 + 448, ctzuo, -15 );
setEffRotateKey( spep_0-3 + 462, ctzuo, -15 );

setEffAlphaKey( spep_0-3 + 448, ctzuo, 125 );
setEffAlphaKey( spep_0-3 + 450, ctzuo, 157 );
setEffAlphaKey( spep_0-3 + 452, ctzuo, 255 );
setEffAlphaKey( spep_0-3 + 462, ctzuo, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_0-3 + 496,  10014, 56 +1, 0x100, -1, 0, -26.4, 221.8 );--ズドドドッ
setEffShake(spep_0-3 + 496, ctzudodo, 56, 10 );
setEffMoveKey( spep_0-3 + 496, ctzudodo, -26.4, 221.8 , 0 );
setEffMoveKey( spep_0-3 + 498, ctzudodo, -23.8, 205.5 , 0 );
setEffMoveKey( spep_0-3 + 500, ctzudodo, -23.6, 223.7 , 0 );
setEffMoveKey( spep_0-3 + 502, ctzudodo, -21.2, 207.4 , 0 );
setEffMoveKey( spep_0-3 + 504, ctzudodo, -21.1, 225.5 , 0 );
setEffMoveKey( spep_0-3 + 506, ctzudodo, -18.7, 209.1 , 0 );
setEffMoveKey( spep_0-3 + 508, ctzudodo, -18.7, 227.1 , 0 );
setEffMoveKey( spep_0-3 + 510, ctzudodo, -16.5, 210.7 , 0 );
setEffMoveKey( spep_0-3 + 512, ctzudodo, -16.6, 228.6 , 0 );
setEffMoveKey( spep_0-3 + 514, ctzudodo, -14.4, 212.1 , 0 );
setEffMoveKey( spep_0-3 + 516, ctzudodo, -14.6, 230 , 0 );
setEffMoveKey( spep_0-3 + 518, ctzudodo, -12.6, 213.4 , 0 );
setEffMoveKey( spep_0-3 + 520, ctzudodo, -12.9, 231.2 , 0 );
setEffMoveKey( spep_0-3 + 522, ctzudodo, -11, 214.5 , 0 );
setEffMoveKey( spep_0-3 + 524, ctzudodo, -11.4, 232.3 , 0 );
setEffMoveKey( spep_0-3 + 526, ctzudodo, -9.5, 215.5 , 0 );
setEffMoveKey( spep_0-3 + 528, ctzudodo, -10, 233.2 , 0 );
setEffMoveKey( spep_0-3 + 530, ctzudodo, -8.3, 216.4 , 0 );
setEffMoveKey( spep_0-3 + 532, ctzudodo, -8.9, 234 , 0 );
setEffMoveKey( spep_0-3 + 534, ctzudodo, -7.3, 217.1 , 0 );
setEffMoveKey( spep_0-3 + 536, ctzudodo, -8, 234.6 , 0 );
setEffMoveKey( spep_0-3 + 538, ctzudodo, -6.4, 217.6 , 0 );
setEffMoveKey( spep_0-3 + 540, ctzudodo, -7.3, 235.1 , 0 );
setEffMoveKey( spep_0-3 + 542, ctzudodo, -5.8, 218.1 , 0 );
setEffMoveKey( spep_0-3 + 544, ctzudodo, -6.8, 235.5 , 0 );
setEffMoveKey( spep_0-3 + 546, ctzudodo, -5.4, 218.4 , 0 );
setEffMoveKey( spep_0-3 + 548, ctzudodo, -6.5, 235.7 , 0 );
setEffMoveKey( spep_0-3 + 550, ctzudodo, -5.2, 218.5 , 0 );
setEffMoveKey( spep_0-2 + 552, ctzudodo, -6.4, 235.8 , 0 );

setEffScaleKey( spep_0-3 + 496, ctzudodo, 1.94, 1.94 );
setEffScaleKey( spep_0-2 + 552, ctzudodo, 1.94, 1.94 );

setEffRotateKey( spep_0-3 + 496, ctzudodo, -63.2 );
setEffRotateKey( spep_0-2 + 552, ctzudodo, -63.2 );

setEffAlphaKey( spep_0-3 + 496, ctzudodo, 255 );
setEffAlphaKey( spep_0-2 + 496, ctzudodo, 255 );

--敵の動き
setDisp( spep_0-3 + 214, 1, 1);
setDisp( spep_0-1 + 352, 1, 0);

setBlendColor(spep_0-1 +340,1,3,1,1,0.62,0);
setBlendColor(spep_0-1 +341,1,3,1,1,0.62,0.024);
setBlendColor(spep_0-1 +342,1,3,1,1,0.62,0.048);
setBlendColor(spep_0-1 +343,1,3,1,1,0.62,0.072);
setBlendColor(spep_0-1 +344,1,3,1,1,0.62,0.096);
setBlendColor(spep_0-1 +345,1,3,1,1,0.62,0.12);
setBlendColor(spep_0-1 +346,1,3,1,1,0.62,0.144);
setBlendColor(spep_0-1 +347,1,3,1,1,0.62,0.168);
setBlendColor(spep_0-1 +348,1,3,1,1,0.62,0.192);
setBlendColor(spep_0-1 +349,1,3,1,1,0.62,0.216);
setBlendColor(spep_0-1 +350,1,3,1,1,0.62,0.24);
setBlendColor(spep_0 +354,1,3,1,1,0.62,0);

changeAnime( spep_0-3 + 214, 1, 107);
changeAnime( spep_0-3 + 252, 1, 106);
changeAnime( spep_0-3 + 302, 1, 107);

setMoveKey( spep_0-3 + 214, 1, -210.1, -332.2 , 0 );
setMoveKey( spep_0-3 + 216, 1, -210.2, -332.2 , 0 );
setMoveKey( spep_0-3 + 218, 1, -16.2, -283.7 , 0 );
setMoveKey( spep_0-3 + 220, 1, -16.2, -283.6 , 0 );
setMoveKey( spep_0-3 + 226, 1, -16.2, -283.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, -45.7, -298.3 , 0 );
setMoveKey( spep_0-3 + 230, 1, 74, -262.6 , 0 );
setMoveKey( spep_0-3 + 232, 1, 55.1, -268.8 , 0 );
setMoveKey( spep_0-3 + 234, 1, 74, -262.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 74, -262.5 , 0 );
setMoveKey( spep_0-3 + 238, 1, -16.4, -283.5 , 0 );
setMoveKey( spep_0-3 + 240, 1, 73.9, -262.5 , 0 );
setMoveKey( spep_0-3 + 242, 1, 55, -268.8 , 0 );
setMoveKey( spep_0-3 + 244, 1, -16.4, -283.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, -16.4, -283.4 , 0 );
setMoveKey( spep_0-3 + 248, 1, -45.8, -298.1 , 0 );
setMoveKey( spep_0-3 + 250, 1, 73.8, -262.4 , 0 );
setMoveKey( spep_0-3 + 251, 1, 73.8, -262.4 , 0 );

setMoveKey( spep_0-3 + 252, 1, 14.4, -28.6 , 0 );
setMoveKey( spep_0-3 + 254, 1, 14.1, -28.7 , 0 );
setMoveKey( spep_0-3 + 256, 1, 13.2, -29 , 0 );
setMoveKey( spep_0-3 + 258, 1, 12, -29.4 , 0 );
setMoveKey( spep_0-3 + 260, 1, 10.4, -29.9 , 0 );
setMoveKey( spep_0-3 + 262, 1, 8.6, -30.5 , 0 );
setMoveKey( spep_0-3 + 264, 1, 6.5, -31.2 , 0 );
setMoveKey( spep_0-3 + 266, 1, 4.1, -31.9 , 0 );
setMoveKey( spep_0-3 + 268, 1, 1.4, -32.7 , 0 );
setMoveKey( spep_0-3 + 270, 1, 6.6, -28 , 0 );
setMoveKey( spep_0-3 + 272, 1, 12.4, -22.8 , 0 );
setMoveKey( spep_0-3 + 274, 1, 18.9, -17 , 0 );
setMoveKey( spep_0-3 + 276, 1, 26.3, -10.4 , 0 );
setMoveKey( spep_0-3 + 278, 1, 34.8, -2.9 , 0 );
setMoveKey( spep_0-3 + 280, 1, 44.7, 5.9 , 0 );
setMoveKey( spep_0-3 + 282, 1, 56.1, 15.9 , 0 );
setMoveKey( spep_0-3 + 284, 1, 69.5, 27.6 , 0 );
setMoveKey( spep_0-3 + 286, 1, 85.1, 41.2 , 0 );
setMoveKey( spep_0-3 + 288, 1, 103.5, 57.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, 124.9, 75.4 , 0 );
setMoveKey( spep_0-3 + 292, 1, 149.6, 96.5 , 0 );
setMoveKey( spep_0-3 + 294, 1, 176.2, 119 , 0 );
setMoveKey( spep_0-3 + 296, 1, 201.2, 140 , 0 );
setMoveKey( spep_0-3 + 298, 1, 218.3, 154.4 , 0 );
setMoveKey( spep_0-3 + 300, 1, 223.8, 158.8 , 0 );
setMoveKey( spep_0-3 + 301, 1, 223.8, 158.8 , 0 );

a=100;

setMoveKey( spep_0-3 + 302, 1, 1422.8+a, -1044.5 , 0 );
setMoveKey( spep_0-3 + 304, 1, 1411+a, -1039.4 , 0 );
setMoveKey( spep_0-3 + 306, 1, 1382.8+a, -1025.7 , 0 );
setMoveKey( spep_0-3 + 308, 1, 1338+a, -1003.5 , 0 );
setMoveKey( spep_0-3 + 310, 1, 1276.5+a, -972.6 , 0 );
setMoveKey( spep_0-3 + 312, 1, 1198.7+a, -933.1 , 0 );
setMoveKey( spep_0-3 + 314, 1, 1105.4+a, -885.4 , 0 );
setMoveKey( spep_0-3 + 316, 1, 998.3+a, -829.7 , 0 );
setMoveKey( spep_0-3 + 318, 1, 879.7+a, -766.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, 752.8+a, -696.6 , 0 );
setMoveKey( spep_0-3 + 322, 1, 623.4+a, -622.6 , 0 );
setMoveKey( spep_0-3 + 324, 1, 503.9+a, -554.4 , 0 );
setMoveKey( spep_0-3 + 326, 1, 397.3+a, -494.1 , 0 );
setMoveKey( spep_0-3 + 328, 1, 304.5+a, -441.6 , 0 );
setMoveKey( spep_0-3 + 330, 1, 225.6+a, -397.2 , 0 );
setMoveKey( spep_0-3 + 332, 1, 159.9+a, -360.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, 106.4+a, -331.5 , 0 );
setMoveKey( spep_0-3 + 336, 1, 63.6+a, -309.7 , 0 );
setMoveKey( spep_0-3 + 338, 1, 30+a, -294.7 , 0 );
setMoveKey( spep_0-3 + 340, 1, 4.2+a, -286.4 , 0 );
setMoveKey( spep_0-3 + 342, 1, -16.1+a, -281.7 , 0 );
setMoveKey( spep_0-3 + 344, 1, -31.9+a, -278 , 0 );
setMoveKey( spep_0-3 + 346, 1, -43.4+a, -275.4 , 0 );
setMoveKey( spep_0-3 + 348, 1, -51.3+a, -273.6 , 0 );
setMoveKey( spep_0-1 + 352, 1, -55.5+a, -272.6 , 0 );

setScaleKey( spep_0-3 + 214, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 251, 1, 2.6, 2.6 );

setScaleKey( spep_0-3 + 252, 1,2.08,2.08);
setScaleKey( spep_0-3 + 258, 1,2.08,2.08);
setScaleKey( spep_0-3 + 260, 1,2.09,2.09);
setScaleKey( spep_0-3 + 264, 1,2.09,2.09);
setScaleKey( spep_0-3 + 266, 1,2.1,2.1);
setScaleKey( spep_0-3 + 268, 1,2.1,2.1);
setScaleKey( spep_0-3 + 270, 1,2.09,2.09);
setScaleKey( spep_0-3 + 272, 1,2.08,2.08);
setScaleKey( spep_0-3 + 274, 1,2.06,2.06);
setScaleKey( spep_0-3 + 276, 1,2.04,2.04);
setScaleKey( spep_0-3 + 278, 1,2.02,2.02);
setScaleKey( spep_0-3 + 280, 1,2,2);
setScaleKey( spep_0-3 + 282, 1,1.97,1.97);
setScaleKey( spep_0-3 + 284, 1,1.95,1.95);
setScaleKey( spep_0-3 + 286, 1,1.91,1.91);
setScaleKey( spep_0-3 + 288, 1,1.87,1.87);
setScaleKey( spep_0-3 + 290, 1,1.82,1.82);
setScaleKey( spep_0-3 + 292, 1,1.76,1.76);
setScaleKey( spep_0-3 + 294, 1,1.71,1.71);
setScaleKey( spep_0-3 + 296, 1,1.66,1.66);
setScaleKey( spep_0-3 + 298, 1,1.62,1.62);
setScaleKey( spep_0-3 + 300, 1,1.61,1.61);
setScaleKey( spep_0-3 + 301, 1,1.61,1.61);

setScaleKey( spep_0-3 + 302, 1, 6.01, 6.01 );
setScaleKey( spep_0-3 + 304, 1, 5.98, 5.98 );
setScaleKey( spep_0-3 + 306, 1, 5.9, 5.9 );
setScaleKey( spep_0-3 + 308, 1, 5.77, 5.77 );
setScaleKey( spep_0-3 + 310, 1, 5.58, 5.58 );
setScaleKey( spep_0-3 + 312, 1, 5.35, 5.35 );
setScaleKey( spep_0-3 + 314, 1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 316, 1, 4.74, 4.74 );
setScaleKey( spep_0-3 + 318, 1, 4.37, 4.37 );
setScaleKey( spep_0-3 + 320, 1, 3.97, 3.97 );
setScaleKey( spep_0-3 + 322, 1, 3.56, 3.56 );
setScaleKey( spep_0-3 + 324, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 326, 1, 2.84, 2.84 );
setScaleKey( spep_0-3 + 328, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 330, 1, 2.29, 2.29 );
setScaleKey( spep_0-3 + 332, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 334, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 336, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 338, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 340, 1, 1.63, 1.63 );
setScaleKey( spep_0-3 + 342, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 344, 1, 1.55, 1.55 );
setScaleKey( spep_0-3 + 346, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 348, 1, 1.51, 1.51 );
setScaleKey( spep_0-1 + 352, 1, 1.5, 1.5 );

setRotateKey( spep_0-3 + 214, 1, -100 );
setRotateKey( spep_0-3 + 251, 1, -100 );

setRotateKey( spep_0-3 + 252, 1, -15 );
setRotateKey( spep_0-3 + 256, 1, -15 );
setRotateKey( spep_0-3 + 258, 1, -14.9 );
setRotateKey( spep_0-3 + 260, 1, -14.8 );
setRotateKey( spep_0-3 + 262, 1, -14.8 );
setRotateKey( spep_0-3 + 264, 1, -14.7 );
setRotateKey( spep_0-3 + 266, 1, -14.6 );
setRotateKey( spep_0-3 + 268, 1, -14.5 );
setRotateKey( spep_0-3 + 270, 1, -14.4 );
setRotateKey( spep_0-3 + 272, 1, -14.2 );
setRotateKey( spep_0-3 + 274, 1, -14.1 );
setRotateKey( spep_0-3 + 276, 1, -13.9 );
setRotateKey( spep_0-3 + 278, 1, -13.7 );
setRotateKey( spep_0-3 + 280, 1, -13.5 );
setRotateKey( spep_0-3 + 282, 1, -13.3 );
setRotateKey( spep_0-3 + 284, 1, -13 );
setRotateKey( spep_0-3 + 286, 1, -12.7 );
setRotateKey( spep_0-3 + 288, 1, -12.3 );
setRotateKey( spep_0-3 + 290, 1, -11.9 );
setRotateKey( spep_0-3 + 292, 1, -11.5 );
setRotateKey( spep_0-3 + 294, 1, -11 );
setRotateKey( spep_0-3 + 296, 1, -10.6 );
setRotateKey( spep_0-3 + 298, 1, -10.3 );
setRotateKey( spep_0-3 + 300, 1, -10.2 );
setRotateKey( spep_0-3 + 301, 1, -10.2 );

b=60;

setRotateKey( spep_0-3 + 302, 1, 15+b );
setRotateKey( spep_0-3 + 304, 1, 14.9+b );
setRotateKey( spep_0-3 + 306, 1, 14.8+b );
setRotateKey( spep_0-3 + 308, 1, 14.5+b );
setRotateKey( spep_0-3 + 310, 1, 14.1+b );
setRotateKey( spep_0-3 + 312, 1, 13.7+b );
setRotateKey( spep_0-3 + 314, 1, 13.1+b );
setRotateKey( spep_0-3 + 316, 1, 12.3+b );
setRotateKey( spep_0-3 + 318, 1, 11.5+b );
setRotateKey( spep_0-3 + 320, 1, 10.6+b );
setRotateKey( spep_0-3 + 322, 1, 9.5+b );
setRotateKey( spep_0-3 + 324, 1, 8.4+b );
setRotateKey( spep_0-3 + 326, 1, 7.3+b );
setRotateKey( spep_0-3 + 328, 1, 6.2+b );
setRotateKey( spep_0-3 + 330, 1, 5.1+b );
setRotateKey( spep_0-3 + 332, 1, 4.1+b );
setRotateKey( spep_0-3 + 334, 1, 3.2+b );
setRotateKey( spep_0-3 + 336, 1, 2.5+b );
setRotateKey( spep_0-3 + 338, 1, 1.8+b );
setRotateKey( spep_0-3 + 340, 1, 1.3+b );
setRotateKey( spep_0-3 + 342, 1, 0.8+b );
setRotateKey( spep_0-3 + 344, 1, 0.5+b );
setRotateKey( spep_0-3 + 346, 1, 0.3+b );
setRotateKey( spep_0-3 + 348, 1, 0.1+b );
setRotateKey( spep_0-1 + 352, 1, 0+b );

--敵の動き
setDisp( spep_0-3 + 464, 1, 1);
setDisp( spep_0-1 + 554, 1, 0);

changeAnime( spep_0-3 + 464, 1, 5);
changeAnime( spep_0-3 + 490, 1, 108);

setMoveKey( spep_0-3 + 464, 1, 82.5, 65.8 , 0 );
setMoveKey( spep_0-3 + 466, 1, 86.9, 65.7 , 0 );
setMoveKey( spep_0-3 + 468, 1, 90.8, 65.6 , 0 );
setMoveKey( spep_0-3 + 470, 1, 94.3, 65.6 , 0 );
setMoveKey( spep_0-3 + 472, 1, 97.5, 65.5 , 0 );
setMoveKey( spep_0-3 + 474, 1, 100.3, 65.5 , 0 );
setMoveKey( spep_0-3 + 476, 1, 102.7, 65.5 , 0 );
setMoveKey( spep_0-3 + 478, 1, 104.8, 65.4 , 0 );
setMoveKey( spep_0-3 + 480, 1, 106.4, 65.4 , 0 );
setMoveKey( spep_0-3 + 482, 1, 107.8, 65.4 , 0 );
setMoveKey( spep_0-3 + 484, 1, 108.7, 65.4 , 0 );
setMoveKey( spep_0-3 + 486, 1, 109.2, 65.4 , 0 );
setMoveKey( spep_0-3 + 488, 1, 109.4, 65.4 , 0 );
setMoveKey( spep_0-3 + 489, 1, 109.4, 65.4 , 0 );

setMoveKey( spep_0-3 + 490, 1, 109.3, 65.4 , 0 );
setMoveKey( spep_0-3 + 492, 1, 109.3, 65.4 , 0 );
setMoveKey( spep_0-3 + 494, 1, 129.2, 76.5 , 0 );
setMoveKey( spep_0-3 + 496, 1, 127.3, 76 , 0 );
setMoveKey( spep_0-3 + 498, 1, 132, 78.7 , 0 );
setMoveKey( spep_0-3 + 500, 1, 131.8, 78 , 0 );
setMoveKey( spep_0-3 + 502, 1, 134, 82.6 , 0 );
setMoveKey( spep_0-3 + 504, 1, 134.9, 80.5 , 0 );
setMoveKey( spep_0-3 + 506, 1, 136.6, 84.3 , 0 );
setMoveKey( spep_0-3 + 508, 1, 136, 84.4 , 0 );
setMoveKey( spep_0-3 + 510, 1, 139.7, 84.9 , 0 );
setMoveKey( spep_0-3 + 512, 1, 138.4, 88.2 , 0 );
setMoveKey( spep_0-3 + 514, 1, 141.2, 87.1 , 0 );
setMoveKey( spep_0-3 + 516, 1, 140.1, 88.8 , 0 );
setMoveKey( spep_0-3 + 518, 1, 143.3, 88.5 , 0 );
setMoveKey( spep_0-3 + 520, 1, 141.8, 91.2 , 0 );
setMoveKey( spep_0-3 + 522, 1, 145.2, 92 , 0 );
setMoveKey( spep_0-3 + 524, 1, 144.2, 91.2 , 0 );
setMoveKey( spep_0-3 + 526, 1, 146.3, 94.6 , 0 );
setMoveKey( spep_0-3 + 528, 1, 145.2, 93 , 0 );
setMoveKey( spep_0-3 + 530, 1, 148.6, 94.9 , 0 );
setMoveKey( spep_0-3 + 532, 1, 146.2, 94.5 , 0 );
setMoveKey( spep_0-3 + 534, 1, 148.4, 96.2 , 0 );
setMoveKey( spep_0-3 + 536, 1, 147.6, 95 , 0 );
setMoveKey( spep_0-3 + 538, 1, 150.2, 96.2 , 0 );
setMoveKey( spep_0-3 + 540, 1, 148.3, 96.1 , 0 );
setMoveKey( spep_0-3 + 542, 1, 151.1, 97.9 , 0 );
setMoveKey( spep_0-3 + 544, 1, 148.4, 96.5 , 0 );
setMoveKey( spep_0-3 + 546, 1, 150.8, 98.2 , 0 );
setMoveKey( spep_0-3 + 548, 1, 148.5, 97.4 , 0 );
setMoveKey( spep_0-3 + 550, 1, 151.5, 97.5 , 0 );
setMoveKey( spep_0-1 + 554, 1, 148.6, 98.1 , 0 );

setScaleKey( spep_0-3 + 464, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 466, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 468, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 470, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 472, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 474, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 476, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 478, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 480, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 482, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 484, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 486, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 489, 1, 0.5, 0.5 );

setScaleKey( spep_0-3 + 490, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 494, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 496, 1, 0.6, 0.6 );
setScaleKey( spep_0-1 + 554, 1, 0.6, 0.6 );

setRotateKey( spep_0-3 + 464, 1, 35.2 );
setRotateKey( spep_0-3 + 466, 1, 36.7 );
setRotateKey( spep_0-3 + 468, 1, 38.2 );
setRotateKey( spep_0-3 + 470, 1, 39.5 );
setRotateKey( spep_0-3 + 472, 1, 40.6 );
setRotateKey( spep_0-3 + 474, 1, 41.7 );
setRotateKey( spep_0-3 + 476, 1, 42.5 );
setRotateKey( spep_0-3 + 478, 1, 43.3 );
setRotateKey( spep_0-3 + 480, 1, 43.9 );
setRotateKey( spep_0-3 + 482, 1, 44.4 );
setRotateKey( spep_0-3 + 484, 1, 44.7 );
setRotateKey( spep_0-3 + 486, 1, 44.9 );
setRotateKey( spep_0-3 + 488, 1, 45 );
setRotateKey( spep_0-3 + 489, 1, 45 );

setRotateKey( spep_0-3 + 490, 1, 0 );
setRotateKey( spep_0-1 + 554, 1, 0 );

--SE
--悟飯気だめ
SE005 = playSe( spep_0 + 128, 1226 );
setSeVolumeByWorkId( spep_0 + 128, SE005, 48 );
stopSe( spep_0 + 168, SE005, 12 );
SE006 = playSe( spep_0 + 128, 1278 );
setSeVolumeByWorkId( spep_0 + 128, SE006, 71 );
stopSe( spep_0 + 168, SE006, 22 );
SE007 = playSe( spep_0 + 158, 1035 );
SE008 = playSe( spep_0 + 158, 1067 );
setSeVolumeByWorkId( spep_0 + 158, SE008, 68 );

--2人出てくる
SE009 = playSe( spep_0 + 178, 1004 );
SE010 = playSe( spep_0 + 188, 1116 );
stopSe( spep_0 + 212, SE010, 12 );

--ピッコロ膝蹴り
SE011 = playSe( spep_0 + 212, 1049 );
setSeVolumeByWorkId( spep_0 + 212, SE011, 74 );
stopSe( spep_0 + 240, SE011, 24 );
SE012 = playSe( spep_0 + 216, 1010 );
SE013 = playSe( spep_0 + 216, 1190 );

--クリリン向かっていく
SE014 = playSe( spep_0 + 274, 1117 );
stopSe( spep_0 + 306, SE014, 20 );

--クリリン気弾投げる
SE015 = playSe( spep_0 + 316, 1003 );
SE016 = playSe( spep_0 + 332, 1027 );
SE017 = playSe( spep_0 + 332, 1179 );

--爆発
SE018 = playSe( spep_0 + 356, 1023 );

--ピッコロ気弾溜め
SE019 = playSe( spep_0 + 384, 1122 );
setSeVolumeByWorkId( spep_0 + 384, SE019, 73 );
stopSe( spep_0 + 424, SE019, 20 );

--ピッコロ気弾発射
SE020 = playSe( spep_0 + 426, 1177 );
stopSe( spep_0 + 496, SE020, 14 );
SE021 = playSe( spep_0 + 426, 1205 );
SE022 = playSe( spep_0 + 426, 1027 );
setSeVolumeByWorkId( spep_0 + 426, SE022, 76 );

--ピッコロ気弾道
SE023 = playSe( spep_0 + 458, 1202 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 458, SE023, 160 );

--ピッコロ気弾ヒット
SE024 = playSe( spep_0 + 490, 1038 );
SE025 = playSe( spep_0 + 490, 1043 );
stopSe( spep_0 + 558, SE025, 10 );
SE026 = playSe( spep_0 + 490, 1017 );

--クリリン＆ピッコロカットイン
SE027 = playSe( spep_0 + 548, 1258 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 548, SE027, 55 );
SE028 = playSe( spep_0 + 552, 1264 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 552, SE028, 68 );
stopSe( spep_0 + 648, SE028, 58 );

--悟飯気爆発させる
SE029 = playSe( spep_0 + 648, 1278 );
setSeVolumeByWorkId( spep_0 + 648, SE029, 62 );
stopSe( spep_0 + 696, SE029, 12 );
SE030 = playSe( spep_0 + 690, 1126 );
setSeVolumeByWorkId( spep_0 + 690, SE030, 42 );
SE031 = playSe( spep_0 + 690, 1231 );
setSeVolumeByWorkId( spep_0 + 690, SE031, 202 );
SE032 = playSe( spep_0 + 690, 1011 );


--白フェード
entryFade( spep_0 + 732, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+736;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--悟飯気爆発させる
stopSe( spep_1 + 0, SE030, 10 );
stopSe( spep_1 + 0, SE031, 10 );
stopSe( spep_1 + 0, SE032, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- 魔閃光発射〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

--文字エントリー
ctgyua = entryEffectLife( spep_2-3 + 174,  10032, 30, 0x100, -1, 0, -4.6, 100.9 );--ギュアアッ
setEffShake(spep_2-3 + 174, ctgyua, 30, 10 );
setEffMoveKey( spep_2-3 + 174, ctgyua, -4.6, 100.9 , 0 );
setEffMoveKey( spep_2-3 + 176, ctgyua, -8.9, 116.2 , 0 );
setEffMoveKey( spep_2-3 + 178, ctgyua, -7.4, 145.3 , 0 );
setEffMoveKey( spep_2-3 + 180, ctgyua, -14.2, 169 , 0 );
setEffMoveKey( spep_2-3 + 182, ctgyua, -4.5, 180.7 , 0 );
setEffMoveKey( spep_2-3 + 184, ctgyua, -9.7, 191.4 , 0 );
setEffMoveKey( spep_2-3 + 186, ctgyua, -18.2, 213.2 , 0 );
setEffMoveKey( spep_2-3 + 188, ctgyua, -5.4, 219.6 , 0 );
setEffMoveKey( spep_2-3 + 190, ctgyua, -11.4, 225.4 , 0 );
setEffMoveKey( spep_2-3 + 192, ctgyua, -21, 244.7 , 0 );
setEffMoveKey( spep_2-3 + 194, ctgyua, -5.9, 246.2 , 0 );
setEffMoveKey( spep_2-3 + 196, ctgyua, -12.5, 247.4 , 0 );
setEffMoveKey( spep_2-3 + 198, ctgyua, -22.7, 263.7 , 0 );
setEffMoveKey( spep_2-3 + 200, ctgyua, -6.2, 260.5 , 0 );
setEffMoveKey( spep_2-3 + 202, ctgyua, -13, 257.4 , 0 );
setEffMoveKey( spep_2-3 + 204, ctgyua, -13, 258.1 , 0 );

setEffScaleKey( spep_2-3 + 174, ctgyua, 1, 1 );
setEffScaleKey( spep_2-3 + 176, ctgyua, 1.19, 1.19 );
setEffScaleKey( spep_2-3 + 178, ctgyua, 1.77, 1.77 );
setEffScaleKey( spep_2-3 + 180, ctgyua, 2.01, 2.01 );
setEffScaleKey( spep_2-3 + 182, ctgyua, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 184, ctgyua, 2.43, 2.43 );
setEffScaleKey( spep_2-3 + 186, ctgyua, 2.61, 2.61 );
setEffScaleKey( spep_2-3 + 188, ctgyua, 2.78, 2.78 );
setEffScaleKey( spep_2-3 + 190, ctgyua, 2.92, 2.92 );
setEffScaleKey( spep_2-3 + 192, ctgyua, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 194, ctgyua, 3.15, 3.15 );
setEffScaleKey( spep_2-3 + 196, ctgyua, 3.24, 3.24 );
setEffScaleKey( spep_2-3 + 198, ctgyua, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 200, ctgyua, 3.36, 3.36 );
setEffScaleKey( spep_2-3 + 202, ctgyua, 3.39, 3.39 );
setEffScaleKey( spep_2-3 + 204, ctgyua, 3.4, 3.4 );

setEffRotateKey( spep_2-3 + 174, ctgyua, 0 );
setEffRotateKey( spep_2-3 + 204, ctgyua, 0 );

setEffAlphaKey( spep_2-3 + 174, ctgyua, 82 );
setEffAlphaKey( spep_2-3 + 176, ctgyua, 125 );
setEffAlphaKey( spep_2-3 + 178, ctgyua, 255 );
setEffAlphaKey( spep_2-3 + 204, ctgyua, 255 );

--敵の動き
setDisp( spep_2-3 + 150, 1, 1);
setDisp( spep_2 + 202, 1, 0);

setBlendColor(spep_2-1 +182,1,3,0.82,0.77,0.66,0);
setBlendColor(spep_2-1 +183,1,3,0.82,0.77,0.66,0.049);
setBlendColor(spep_2-1 +184,1,3,0.82,0.77,0.66,0.098);
setBlendColor(spep_2-1 +185,1,3,0.82,0.77,0.66,0.147);
setBlendColor(spep_2-1 +186,1,3,0.82,0.77,0.66,0.196);
setBlendColor(spep_2-1 +187,1,3,0.82,0.77,0.66,0.245);
setBlendColor(spep_2-1 +188,1,3,0.82,0.77,0.66,0.294);
setBlendColor(spep_2-1 +189,1,3,0.82,0.77,0.66,0.343);
setBlendColor(spep_2-1 +190,1,3,0.82,0.77,0.66,0.392);
setBlendColor(spep_2-1 +191,1,3,0.82,0.77,0.66,0.441);
setBlendColor(spep_2-1 +192,1,3,0.82,0.77,0.66,0.49);
setBlendColor(spep_2-1 +193,1,3,0.82,0.77,0.66,0.539);
setBlendColor(spep_2-1 +194,1,3,0.82,0.77,0.66,0.588);
setBlendColor(spep_2-1 +195,1,3,0.82,0.77,0.66,0.637);
setBlendColor(spep_2-1 +196,1,3,0.82,0.77,0.66,0.686);
setBlendColor(spep_2-1 +197,1,3,0.82,0.77,0.66,0.735);
setBlendColor(spep_2-1 +198,1,3,0.82,0.77,0.66,0.784);
setBlendColor(spep_2-1 +199,1,3,0.82,0.77,0.66,0.833);
setBlendColor(spep_2-1 +200,1,3,0.82,0.77,0.66,0.882);
setBlendColor(spep_2-1 +201,1,3,0.82,0.77,0.66,0.931);
setBlendColor(spep_2-1 +202,1,3,0.82,0.77,0.66,0.99);
setBlendColor(spep_2 +204,1,3,0.82,0.77,0.66,0);

changeAnime( spep_2-3 + 150, 1, 107);

c=40;

setMoveKey( spep_2-3 + 150, 1, 0, -16.8+c , 0 );
setMoveKey( spep_2-3 + 152, 1, 0, -22+c , 0 );
setMoveKey( spep_2-3 + 154, 1, 0, -26.9+c , 0 );
setMoveKey( spep_2-3 + 156, 1, 0, -31.7+c , 0 );
setMoveKey( spep_2-3 + 158, 1, 0, -36.2+c , 0 );
setMoveKey( spep_2-3 + 160, 1, 0, -40.6+c , 0 );
setMoveKey( spep_2-3 + 162, 1, 0, -44.7+c , 0 );
setMoveKey( spep_2-3 + 164, 1, 0, -48.7+c , 0 );
setMoveKey( spep_2-3 + 166, 1, 0, -52.4+c , 0 );
setMoveKey( spep_2-3 + 168, 1, 0, -56+c , 0 );
setMoveKey( spep_2-3 + 170, 1, 0, -59.3+c , 0 );
setMoveKey( spep_2-3 + 172, 1, 0, -62.5+c , 0 );
setMoveKey( spep_2-3 + 174, 1, 0, -65.4+c , 0 );
setMoveKey( spep_2-3 + 176, 1, 0, -68.1+c , 0 );
setMoveKey( spep_2-3 + 178, 1, 0, -70.7+c , 0 );
setMoveKey( spep_2-3 + 180, 1, -2.3, -70.4+c , 0 );
setMoveKey( spep_2-3 + 182, 1, 3.3, -74.9+c , 0 );
setMoveKey( spep_2-3 + 184, 1, -2.8, -78.9+c , 0 );
setMoveKey( spep_2-3 + 186, 1, 1, -76.8+c , 0 );
setMoveKey( spep_2-3 + 188, 1, -1.2, -82.5+c , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.7, -78.3+c , 0 );
setMoveKey( spep_2-3 + 192, 1, 3, -83.1+c , 0 );
setMoveKey( spep_2-3 + 194, 1, -3.1, -84.9+c , 0 );
setMoveKey( spep_2-3 + 196, 1, 2.7, -85.3+c , 0 );
setMoveKey( spep_2-3 + 198, 1, -2.4, -82.3+c , 0 );
setMoveKey( spep_2-3 + 200, 1, 3.2, -85.7+c , 0 );
setMoveKey( spep_2 + 202, 1, 0, -85.2+c , 0 );

setScaleKey( spep_2-3 + 150, 1, 0.5, 0.5 );
setScaleKey( spep_2-3 + 152, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 154, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 156, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 158, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 160, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 162, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 164, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 166, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 168, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 170, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 172, 1, 0.7, 0.7 );
setScaleKey( spep_2-3 + 174, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 176, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 178, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 180, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 182, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 184, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 186, 1, 0.77, 0.77 );
setScaleKey( spep_2-3 + 188, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 190, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 192, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 194, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 196, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 202, 1, 0.8, 0.8 );

setRotateKey( spep_2-3 + 150, 1, -70 );
setRotateKey( spep_2 + 202, 1, -70 );

--SE
--発射前電撃
SE034 = playSe( spep_2 + 0, 1056 );
setSeVolumeByWorkId( spep_2 + 0, SE034, 107 );

--気弾発射
SE036 = playSe( spep_2 + 42, 1226 );
stopSe( spep_2 + 208, SE036, 18 );
SE037 = playSe( spep_2 + 42, 1068 );
SE038 = playSe( spep_2 + 42, 1213 );
setSeVolumeByWorkId( spep_2 + 42, SE038, 78 );
stopSe( spep_2 + 208, SE038, 40 );
SE039 = playSe( spep_2 + 42, 1215 ,"",0.6);
stopSe( spep_2 + 208, SE039, 40 );
SE035 = playSe( spep_2 + 84, 1193 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 84, SE035, 0 );
setSeVolumeByWorkId( spep_2 + 85, SE035, 8.4 );
setSeVolumeByWorkId( spep_2 + 86, SE035, 16.8 );
setSeVolumeByWorkId( spep_2 + 87, SE035, 25.2 );
setSeVolumeByWorkId( spep_2 + 88, SE035, 33.6 );
setSeVolumeByWorkId( spep_2 + 89, SE035, 42 );
setSeVolumeByWorkId( spep_2 + 90, SE035, 50.4 );
setSeVolumeByWorkId( spep_2 + 91, SE035, 58.8 );
setSeVolumeByWorkId( spep_2 + 92, SE035, 67.2 );
setSeVolumeByWorkId( spep_2 + 93, SE035, 75.6 );
setSeVolumeByWorkId( spep_2 + 94, SE035, 84 );
setSeVolumeByWorkId( spep_2 + 95, SE035, 92.4 );
setSeVolumeByWorkId( spep_2 + 96, SE035, 100.8 );
setSeVolumeByWorkId( spep_2 + 97, SE035, 109.2 );
setSeVolumeByWorkId( spep_2 + 98, SE035, 117 );
setStartTimeMs( SE035,  833 );
stopSe( spep_2 + 218, SE035, 30 );

--煙立ち上がる
SE040 = playSe( spep_2 + 78, 1033 );
setSeVolumeByWorkId( spep_2 + 78, SE040, 87 );
SE041 = playSe( spep_2 + 78, 1188 );
setSeVolumeByWorkId( spep_2 + 78, SE041, 79 );

--気弾重なる
SE042 = playSe( spep_2 + 180, 1021 ,"",0.5);

--ラスト爆発
SE043 = playSe( spep_2 + 272, 1024 );
SE044 = playSe( spep_2 + 272, 1159 );
setSeVolumeByWorkId( spep_2 + 272, SE044, 81 );
SE045 = playSe( spep_2 + 272, 1067 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 340, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +212 );
endPhase( spep_2 + 340 );
end