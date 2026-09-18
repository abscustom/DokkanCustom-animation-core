--1024660:LR合体ザマス_裁きの刃
--sp_effect_a3_00093
--sp2384

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

--味方側
SP_01 = 160109; --開始→初弾→敵着弾の背景  ef_001_bg
SP_02 = 160111; --開始→初弾→敵着弾のキャラ ef_001_ch
SP_03 = 160113; --セリフカットイン  ef_002
SP_04 = 160114; --とどめ→爆発→爆発俯瞰の背景    ef_003_bg
SP_05 = 160116; --刃エフェクト→爆風 ef_003_eff
SP_06 = 160118; --敵叩きつけの煙→爆風    ef_003_eff02

--敵側
SP_01r = 160110;    --開始→初弾→敵着弾の背景：敵側   ef_001_bg_r
SP_02r = 160112;    --開始→初弾→敵着弾のキャラ：敵側  ef_001_ch_r
SP_04r = 160115;    --とどめ→爆発→爆発俯瞰の背景：敵側 ef_003_bg_r
SP_05r = 160117;    --刃エフェクト→爆風：敵側  ef_003_eff_r
SP_06r = 160119;    --敵叩きつけの煙→爆風：敵側 ef_003_eff02_r


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開始→初弾→敵着弾のキャラ(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_02, 316, 0x100, -1, 0, 0, 0 );  --開始→初弾→敵着弾のキャラ ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 316, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 316 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 316, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_01, 316, 0x80, -1, 0, 0, 0 );  --開始→初弾→敵着弾の背景  ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 316, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 316 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 316, first_b, 0 );

-- ** 書き文字エントリー ** --
ctbibibi = entryEffectLife( spep_0 -3 + 112,  10025, 43, 0x100, -1, 0, 120.7, 311.1 );  --ビビビッ
setEffMoveKey( spep_0 -3 + 112, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 118, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 120, ctbibibi, 158.4, 331.8 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctbibibi, 121.4, 320 , 0 );
setEffMoveKey( spep_0 -3 + 124, ctbibibi, 147.3, 341.9 , 0 );
setEffMoveKey( spep_0 -3 + 126, ctbibibi, 119.3, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 128, ctbibibi, 151.4, 332.8 , 0 );
setEffMoveKey( spep_0 -3 + 130, ctbibibi, 120.8, 318.1 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctbibibi, 149.6, 333.5 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctbibibi, 123, 315 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctbibibi, 150.1, 335.5 , 0 );
setEffMoveKey( spep_0 -3 + 138, ctbibibi, 123.3, 316.9 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctbibibi, 152.5, 333.8 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctbibibi, 141.7, 321.1 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 155, ctbibibi, 134.1, 307.1 , 0 );

setEffScaleKey( spep_0 -3 + 112, ctbibibi, 1.92, 1.92 );
setEffScaleKey( spep_0 -3 + 155, ctbibibi, 1.92, 1.92 );

setEffRotateKey( spep_0 -3 + 112, ctbibibi, 10.7 );
setEffRotateKey( spep_0 -3 + 155, ctbibibi, 10.7 );

setEffAlphaKey( spep_0 -3 + 112, ctbibibi, 255 );
setEffAlphaKey( spep_0 -3 + 155, ctbibibi, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_0 -3 + 164,  10014, 95, 0x100, -1, 0, 75.9, 373.5 );   --ズドドドッ
setEffMoveKey( spep_0 -3 + 164, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_0 -3 + 259, ctzudodo, 87.6, 409.9 , 0 );

setEffScaleKey( spep_0 -3 + 164, ctzudodo, 2.048, 2.048 );
setEffScaleKey( spep_0 -3 + 259, ctzudodo, 2.048, 2.048 );

setEffRotateKey( spep_0 -3 + 164, ctzudodo, 48.7 );
setEffRotateKey( spep_0 -3 + 259, ctzudodo, 48.7 );

setEffAlphaKey( spep_0 -3 + 164, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 259, ctzudodo, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_0 -3 + 290,  10018, 28, 0x100, -1, 0, 125.8, -39.9 );   --ドゴォンッ
setEffMoveKey( spep_0 -3 + 290, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 296, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 302, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 304, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 306, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 308, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 310, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 312, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 314, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 316, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 318, ctdogon, 125.8, -39.9 , 0 );

setEffScaleKey( spep_0 -3 + 290, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_0 -3 + 318, ctdogon, 2.56, 2.56 );

setEffRotateKey( spep_0 -3 + 290, ctdogon, 12 );
setEffRotateKey( spep_0 -3 + 318, ctdogon, 12 );

setEffAlphaKey( spep_0 -3 + 290, ctdogon, 255 );
setEffAlphaKey( spep_0 -3 + 318, ctdogon, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 62, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 185.1, 61.2 , 0 );
setMoveKey( spep_0 + 1, 1, 185.5, 60.9 , 0 );
setMoveKey( spep_0 + 2, 1, 185.8, 60.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 186.2, 60.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 186.2, 60.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 186.6, 60.3 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 186.6, 60.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 187, 60.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 187.3, 59.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 187.7, 59.7 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 188.1, 59.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 188.5, 59.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 188.8, 59.1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 189.2, 58.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 189.6, 58.6 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 190, 58.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 190.3, 58.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 190.7, 58 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 191.1, 57.8 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 191.5, 57.6 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 191.8, 57.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 192.2, 57.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 192.6, 57 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 193, 56.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 193.3, 56.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 193.7, 56.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 194.1, 56.1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 194.5, 55.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 194.8, 55.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 195.2, 55.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 195.6, 55.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 196, 55.1 , 0 );
setMoveKey( spep_0 -3 + 61, 1, 196.3, 54.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 196.3, 54.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 62, 1, 0.6, 0.6 );

r1 = 5;
setRotateKey( spep_0 + 0, 1, 9 -r1 );
setRotateKey( spep_0 + 1, 1, 9 -r1 );
setRotateKey( spep_0 + 2, 1, 9 -r1 );
setRotateKey( spep_0 + 3, 1, 9 -r1 );
setRotateKey( spep_0 + 4, 1, 9 -r1 );
setRotateKey( spep_0 + 5, 1, 9 -r1 );
setRotateKey( spep_0 + 6, 1, 9 -r1 );
setRotateKey( spep_0 -3 + 62, 1, 9 -r1 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--画面遷移
SE002 = playSeVer2( spep_0 + 44, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE002,  200 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 156, 1, 1 );
setDisp( spep_0 -3 + 319, 1, 0 );
changeAnime( spep_0 -3 + 156, 1, 104 );
changeAnime( spep_0 -3 + 166, 1, 106 );
changeAnime( spep_0 -3 + 260, 1, 108 );
changeAnime( spep_0 -3 + 290, 1, 106 );

setMoveKey( spep_0 -3 + 156, 1, 201.5, -62.1 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 201.5, -62.1 , 0 );
setMoveKey( spep_0 -3 + 165, 1, 201.5, -62.1 , 0 );--

m1 = 10;
setMoveKey( spep_0 -3 + 166, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 159.5 - 3.1, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 159.5 + 0, -80.3 - 1.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 159.5 - 4.7 -m1, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 159.5 + 0, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 159.5 - 1  , -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 159.5 + 4.7 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 159.5 + 4.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 159.5 + 0.6 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 159.5 + 1.5 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 159.5 + 0.5, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 159.5 + 0.5 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 159.5 - 2.5 -m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 159.5 - 0.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 159.5 + 1.6 +m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 159.5 + 0, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 159.5 + 1.5 +m1, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 159.5 - 3.1 -m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 159.5 + 0, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 159.5 + 1.6 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 159.5 + 0, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 159.5 + 0 +m1, -80.3 - 1.5 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 159.5 + 0, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 159.5 - 4.7 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 159.5 + 2.6 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 159.5 + 0, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 159.5 + 3.1 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 159.5 - 3.1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 159.5 + 0, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 159.5 - 4.7 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 159.5 + 0 +m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 159.5 - 3.1 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 159.5 - 1, -80.3 + 4.6  +m1, 0 );
setMoveKey( spep_0 -3 + 242, 1, 159.5 + 4.7 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 159.5 + 4.6, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 159.5 + 0.6 +m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 159.5 + 1.5, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 159.5 + 0.5 +m1, -80.3 - 0 +m1 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 159.5 + 0.5, -80.3 + 1.6 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 159.5 - 2.5 -m1, -80.3 - 0 -m1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 159.5 - 0.6, -80.3 - 2.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 159.5 + 1.6 +m1, -80.3 - 0 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 159.5 + 0, -80.3 - 1.6 +m1 , 0 );--
setMoveKey( spep_0 -3 + 260, 1, -726.9, 455.4 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -744.5, 452 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -750.8, 441.6 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -745.5, 424.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -728.9, 400.1 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -700.9, 369 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -661.5, 330.9 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -610.6, 286 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -548.4, 234.1 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -474.7, 175.3 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -389.6, 109.6 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -293.1, 37 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -185.2, -42.5 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -65.8, -129 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 64.8, -222.2 , 0 );
setMoveKey( spep_0 -3 + 289, 1, 64.8, -222.2 , 0 );--
setMoveKey( spep_0 -3 + 290, 1, 53.1, -253.4 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 88.9, -292.3 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 89.5, -285.3 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 90.1, -278.4 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 90.7, -271.4 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 93.1, -264.5 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 95.6, -257.5 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 98, -250.6 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 100.4, -243.6 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 103.6, -236.2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 106.7, -228.8 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 109.9, -221.4 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 116.2, -213.9 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 122.4, -206.5 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 128.7, -199.1 , 0 );
setMoveKey( spep_0 -3 + 319, 1, 128.7, -199.1 , 0 );

setScaleKey( spep_0 -3 + 156, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 165, 1, 1.2, 1.2 );--
setScaleKey( spep_0 -3 + 166, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 259, 1, 1.2, 1.2 );--
setScaleKey( spep_0 -3 + 260, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 289, 1, 1.32, 1.32 );--
setScaleKey( spep_0 -3 + 290, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 319, 1, 1.2, 1.2 );

setRotateKey( spep_0 -3 + 156, 1, 11.5 );
setRotateKey( spep_0 -3 + 165, 1, 11.5 );--
setRotateKey( spep_0 -3 + 166, 1, -53.7 );
setRotateKey( spep_0 -3 + 259, 1, -53.7 );--
setRotateKey( spep_0 -3 + 260, 1, 37.9 );
setRotateKey( spep_0 -3 + 289, 1, 37.9 );--
setRotateKey( spep_0 -3 + 290, 1, 10 );
setRotateKey( spep_0 -3 + 319, 1, 10 );

-- ** 音 ** --
--気弾を撃つベース
SE006 = playSeVer2( spep_0 + 106, 1357, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_0 + 196, 1357, "", 0, 14, 0, -1);
setStartTimeMs( SE013,  683 );

--連続気弾発射
SE003 = playSeVer2( spep_0 + 104, 1177, "",spep_0 + 190, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 104, SE003, 61 );
SE004 = playSeVer2( spep_0 + 106, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE004, 79 );
SE005 = playSeVer2( spep_0 + 106, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 79 );
SE007 = playSeVer2( spep_0 + 110, 1109, "", spep_0 + 132, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 110, SE007, 73 );

SE008 = playSeVer2( spep_0 + 120, 1016, "",spep_0 + 132, 0, 4, -1);
SE009 = playSeVer2( spep_0 + 126, 1016, "",spep_0 + 138, 0, 4, -1);
SE010 = playSeVer2( spep_0 + 132, 1016, "",spep_0 + 146, 0, 4, -1);
SE011 = playSeVer2( spep_0 + 140, 1016, "",spep_0 + 152, 0, 4, -1);
SE012 = playSeVer2( spep_0 + 148, 1016, "",spep_0 + 162, 0, 6, -1);
SE014 = playSeVer2( spep_0 + 156, 1016, "",spep_0 + 168, 0, 6, -1);
SE016 = playSeVer2( spep_0 + 162, 1016, "",spep_0 + 176, 0, 6, -1);
SE017 = playSeVer2( spep_0 + 170, 1016, "",spep_0 + 182, 0, 4, -1);
SE019 = playSeVer2( spep_0 + 178, 1016, "",spep_0 + 190, 0, 4, -1);
SE020 = playSeVer2( spep_0 + 186, 1016, "",spep_0 + 200, 0, 6, -1);
SE021 = playSeVer2( spep_0 + 192, 1016, "",spep_0 + 206, 0, 4, -1);
SE023 = playSeVer2( spep_0 + 200, 1016, "",spep_0 + 212, 0, 4, -1);
SE024 = playSeVer2( spep_0 + 208, 1016, "",spep_0 + 222, 0, 6, -1);
SE025 = playSeVer2( spep_0 + 216, 1016, "",spep_0 + 230, 0, 6, -1);
SE026 = playSeVer2( spep_0 + 224, 1016, "",spep_0 + 238, 0, 6, -1);
SE027 = playSeVer2( spep_0 + 232, 1016, "",spep_0 + 244, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 232, SE027, 81 );
SE028 = playSeVer2( spep_0 + 240, 1016, "",spep_0 + 252, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 240, SE028, 79 );
SE029 = playSeVer2( spep_0 + 246, 1016, "",spep_0 + 260, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 246, SE029, 65 );

--連続爆発
SE015 = playSeVer2( spep_0 + 156, 1023, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 172, 1011, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 192, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_0 + 246, 1121, "",spep_0 + 308, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 246, SE030, 77 );
SE031 = playSeVer2( spep_0 + 246, 1183, "",spep_0 + 308, 0, 16, -1);

--敵地面で跳ねる
SE032 = playSeVer2( spep_0 + 286, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 288, 1110, "", 0, 0, 0, -1);

--気弾を撃つベース


-- ** 次の準備 ** --
spep_1 = spep_0 + 316;


------------------------------------------------------
-- セリフカットイン(106F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_1 + 0, SP_03, 106, 0x100, -1, 0, 0, 0 );  --セリフカットイン  ef_002
setEffMoveKey( spep_1 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, cutin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 106, cutin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cutin, 0 );
setEffRotateKey( spep_1 + 106, cutin, 0 );
setEffAlphaKey( spep_1 + 0, cutin, 255 );
setEffAlphaKey( spep_1 + 106 -1, cutin, 255 );
setEffAlphaKey( spep_1 + 106, cutin, 0 );

spep_x = spep_1 + 22;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
SE034 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕広げる
SE035 = playSeVer2( spep_1 + 58, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_c = spep_1 + 106;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
--playSe( spep_c + 0, SE_05);

--赤い気弾出現
SE036 = playSeVer2( spep_c + 88, 1264, "", 0, 10, 0, -1);
setStartTimeMs( SE036,  1767 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;


------------------------------------------------------
-- とどめ→爆発(466F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --刃エフェクト→爆風 ef_003_eff
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 466, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 466, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 466, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 466, finish_f, 255 );

finish_e = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵叩きつけの煙→爆風    ef_003_eff02
setEffMoveKey( spep_3 + 0, finish_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 466, finish_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 466, finish_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_e, 0 );
setEffRotateKey( spep_3 + 466, finish_e, 0 );
setEffAlphaKey( spep_3 + 0, finish_e, 255 );
setEffAlphaKey( spep_3 + 466, finish_e, 255 );

finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --とどめ→爆発→爆発俯瞰の背景    ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 466, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 466, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 466, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 466, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 140, 1, 1 );
setDisp( spep_3 -3 + 320, 1, 0 );
changeAnime( spep_3 -3 + 140, 1, 106 );
changeAnime( spep_3 -3 + 240, 1, 108 );
changeAnime( spep_3 -3 + 282, 1, 106 );

setMoveKey( spep_3 -3 + 140, 1, 52, -284.2 , 0 );
setMoveKey( spep_3 -3 + 173, 1, 52, -284.2 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 52.1, -284.2 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 52.2, -288.9 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 52.2, -284.3 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 52.2, -290.5 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 55.3, -292 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 52.2, -287.9 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 49.1, -292.6 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 49.1, -289.5 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 44.4, -292.6 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 44.4, -289.5 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 41.3, -292.6 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 40.3, -289.5 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 45, -294.1 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 49.6, -289.5 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 50.2, -292.6 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 51.7, -290 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 52.2, -293.1 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 52.7, -288.5 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 50.2, -293.1 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 49.6, -292.7 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 51.2, -291.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 51.2, -292.7 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 52.7, -292.7 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 49.6, -291.1 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 49.6, -291.1 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 51.2, -293.2 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 48.1, -293.2 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 48.1, -294.8 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 48.1, -293.2 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 48.1, -291.7 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 51.2, -291.7 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 46.5, -293.2 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 49.1, -290.7 , 0 );
setMoveKey( spep_3 -3 + 239, 1, 49.1, -290.7 , 0 );--
setMoveKey( spep_3 -3 + 240, 1, -687.1, -417.3 , 0 );
setMoveKey( spep_3 -3 + 242, 1, -525, -321.4 , 0 );
setMoveKey( spep_3 -3 + 244, 1, -363, -225.6 , 0 );
setMoveKey( spep_3 -3 + 246, 1, -200.9, -129.7 , 0 );
setMoveKey( spep_3 -3 + 248, 1, -39, -33.9 , 0 );
setMoveKey( spep_3 -3 + 250, 1, -33.4, -1.2 , 0 );
setMoveKey( spep_3 -3 + 252, 1, -0.7, -35.3 , 0 );
setMoveKey( spep_3 -3 + 254, 1, -1.2, -17.9 , 0 );
setMoveKey( spep_3 -3 + 256, 1, -1.7, -20.6 , 0 );
setMoveKey( spep_3 -3 + 258, 1, 6.9, -11.1 , 0 );
setMoveKey( spep_3 -3 + 260, 1, -0.9, -27.6 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 10.5, -24 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 16.8, -36.6 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 12.2, 1.4 , 0 );
setMoveKey( spep_3 -3 + 268, 1, -1.7, -22.4 , 0 );
setMoveKey( spep_3 -3 + 270, 1, -33.8, -30 , 0 );
setMoveKey( spep_3 -3 + 271, 1, -33.8, -30 , 0 );--
setMoveKey( spep_3 -3 + 272, 1, -14.1, -43.4 , 0 );
setMoveKey( spep_3 -3 + 274, 1, -6.8, -14.6 , 0 );
setMoveKey( spep_3 -3 + 276, 1, 29.6, -21 , 0 );
setMoveKey( spep_3 -3 + 278, 1, 59.8, 9.2 , 0 );
setMoveKey( spep_3 -3 + 280, 1, 59.5, 8.9 , 0 );
setMoveKey( spep_3 -3 + 281, 1, 59.5, 8.9 , 0 );--
setMoveKey( spep_3 -3 + 282, 1, -27.2, 49.2 , 0 );
setMoveKey( spep_3 -3 + 284, 1, -33.8, 22.9 , 0 );
setMoveKey( spep_3 -3 + 286, 1, -9.8, 45.4 , 0 );
setMoveKey( spep_3 -3 + 288, 1, 11, 22.1 , 0 );
setMoveKey( spep_3 -3 + 290, 1, 7.5, 29.3 , 0 );
setMoveKey( spep_3 -3 + 292, 1, 24, 4.3 , 0 );
setMoveKey( spep_3 -3 + 294, 1, 6.9, 15.8 , 0 );
setMoveKey( spep_3 -3 + 296, 1, 32.5, 21.3 , 0 );
setMoveKey( spep_3 -3 + 298, 1, 52, 35.9 , 0 );
setMoveKey( spep_3 -3 + 300, 1, 41, 4.8 , 0 );
setMoveKey( spep_3 -3 + 302, 1, 34.9, 38.3 , 0 );
setMoveKey( spep_3 -3 + 304, 1, 37.9, 20 , 0 );
setMoveKey( spep_3 -3 + 306, 1, 37.9, 50.5 , 0 );
setMoveKey( spep_3 -3 + 308, 1, 41, 41.4 , 0 );
setMoveKey( spep_3 -3 + 310, 1, 47.1, 50.5 , 0 );
setMoveKey( spep_3 -3 + 312, 1, 41, 17 , 0 );
setMoveKey( spep_3 -3 + 314, 1, 41, 17 , 0 );
setMoveKey( spep_3 -3 + 316, 1, 44, 26.1 , 0 );
setMoveKey( spep_3 -3 + 318, 1, 53.2, 35.3 , 0 );
setMoveKey( spep_3 -3 + 320, 1, 53.2, 35.3 , 0 );

setScaleKey( spep_3 -3 + 140, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 239, 1, 1.2, 1.2 );--
setScaleKey( spep_3 -3 + 240, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 272, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 274, 1, 2.86, 2.86 );
setScaleKey( spep_3 -3 + 281, 1, 2.86, 2.86 );--
setScaleKey( spep_3 -3 + 282, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 320, 1, 2.6, 2.6 );

setRotateKey( spep_3 -3 + 140, 1, 18 );
setRotateKey( spep_3 -3 + 239, 1, 18 );--
setRotateKey( spep_3 -3 + 240, 1, 5.3 );
setRotateKey( spep_3 -3 + 271, 1, 5.3 );--
setRotateKey( spep_3 -3 + 272, 1, 5.3 );
setRotateKey( spep_3 -3 + 274, 1, 6.7 );
setRotateKey( spep_3 -3 + 276, 1, 8.2 );
setRotateKey( spep_3 -3 + 278, 1, 9.7 );
setRotateKey( spep_3 -3 + 280, 1, 11.1 );
setRotateKey( spep_3 -3 + 281, 1, 11.1 );--
setRotateKey( spep_3 -3 + 282, 1, -24.3 );
setRotateKey( spep_3 -3 + 284, 1, -22.7 );
setRotateKey( spep_3 -3 + 286, 1, -21.1 );
setRotateKey( spep_3 -3 + 288, 1, -19.5 );
setRotateKey( spep_3 -3 + 290, 1, -17.8 );
setRotateKey( spep_3 -3 + 292, 1, -17 );
setRotateKey( spep_3 -3 + 294, 1, -16.2 );
setRotateKey( spep_3 -3 + 296, 1, -15.3 );
setRotateKey( spep_3 -3 + 298, 1, -14.5 );
setRotateKey( spep_3 -3 + 300, 1, -13.6 );
setRotateKey( spep_3 -3 + 320, 1, -13.6 );

-- ** 音 ** --
--赤い気弾出現
SE038 = playSeVer2( spep_3 + 0, 1289, "", 0, 8, 0, -1);
setStartTimeMs( SE038,  517 );
SE039 = playSeVer2( spep_3 + 0, 1221, "", 0, 0, 0, -1);

--気弾発射ベース
SE040 = playSeVer2( spep_3 + 66, 1217, "",spep_3 + 102, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 66, SE040, 58 );
SE041 = playSeVer2( spep_3 + 68, 1109, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_3 + 68, 1357, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 68, SE042, 79 );

--連続気弾
SE043 = playSeVer2( spep_3 + 68, 1016, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_3 + 78, 1016, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_3 + 86, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_3 + 96, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 96, SE046, -400 );
setTimeStretch( SE046, 0.73, 30, 4 );
SE047 = playSeVer2( spep_3 + 106, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 106, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE048 = playSeVer2( spep_3 + 114, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 114, SE048, -400 );
setTimeStretch( SE048, 0.73, 30, 4 );
SE049 = playSeVer2( spep_3 + 122, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 122, SE049, -400 );
setTimeStretch( SE049, 0.73, 30, 4 );
SE050 = playSeVer2( spep_3 + 132, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 132, SE050, 300 );
setTimeStretch( SE050, 1.2, 30, 4 );
SE052 = playSeVer2( spep_3 + 142, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 142, SE052, 300 );
setTimeStretch( SE052, 1.2, 30, 4 );
SE053 = playSeVer2( spep_3 + 150, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 150, SE053, 300 );
setTimeStretch( SE053, 1.2, 30, 4 );
SE054 = playSeVer2( spep_3 + 158, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 158, SE054, 400 );
setTimeStretch( SE054, 1.27, 30, 4 );
SE055 = playSeVer2( spep_3 + 166, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 166, SE055, 400 );
setTimeStretch( SE055, 1.27, 30, 4 );
SE056 = playSeVer2( spep_3 + 174, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 174, SE056, 400 );
setTimeStretch( SE056, 1.27, 30, 4 );
SE057 = playSeVer2( spep_3 + 182, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 182, SE057, 400 );
setTimeStretch( SE057, 1.27, 30, 4 );
SE058 = playSeVer2( spep_3 + 192, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 192, SE058, 400 );
setTimeStretch( SE058, 1.27, 30, 4 );

--気弾発射ベース
SE051 = playSeVer2( spep_3 + 134, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 134, SE051, 60 );
setPitch( spep_3 + 134, SE051, 300 );
setTimeStretch( SE051, 1.2, 30, 4 );

--刃光る
SE059 = playSeVer2( spep_3 + 200, 1374, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 200, SE059, 141 );
setTimeStretch( SE059, 0.63, 30, 4 );

--連続気弾
SE060 = playSeVer2( spep_3 + 200, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 200, SE060, 400 );
setTimeStretch( SE060, 1.27, 30, 4 );
SE061 = playSeVer2( spep_3 + 208, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 208, SE061, 400 );
setTimeStretch( SE061, 1.27, 30, 4 );

--敵ヒット
SE062 = playSeVer2( spep_3 + 228, 1226, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_3 + 230, 1159, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_3 + 238, 1024, "", 0, 0, 0, -1);

--地響き
SE065 = playSeVer2( spep_3 + 274, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 394, SE027, 81 );
setSeVolumeByWorkId( spep_3 + 396, SE027, 86 );
setSeVolumeByWorkId( spep_3 + 398, SE027, 91 );
setSeVolumeByWorkId( spep_3 + 400, SE027, 96 );
setSeVolumeByWorkId( spep_3 + 402, SE027, 101 );
setSeVolumeByWorkId( spep_3 + 404, SE027, 106 );
setSeVolumeByWorkId( spep_3 + 406, SE027, 111 );
setSeVolumeByWorkId( spep_3 + 408, SE027, 116 );
setSeVolumeByWorkId( spep_3 + 410, SE027, 121 );
setSeVolumeByWorkId( spep_3 + 412, SE027, 123 );
setSeVolumeByWorkId( spep_3 + 414, SE027, 128 );
setSeVolumeByWorkId( spep_3 + 416, SE027, 133 );
setSeVolumeByWorkId( spep_3 + 418, SE027, 138 );
setSeVolumeByWorkId( spep_3 + 420, SE027, 143 );
setSeVolumeByWorkId( spep_3 + 422, SE027, 148 );
setSeVolumeByWorkId( spep_3 + 424, SE027, 153 );
setSeVolumeByWorkId( spep_3 + 426, SE027, 158 );
setSeVolumeByWorkId( spep_3 + 428, SE027, 163 );
setSeVolumeByWorkId( spep_3 + 430, SE027, 168 );
setSeVolumeByWorkId( spep_3 + 432, SE027, 173 );
setSeVolumeByWorkId( spep_3 + 434, SE027, 178 );
setSeVolumeByWorkId( spep_3 + 436, SE027, 183 );
setSeVolumeByWorkId( spep_3 + 438, SE027, 188 );

--遠く爆発
SE066 = playSeVer2( spep_3 + 324, 1023, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_3 + 330, 1068, "", 0, 0, 0, -1);

--爆風
SE068 = playSeVer2( spep_3 + 384, 1259, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_3 + 388, 1188, "", 0, 16, 0, -1);
setStartTimeMs( SE069,  67 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 466 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 466;


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 346 );
endPhase( spep_3 + 456 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始→初弾→敵着弾のキャラ(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_02r, 316, 0x100, -1, 0, 0, 0 );  --開始→初弾→敵着弾のキャラ ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 316, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 316 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 316, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_01r, 316, 0x80, -1, 0, 0, 0 );  --開始→初弾→敵着弾の背景  ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 316, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 316 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 316, first_b, 0 );

-- ** 書き文字エントリー ** --
ctbibibi = entryEffectLife( spep_0 -3 + 112,  10025, 43, 0x100, -1, 0, 120.7, 311.1 );  --ビビビッ
setEffMoveKey( spep_0 -3 + 112, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 118, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 120, ctbibibi, 158.4, 331.8 , 0 );
setEffMoveKey( spep_0 -3 + 122, ctbibibi, 121.4, 320 , 0 );
setEffMoveKey( spep_0 -3 + 124, ctbibibi, 147.3, 341.9 , 0 );
setEffMoveKey( spep_0 -3 + 126, ctbibibi, 119.3, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 128, ctbibibi, 151.4, 332.8 , 0 );
setEffMoveKey( spep_0 -3 + 130, ctbibibi, 120.8, 318.1 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctbibibi, 149.6, 333.5 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctbibibi, 123, 315 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctbibibi, 150.1, 335.5 , 0 );
setEffMoveKey( spep_0 -3 + 138, ctbibibi, 123.3, 316.9 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctbibibi, 152.5, 333.8 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctbibibi, 141.7, 321.1 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 155, ctbibibi, 134.1, 307.1 , 0 );

setEffScaleKey( spep_0 -3 + 112, ctbibibi, 1.92, 1.92 );
setEffScaleKey( spep_0 -3 + 155, ctbibibi, 1.92, 1.92 );

setEffRotateKey( spep_0 -3 + 112, ctbibibi, 10.7 );
setEffRotateKey( spep_0 -3 + 155, ctbibibi, 10.7 );

setEffAlphaKey( spep_0 -3 + 112, ctbibibi, 255 );
setEffAlphaKey( spep_0 -3 + 155, ctbibibi, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_0 -3 + 164,  10014, 95, 0x100, -1, 0, 75.9, 373.5 );   --ズドドドッ
setEffMoveKey( spep_0 -3 + 164, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_0 -3 + 259, ctzudodo, 87.6, 409.9 , 0 );

setEffScaleKey( spep_0 -3 + 164, ctzudodo, 2.048, 2.048 );
setEffScaleKey( spep_0 -3 + 259, ctzudodo, 2.048, 2.048 );

setEffRotateKey( spep_0 -3 + 164, ctzudodo, -48.7 );
setEffRotateKey( spep_0 -3 + 259, ctzudodo, -48.7 );

setEffAlphaKey( spep_0 -3 + 164, ctzudodo, 255 );
setEffAlphaKey( spep_0 -3 + 259, ctzudodo, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_0 -3 + 290,  10018, 28, 0x100, -1, 0, 125.8, -39.9 );   --ドゴォンッ
setEffMoveKey( spep_0 -3 + 290, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 296, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 302, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 304, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 306, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 308, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 310, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 312, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 314, ctdogon, 125.8, -39.9 , 0 );
setEffMoveKey( spep_0 -3 + 316, ctdogon, 129.7, -31.7 , 0 );
setEffMoveKey( spep_0 -3 + 318, ctdogon, 125.8, -39.9 , 0 );

setEffScaleKey( spep_0 -3 + 290, ctdogon, 2.56, 2.56 );
setEffScaleKey( spep_0 -3 + 318, ctdogon, 2.56, 2.56 );

setEffRotateKey( spep_0 -3 + 290, ctdogon, 12 );
setEffRotateKey( spep_0 -3 + 318, ctdogon, 12 );

setEffAlphaKey( spep_0 -3 + 290, ctdogon, 255 );
setEffAlphaKey( spep_0 -3 + 318, ctdogon, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 62, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 185.1, 61.2 , 0 );
setMoveKey( spep_0 + 1, 1, 185.5, 60.9 , 0 );
setMoveKey( spep_0 + 2, 1, 185.8, 60.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 186.2, 60.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 186.2, 60.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 186.6, 60.3 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 186.6, 60.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 187, 60.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 187.3, 59.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 187.7, 59.7 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 188.1, 59.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 188.5, 59.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 188.8, 59.1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 189.2, 58.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 189.6, 58.6 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 190, 58.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 190.3, 58.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 190.7, 58 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 191.1, 57.8 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 191.5, 57.6 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 191.8, 57.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 192.2, 57.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 192.6, 57 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 193, 56.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 193.3, 56.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 193.7, 56.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 194.1, 56.1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 194.5, 55.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 194.8, 55.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 195.2, 55.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 195.6, 55.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 196, 55.1 , 0 );
setMoveKey( spep_0 -3 + 61, 1, 196.3, 54.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 196.3, 54.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 62, 1, 0.6, 0.6 );

r1 = 5;
setRotateKey( spep_0 + 0, 1, 9 -r1 );
setRotateKey( spep_0 + 1, 1, 9 -r1 );
setRotateKey( spep_0 + 2, 1, 9 -r1 );
setRotateKey( spep_0 + 3, 1, 9 -r1 );
setRotateKey( spep_0 + 4, 1, 9 -r1 );
setRotateKey( spep_0 + 5, 1, 9 -r1 );
setRotateKey( spep_0 + 6, 1, 9 -r1 );
setRotateKey( spep_0 -3 + 62, 1, 9 -r1 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--画面遷移
SE002 = playSeVer2( spep_0 + 44, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE002,  200 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 156, 1, 1 );
setDisp( spep_0 -3 + 319, 1, 0 );
changeAnime( spep_0 -3 + 156, 1, 104 );
changeAnime( spep_0 -3 + 166, 1, 106 );
changeAnime( spep_0 -3 + 260, 1, 108 );
changeAnime( spep_0 -3 + 290, 1, 106 );

setMoveKey( spep_0 -3 + 156, 1, 201.5, -62.1 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 201.5, -62.1 , 0 );
setMoveKey( spep_0 -3 + 165, 1, 201.5, -62.1 , 0 );--

m1 = 10;
setMoveKey( spep_0 -3 + 166, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 159.5 - 3.1, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 159.5 + 0, -80.3 - 1.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 159.5 - 4.7 -m1, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 159.5 + 0, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 159.5 - 1  , -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 159.5 + 4.7 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 159.5 + 4.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 159.5 + 0.6 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 159.5 + 1.5 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 159.5 + 0.5, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 159.5 + 0.5 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 159.5 - 2.5 -m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 159.5 - 0.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 159.5 + 1.6 +m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 159.5 + 0, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 159.5 + 1.5 +m1, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 159.5 - 3.1 -m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 159.5 + 0, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 159.5 + 1.6 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 159.5 + 0, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 159.5 + 0 +m1, -80.3 - 1.5 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 159.5 + 0, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 159.5 - 4.7 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 159.5 + 2.6 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 159.5 + 0, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 159.5 + 3.1 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 159.5 - 3.1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 159.5 + 0, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 159.5 - 4.7 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 159.5 + 0 +m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 159.5 - 3.1 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 159.5 - 1, -80.3 + 4.6  +m1, 0 );
setMoveKey( spep_0 -3 + 242, 1, 159.5 + 4.7 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 159.5 + 4.6, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 159.5 + 0.6 +m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 159.5 + 1.5, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 159.5 + 0.5 +m1, -80.3 - 0 +m1 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 159.5 + 0.5, -80.3 + 1.6 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 159.5 - 2.5 -m1, -80.3 - 0 -m1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 159.5 - 0.6, -80.3 - 2.1 +m1 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 159.5 + 1.6 +m1, -80.3 - 0 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 159.5 + 0, -80.3 - 1.6 +m1 , 0 );--
setMoveKey( spep_0 -3 + 260, 1, -726.9, 455.4 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -744.5, 452 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -750.8, 441.6 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -745.5, 424.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -728.9, 400.1 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -700.9, 369 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -661.5, 330.9 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -610.6, 286 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -548.4, 234.1 , 0 );
setMoveKey( spep_0 -3 + 278, 1, -474.7, 175.3 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -389.6, 109.6 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -293.1, 37 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -185.2, -42.5 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -65.8, -129 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 64.8, -222.2 , 0 );
setMoveKey( spep_0 -3 + 289, 1, 64.8, -222.2 , 0 );--
setMoveKey( spep_0 -3 + 290, 1, 53.1, -253.4 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 88.9, -292.3 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 89.5, -285.3 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 90.1, -278.4 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 90.7, -271.4 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 93.1, -264.5 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 95.6, -257.5 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 98, -250.6 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 100.4, -243.6 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 103.6, -236.2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 106.7, -228.8 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 109.9, -221.4 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 116.2, -213.9 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 122.4, -206.5 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 128.7, -199.1 , 0 );
setMoveKey( spep_0 -3 + 319, 1, 128.7, -199.1 , 0 );

setScaleKey( spep_0 -3 + 156, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 165, 1, 1.2, 1.2 );--
setScaleKey( spep_0 -3 + 166, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 259, 1, 1.2, 1.2 );--
setScaleKey( spep_0 -3 + 260, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 289, 1, 1.32, 1.32 );--
setScaleKey( spep_0 -3 + 290, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 319, 1, 1.2, 1.2 );

setRotateKey( spep_0 -3 + 156, 1, 11.5 );
setRotateKey( spep_0 -3 + 165, 1, 11.5 );--
setRotateKey( spep_0 -3 + 166, 1, -53.7 );
setRotateKey( spep_0 -3 + 259, 1, -53.7 );--
setRotateKey( spep_0 -3 + 260, 1, 37.9 );
setRotateKey( spep_0 -3 + 289, 1, 37.9 );--
setRotateKey( spep_0 -3 + 290, 1, 10 );
setRotateKey( spep_0 -3 + 319, 1, 10 );

-- ** 音 ** --
--気弾を撃つベース
SE006 = playSeVer2( spep_0 + 106, 1357, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_0 + 196, 1357, "", 0, 14, 0, -1);
setStartTimeMs( SE013,  683 );

--連続気弾発射
SE003 = playSeVer2( spep_0 + 104, 1177, "",spep_0 + 190, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 104, SE003, 61 );
SE004 = playSeVer2( spep_0 + 106, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE004, 79 );
SE005 = playSeVer2( spep_0 + 106, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 79 );
SE007 = playSeVer2( spep_0 + 110, 1109, "", spep_0 + 132, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 110, SE007, 73 );

SE008 = playSeVer2( spep_0 + 120, 1016, "",spep_0 + 132, 0, 4, -1);
SE009 = playSeVer2( spep_0 + 126, 1016, "",spep_0 + 138, 0, 4, -1);
SE010 = playSeVer2( spep_0 + 132, 1016, "",spep_0 + 146, 0, 4, -1);
SE011 = playSeVer2( spep_0 + 140, 1016, "",spep_0 + 152, 0, 4, -1);
SE012 = playSeVer2( spep_0 + 148, 1016, "",spep_0 + 162, 0, 6, -1);
SE014 = playSeVer2( spep_0 + 156, 1016, "",spep_0 + 168, 0, 6, -1);
SE016 = playSeVer2( spep_0 + 162, 1016, "",spep_0 + 176, 0, 6, -1);
SE017 = playSeVer2( spep_0 + 170, 1016, "",spep_0 + 182, 0, 4, -1);
SE019 = playSeVer2( spep_0 + 178, 1016, "",spep_0 + 190, 0, 4, -1);
SE020 = playSeVer2( spep_0 + 186, 1016, "",spep_0 + 200, 0, 6, -1);
SE021 = playSeVer2( spep_0 + 192, 1016, "",spep_0 + 206, 0, 4, -1);
SE023 = playSeVer2( spep_0 + 200, 1016, "",spep_0 + 212, 0, 4, -1);
SE024 = playSeVer2( spep_0 + 208, 1016, "",spep_0 + 222, 0, 6, -1);
SE025 = playSeVer2( spep_0 + 216, 1016, "",spep_0 + 230, 0, 6, -1);
SE026 = playSeVer2( spep_0 + 224, 1016, "",spep_0 + 238, 0, 6, -1);
SE027 = playSeVer2( spep_0 + 232, 1016, "",spep_0 + 244, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 232, SE027, 81 );
SE028 = playSeVer2( spep_0 + 240, 1016, "",spep_0 + 252, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 240, SE028, 79 );
SE029 = playSeVer2( spep_0 + 246, 1016, "",spep_0 + 260, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 246, SE029, 65 );

--連続爆発
SE015 = playSeVer2( spep_0 + 156, 1023, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 172, 1011, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 192, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_0 + 246, 1121, "",spep_0 + 308, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 246, SE030, 77 );
SE031 = playSeVer2( spep_0 + 246, 1183, "",spep_0 + 308, 0, 16, -1);

--敵地面で跳ねる
SE032 = playSeVer2( spep_0 + 286, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 288, 1110, "", 0, 0, 0, -1);

--気弾を撃つベース


-- ** 次の準備 ** --
spep_1 = spep_0 + 316;


------------------------------------------------------
-- セリフカットイン(106F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_1 + 0, SP_03, 106, 0x100, -1, 0, 0, 0 );  --セリフカットイン  ef_002
setEffMoveKey( spep_1 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 106, cutin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cutin, -1.0, 1.0 );
setEffScaleKey( spep_1 + 106, cutin, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cutin, 0 );
setEffRotateKey( spep_1 + 106, cutin, 0 );
setEffAlphaKey( spep_1 + 0, cutin, 255 );
setEffAlphaKey( spep_1 + 106 -1, cutin, 255 );
setEffAlphaKey( spep_1 + 106, cutin, 0 );

spep_x = spep_1 + 22;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
--SE034 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕広げる
SE035 = playSeVer2( spep_1 + 58, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 106;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--赤い気弾出現
SE036 = playSeVer2( spep_2 + 88, 1264, "", 0, 10, 0, -1);
setStartTimeMs( SE036,  1767 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- とどめ→爆発(466F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --刃エフェクト→爆風 ef_003_eff
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 466, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 466, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 466, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 466, finish_f, 255 );

finish_e = entryEffect( spep_3 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --敵叩きつけの煙→爆風    ef_003_eff02
setEffMoveKey( spep_3 + 0, finish_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 466, finish_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_e, -1.0, 1.0 );
setEffScaleKey( spep_3 + 466, finish_e, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_e, 0 );
setEffRotateKey( spep_3 + 466, finish_e, 0 );
setEffAlphaKey( spep_3 + 0, finish_e, 255 );
setEffAlphaKey( spep_3 + 466, finish_e, 255 );

finish_b = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --とどめ→爆発→爆発俯瞰の背景    ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 466, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 466, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 466, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 466, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 140, 1, 1 );
setDisp( spep_3 -3 + 320, 1, 0 );
changeAnime( spep_3 -3 + 140, 1, 106 );
changeAnime( spep_3 -3 + 240, 1, 108 );
changeAnime( spep_3 -3 + 282, 1, 106 );

setMoveKey( spep_3 -3 + 140, 1, 52, -284.2 , 0 );
setMoveKey( spep_3 -3 + 173, 1, 52, -284.2 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 52.1, -284.2 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 52.2, -288.9 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 52.2, -284.3 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 52.2, -290.5 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 55.3, -292 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 52.2, -287.9 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 49.1, -292.6 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 49.1, -289.5 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 44.4, -292.6 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 44.4, -289.5 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 41.3, -292.6 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 40.3, -289.5 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 45, -294.1 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 49.6, -289.5 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 50.2, -292.6 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 51.7, -290 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 52.2, -293.1 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 52.7, -288.5 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 50.2, -293.1 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 49.6, -292.7 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 51.2, -291.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 51.2, -292.7 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 52.7, -292.7 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 49.6, -291.1 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 49.6, -291.1 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 51.2, -293.2 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 48.1, -293.2 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 48.1, -294.8 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 48.1, -293.2 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 48.1, -291.7 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 51.2, -291.7 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 46.5, -293.2 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 49.1, -290.7 , 0 );
setMoveKey( spep_3 -3 + 239, 1, 49.1, -290.7 , 0 );--
setMoveKey( spep_3 -3 + 240, 1, -687.1, -417.3 , 0 );
setMoveKey( spep_3 -3 + 242, 1, -525, -321.4 , 0 );
setMoveKey( spep_3 -3 + 244, 1, -363, -225.6 , 0 );
setMoveKey( spep_3 -3 + 246, 1, -200.9, -129.7 , 0 );
setMoveKey( spep_3 -3 + 248, 1, -39, -33.9 , 0 );
setMoveKey( spep_3 -3 + 250, 1, -33.4, -1.2 , 0 );
setMoveKey( spep_3 -3 + 252, 1, -0.7, -35.3 , 0 );
setMoveKey( spep_3 -3 + 254, 1, -1.2, -17.9 , 0 );
setMoveKey( spep_3 -3 + 256, 1, -1.7, -20.6 , 0 );
setMoveKey( spep_3 -3 + 258, 1, 6.9, -11.1 , 0 );
setMoveKey( spep_3 -3 + 260, 1, -0.9, -27.6 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 10.5, -24 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 16.8, -36.6 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 12.2, 1.4 , 0 );
setMoveKey( spep_3 -3 + 268, 1, -1.7, -22.4 , 0 );
setMoveKey( spep_3 -3 + 270, 1, -33.8, -30 , 0 );
setMoveKey( spep_3 -3 + 271, 1, -33.8, -30 , 0 );--
setMoveKey( spep_3 -3 + 272, 1, -14.1, -43.4 , 0 );
setMoveKey( spep_3 -3 + 274, 1, -6.8, -14.6 , 0 );
setMoveKey( spep_3 -3 + 276, 1, 29.6, -21 , 0 );
setMoveKey( spep_3 -3 + 278, 1, 59.8, 9.2 , 0 );
setMoveKey( spep_3 -3 + 280, 1, 59.5, 8.9 , 0 );
setMoveKey( spep_3 -3 + 281, 1, 59.5, 8.9 , 0 );--
setMoveKey( spep_3 -3 + 282, 1, -27.2, 49.2 , 0 );
setMoveKey( spep_3 -3 + 284, 1, -33.8, 22.9 , 0 );
setMoveKey( spep_3 -3 + 286, 1, -9.8, 45.4 , 0 );
setMoveKey( spep_3 -3 + 288, 1, 11, 22.1 , 0 );
setMoveKey( spep_3 -3 + 290, 1, 7.5, 29.3 , 0 );
setMoveKey( spep_3 -3 + 292, 1, 24, 4.3 , 0 );
setMoveKey( spep_3 -3 + 294, 1, 6.9, 15.8 , 0 );
setMoveKey( spep_3 -3 + 296, 1, 32.5, 21.3 , 0 );
setMoveKey( spep_3 -3 + 298, 1, 52, 35.9 , 0 );
setMoveKey( spep_3 -3 + 300, 1, 41, 4.8 , 0 );
setMoveKey( spep_3 -3 + 302, 1, 34.9, 38.3 , 0 );
setMoveKey( spep_3 -3 + 304, 1, 37.9, 20 , 0 );
setMoveKey( spep_3 -3 + 306, 1, 37.9, 50.5 , 0 );
setMoveKey( spep_3 -3 + 308, 1, 41, 41.4 , 0 );
setMoveKey( spep_3 -3 + 310, 1, 47.1, 50.5 , 0 );
setMoveKey( spep_3 -3 + 312, 1, 41, 17 , 0 );
setMoveKey( spep_3 -3 + 314, 1, 41, 17 , 0 );
setMoveKey( spep_3 -3 + 316, 1, 44, 26.1 , 0 );
setMoveKey( spep_3 -3 + 318, 1, 53.2, 35.3 , 0 );
setMoveKey( spep_3 -3 + 320, 1, 53.2, 35.3 , 0 );

setScaleKey( spep_3 -3 + 140, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 239, 1, 1.2, 1.2 );--
setScaleKey( spep_3 -3 + 240, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 272, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 274, 1, 2.86, 2.86 );
setScaleKey( spep_3 -3 + 281, 1, 2.86, 2.86 );--
setScaleKey( spep_3 -3 + 282, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 320, 1, 2.6, 2.6 );

setRotateKey( spep_3 -3 + 140, 1, 18 );
setRotateKey( spep_3 -3 + 239, 1, 18 );--
setRotateKey( spep_3 -3 + 240, 1, 5.3 );
setRotateKey( spep_3 -3 + 271, 1, 5.3 );--
setRotateKey( spep_3 -3 + 272, 1, 5.3 );
setRotateKey( spep_3 -3 + 274, 1, 6.7 );
setRotateKey( spep_3 -3 + 276, 1, 8.2 );
setRotateKey( spep_3 -3 + 278, 1, 9.7 );
setRotateKey( spep_3 -3 + 280, 1, 11.1 );
setRotateKey( spep_3 -3 + 281, 1, 11.1 );--
setRotateKey( spep_3 -3 + 282, 1, -24.3 );
setRotateKey( spep_3 -3 + 284, 1, -22.7 );
setRotateKey( spep_3 -3 + 286, 1, -21.1 );
setRotateKey( spep_3 -3 + 288, 1, -19.5 );
setRotateKey( spep_3 -3 + 290, 1, -17.8 );
setRotateKey( spep_3 -3 + 292, 1, -17 );
setRotateKey( spep_3 -3 + 294, 1, -16.2 );
setRotateKey( spep_3 -3 + 296, 1, -15.3 );
setRotateKey( spep_3 -3 + 298, 1, -14.5 );
setRotateKey( spep_3 -3 + 300, 1, -13.6 );
setRotateKey( spep_3 -3 + 320, 1, -13.6 );

-- ** 音 ** --
--赤い気弾出現
SE038 = playSeVer2( spep_3 + 0, 1289, "", 0, 8, 0, -1);
setStartTimeMs( SE038,  517 );
SE039 = playSeVer2( spep_3 + 0, 1221, "", 0, 0, 0, -1);

--気弾発射ベース
SE040 = playSeVer2( spep_3 + 66, 1217, "",spep_3 + 102, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 66, SE040, 58 );
SE041 = playSeVer2( spep_3 + 68, 1109, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_3 + 68, 1357, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 68, SE042, 79 );

--連続気弾
SE043 = playSeVer2( spep_3 + 68, 1016, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_3 + 78, 1016, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_3 + 86, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_3 + 96, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 96, SE046, -400 );
setTimeStretch( SE046, 0.73, 30, 4 );
SE047 = playSeVer2( spep_3 + 106, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 106, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE048 = playSeVer2( spep_3 + 114, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 114, SE048, -400 );
setTimeStretch( SE048, 0.73, 30, 4 );
SE049 = playSeVer2( spep_3 + 122, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 122, SE049, -400 );
setTimeStretch( SE049, 0.73, 30, 4 );
SE050 = playSeVer2( spep_3 + 132, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 132, SE050, 300 );
setTimeStretch( SE050, 1.2, 30, 4 );
SE052 = playSeVer2( spep_3 + 142, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 142, SE052, 300 );
setTimeStretch( SE052, 1.2, 30, 4 );
SE053 = playSeVer2( spep_3 + 150, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 150, SE053, 300 );
setTimeStretch( SE053, 1.2, 30, 4 );
SE054 = playSeVer2( spep_3 + 158, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 158, SE054, 400 );
setTimeStretch( SE054, 1.27, 30, 4 );
SE055 = playSeVer2( spep_3 + 166, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 166, SE055, 400 );
setTimeStretch( SE055, 1.27, 30, 4 );
SE056 = playSeVer2( spep_3 + 174, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 174, SE056, 400 );
setTimeStretch( SE056, 1.27, 30, 4 );
SE057 = playSeVer2( spep_3 + 182, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 182, SE057, 400 );
setTimeStretch( SE057, 1.27, 30, 4 );
SE058 = playSeVer2( spep_3 + 192, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 192, SE058, 400 );
setTimeStretch( SE058, 1.27, 30, 4 );

--気弾発射ベース
SE051 = playSeVer2( spep_3 + 134, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 134, SE051, 60 );
setPitch( spep_3 + 134, SE051, 300 );
setTimeStretch( SE051, 1.2, 30, 4 );

--刃光る
SE059 = playSeVer2( spep_3 + 200, 1374, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 200, SE059, 141 );
setTimeStretch( SE059, 0.63, 30, 4 );

--連続気弾
SE060 = playSeVer2( spep_3 + 200, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 200, SE060, 400 );
setTimeStretch( SE060, 1.27, 30, 4 );
SE061 = playSeVer2( spep_3 + 208, 1016, "", 0, 0, 0, -1);
setPitch( spep_3 + 208, SE061, 400 );
setTimeStretch( SE061, 1.27, 30, 4 );

--敵ヒット
SE062 = playSeVer2( spep_3 + 228, 1226, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_3 + 230, 1159, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_3 + 238, 1024, "", 0, 0, 0, -1);

--地響き
SE065 = playSeVer2( spep_3 + 274, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 394, SE027, 81 );
setSeVolumeByWorkId( spep_3 + 396, SE027, 86 );
setSeVolumeByWorkId( spep_3 + 398, SE027, 91 );
setSeVolumeByWorkId( spep_3 + 400, SE027, 96 );
setSeVolumeByWorkId( spep_3 + 402, SE027, 101 );
setSeVolumeByWorkId( spep_3 + 404, SE027, 106 );
setSeVolumeByWorkId( spep_3 + 406, SE027, 111 );
setSeVolumeByWorkId( spep_3 + 408, SE027, 116 );
setSeVolumeByWorkId( spep_3 + 410, SE027, 121 );
setSeVolumeByWorkId( spep_3 + 412, SE027, 123 );
setSeVolumeByWorkId( spep_3 + 414, SE027, 128 );
setSeVolumeByWorkId( spep_3 + 416, SE027, 133 );
setSeVolumeByWorkId( spep_3 + 418, SE027, 138 );
setSeVolumeByWorkId( spep_3 + 420, SE027, 143 );
setSeVolumeByWorkId( spep_3 + 422, SE027, 148 );
setSeVolumeByWorkId( spep_3 + 424, SE027, 153 );
setSeVolumeByWorkId( spep_3 + 426, SE027, 158 );
setSeVolumeByWorkId( spep_3 + 428, SE027, 163 );
setSeVolumeByWorkId( spep_3 + 430, SE027, 168 );
setSeVolumeByWorkId( spep_3 + 432, SE027, 173 );
setSeVolumeByWorkId( spep_3 + 434, SE027, 178 );
setSeVolumeByWorkId( spep_3 + 436, SE027, 183 );
setSeVolumeByWorkId( spep_3 + 438, SE027, 188 );

--遠く爆発
SE066 = playSeVer2( spep_3 + 324, 1023, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_3 + 330, 1068, "", 0, 0, 0, -1);

--爆風
SE068 = playSeVer2( spep_3 + 384, 1259, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_3 + 388, 1188, "", 0, 16, 0, -1);
setStartTimeMs( SE069,  67 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 466 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 466;


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 346 );
endPhase( spep_3 + 456 );

end