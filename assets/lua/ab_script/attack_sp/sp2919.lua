--1032220:LR_チチ_必殺技：亀仙流乱舞
--sp_effect_b1_00343
--sp2919

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164176;  --ef_001 構える
SP_02  = 164178;  --ef_002 蹴り飛ばす〜フィニッシュ
SP_02b = 164179;  --ef_002b 蹴り飛ばす〜フィニッシュ

--エフェクト(敵)
SP_01r  = 164177;  --ef_001r 構える
SP_02r  = 164180;  --ef_002r 蹴り飛ばす〜フィニッシュ
SP_02br = 164181;  --ef_002br 蹴り飛ばす〜フィニッシュ


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

ENABLE_AUTO_TIME_STRETCH(0.8);

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構える
-------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構える(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 225, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 225, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 225, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --104f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 蹴り飛ばす〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 450;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 蹴り飛ばす〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 蹴り飛ばす〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 20 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 14 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 671.5, -153.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 643.5, -153.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 643.5, -153.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 615.5, -153.9 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 615.5, -153.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 587.5, -153.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 587.5, -153.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 559.5, -153.9 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 559.5, -153.9 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 531.5, -153.9 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 531.5, -153.9 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 440, -181.3 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 440, -181.3 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 335.7, 65.2 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 335.7, 65.2 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 778.7, 358.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 778.7, 358.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 1460, 1355.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 1460, 1355.6 , 0 );

setScaleKey( spep_2 + 0, 1, 7.78, 7.78 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 7.78, 7.78 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 6.59, 6.62 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 6.59, 6.62 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 9.68, 9.72 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 9.68, 9.72 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -41.6 );

--敵の動き2
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 164 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 104 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 148 + OFFSET_X, 1, 108 );

--敵X座標調整用
a = 40;

setMoveKey( spep_2 + 74 + OFFSET_X, 1, -60, -171.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -60, -171.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -63.6, -165.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -63.6, -165.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 80.3, -101.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 80.3, -101.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 101.3, -160 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 101.3, -160 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 109.9, -143.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 109.9, -143.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 104.9, -143.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 104.9, -143.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -51.4, -139.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -51.4, -139.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -56.6, -171.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -56.6, -171.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -64.6, -171.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -64.6, -171.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -57.7, -177.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -57.7, -177.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 100.8, -192.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 100.8, -192.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 108.2, -225.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 108.2, -225.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 113.9, -215.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 113.9, -215.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 111, -225.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 111, -225.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -34.6, -201.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -34.6, -201.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -52.6, -226.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -52.6, -226.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -55.5, -228.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -55.5, -228.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -44.5, -220.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -44.5, -220.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 125.5, -198.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 125.5, -198.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 143.3, -240.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 143.3, -240.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 142.6, -231.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 142.6, -231.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 146.6, -231.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 146.6, -231.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -37.9, -145.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -37.9, -145.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -50.6, -229.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -50.6, -229.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -56.6, -210.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -56.6, -210.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -48.6, -223.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -48.6, -223.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 126.9, -130.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 126.9, -130.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 126.2, -183.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 126.2, -183.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 131.1, -169.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 131.1, -169.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 131.4, -176.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 131.4, -176.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 177.8, -89.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 177.8, -89.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 177.8, -91.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 177.8, -91.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 177.8, -96.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 177.8, -96.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 177.8, -105 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 177.8, -105 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 177.8, -117 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 177.8, -117 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 148.9 + a, 10.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 148.9 + a, 10.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 119.4 + a, -47.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 119.4 + a, -47.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 133.7 + a, 6.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 133.7 + a, 6.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 141.4 + a, -36.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 141.4 + a, -36.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 220.1 + a, 402.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 220.1 + a, 402.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 248.1, 512.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 248.1, 512.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 253.8, 533.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 253.8, 533.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 253.9, 534 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 253.9, 534 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -52.7 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -52.7 );

--敵の動き3
setDisp( spep_2 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 448 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 192 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 236 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 106 );

--敵Y座標調整用
b = -80;

setMoveKey( spep_2 + 192 + OFFSET_X, 1, -151.2, -141.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -151.2, -141.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -151.7, -141.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -151.7, -141.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -155.6, -141.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -155.6, -141.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -166.3, -141.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -166.3, -141.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -186.9, -141.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -186.9, -141.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -221, -141.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -221, -141.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -271.8, -141.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -271.8, -141.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -342.6, -141.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -342.6, -141.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -437, -141.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -437, -141.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -558.1, -141.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -558.1, -141.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -709.4, -141.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -709.4, -141.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -894.1, -141.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -894.1, -141.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -1115.6, -140.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -1115.6, -140.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -1103.1, -141.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -1103.1, -141.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -1065.5, -143.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -1065.5, -143.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -1002.8, -147.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -1002.8, -147.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -915, -152.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -915, -152.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -802.1, -159.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -802.1, -159.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -664.2, -167.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -664.2, -167.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -501.2, -177.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -501.2, -177.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -313.1, -189 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -313.1, -189 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -100, -201.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -100, -201.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 90.3, -173.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 90.3, -173.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 311.3, -171 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 311.3, -171 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 506.4, -168.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 506.4, -168.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 675.4, -167 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 675.4, -167 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 818.5, -165.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 818.5, -165.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 935.5, -164.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 935.5, -164.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 1026.6, -163.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 1026.6, -163.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 1091.6, -162.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 1091.6, -162.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 1130.6, -162.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 1130.6, -162.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 1143.7, -162 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 1143.7, -162 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 831.3, -147.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 831.3, -147.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 607.5, -137 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 607.5, -137 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 451.9, -129.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 451.9, -129.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 347.5, -124.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 347.5, -124.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 280.5, -121.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 280.5, -121.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 239.8, -119.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 239.8, -119.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 216.8, -118.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 216.8, -118.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 204.9, -118.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 204.9, -118.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 199.6, -118.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 199.6, -118.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 197.6, -118 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 197.6, -118 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 197, -118 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 197, -118 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 196.9, -118 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 196.9, -118 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 204.1, -221.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 204.1, -221.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 221.1, -248.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 221.1, -248.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 256.4, -265.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 256.4, -265.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 202, -236.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 202, -236.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 194.5, -233.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 194.5, -233.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 241, -235.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 241, -235.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 204.1, -243.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 204.1, -243.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 251.1, -241.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 251.1, -241.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 178.2, -268.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 178.2, -268.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 210.2, -199.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 210.2, -199.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 253.1, -267.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 253.1, -267.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 222.3, -268.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 222.3, -268.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 202.9, -241.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 202.9, -241.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 216.4, -222.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 216.4, -222.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 237.1, -267.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 237.1, -267.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 221.5, -226.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 221.5, -226.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 196.5, -280.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 196.5, -280.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 246.5, -213.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 246.5, -213.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 189.1, -248.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 189.1, -248.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 246.7, -275.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 246.7, -275.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 183.2, -214.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 183.2, -214.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 223.7, -255.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 223.7, -255.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 25, -32.1 + b, 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 25, -32.1 + b, 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 8.9, -48.1 + b, 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 8.9, -48.1 + b, 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 10.9, -104.1 + b, 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 10.9, -104.1 + b, 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 29, -101.1 + b, 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 29, -101.1 + b, 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 25, -144.1 + b, 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 25, -144.1 + b, 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 8.9, -160.1 + b, 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 8.9, -160.1 + b, 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 10.9, -216.1 + b, 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 10.9, -216.1 + b, 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 25, -228.1 + b, 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 25, -228.1 + b, 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 36.1, -69.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 36.1, -69.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 25.1, -115.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 25.1, -115.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 23.1, -82.2 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 23.1, -82.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 32.1, -122.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 32.1, -122.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 31.1, -78.2 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 31.1, -78.2 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 26.1, -99.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 26.1, -99.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 31.1, -99.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 31.1, -99.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 30.1, -78.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 30.1, -78.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 26.1, -91.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 26.1, -91.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 29.1, -83.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 29.1, -83.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 29.1, -82.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 29.1, -82.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 29.1, -81.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 29.1, -81.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 29.1, -79.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 29.1, -79.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 29.1, -79.2 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 29.1, -79.2 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 29.1, -78.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 29.1, -78.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 29.1, -78.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 29.1, -78.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 29.1, -77.7 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 29.1, -77.7 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 29.1, -77.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 29.1, -77.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 29.1, -77.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 29.1, -77.2 , 0 );

setScaleKey( spep_2 + 192 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 8.02, 8.02 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 8.02, 8.02 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 8.51, 8.51 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 8.51, 8.51 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 8.55, 8.55 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 8.55, 8.55 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.64, 1.46 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.64, 1.46 );

setRotateKey( spep_2 + 192 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 7.7 );

setBlendColor( spep_2 + 288 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 291 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

setGaussBlurKey( spep_2 + 332 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 347 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 348 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 448 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--蹴り飛ばす
SE004 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 6, 1010, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 6, 1110, "", 0, 0, 0, -1);

--着地
SE007 = playSeVer2( spep_2 + 32, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE007, 71 );
SE008 = playSeVer2( spep_2 + 34, 1192, "",spep_2 + 64, 0, 12, -1);

--向かっていく
SE009 = playSeVer2( spep_2 + 52, 1117, "", 0, 0, 0, -1);

--連続パンチ
SE010 = playSeVer2( spep_2 + 68, 1425, "",spep_2 + 140, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 68, SE010, 89 );
SE012 = playSeVer2( spep_2 + 124, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE012, 76 );

--回り込む
SE011 = playSeVer2( spep_2 + 178, 1278, "",spep_2 + 296, 20, 44, -1);
setStartTimeMs( SE011,  967 );
SE016 = playSeVer2( spep_2 + 198, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE016, 52 );
setTimeStretch( SE016, 1.24, 30, 4 );

--膝蹴り
SE013 = playSeVer2( spep_2 + 134, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 142, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE015 = playSeVer2( spep_2 + 174, 1207, "",spep_2 + 238, 0, 42, -1);

--両足蹴り
SE017 = playSeVer2( spep_2 + 264, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE017, 162 );
SE018 = playSeVer2( spep_2 + 274, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 274, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE019, 79 );

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 292, 1121, "",spep_2 + 370, 0, 32, -1);

--地面激突
SE021 = playSeVer2( spep_2 + 334, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 360 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  450f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 構える
-------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 構える(ef_001r)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -225, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -225, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -225, 515.5 , 0 );
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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --104f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 蹴り飛ばす〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 450;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 蹴り飛ばす〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 蹴り飛ばす〜フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 20 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 14 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 671.5, -153.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 643.5, -153.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 643.5, -153.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 615.5, -153.9 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 615.5, -153.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 587.5, -153.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 587.5, -153.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 559.5, -153.9 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 559.5, -153.9 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 531.5, -153.9 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 531.5, -153.9 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 440, -181.3 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 440, -181.3 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 335.7, 65.2 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 335.7, 65.2 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 778.7, 358.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 778.7, 358.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 1460, 1355.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 1460, 1355.6 , 0 );

setScaleKey( spep_2 + 0, 1, 7.78, 7.78 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 7.78, 7.78 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 6.59, 6.62 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 6.59, 6.62 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 9.68, 9.72 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 9.68, 9.72 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -67.5 );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -41.6 );

--敵の動き2
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 164 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 104 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 148 + OFFSET_X, 1, 108 );

--敵X座標調整用
a = 40;

setMoveKey( spep_2 + 74 + OFFSET_X, 1, -60, -171.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -60, -171.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -63.6, -165.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -63.6, -165.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 80.3, -101.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 80.3, -101.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 101.3, -160 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 101.3, -160 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 109.9, -143.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 109.9, -143.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 104.9, -143.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 104.9, -143.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -51.4, -139.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -51.4, -139.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -56.6, -171.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -56.6, -171.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -64.6, -171.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -64.6, -171.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -57.7, -177.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -57.7, -177.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 100.8, -192.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 100.8, -192.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 108.2, -225.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 108.2, -225.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 113.9, -215.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 113.9, -215.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 111, -225.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 111, -225.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -34.6, -201.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -34.6, -201.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -52.6, -226.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -52.6, -226.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -55.5, -228.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -55.5, -228.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -44.5, -220.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -44.5, -220.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 125.5, -198.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 125.5, -198.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 143.3, -240.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 143.3, -240.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 142.6, -231.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 142.6, -231.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 146.6, -231.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 146.6, -231.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -37.9, -145.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -37.9, -145.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -50.6, -229.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -50.6, -229.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -56.6, -210.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -56.6, -210.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -48.6, -223.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -48.6, -223.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 126.9, -130.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 126.9, -130.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 126.2, -183.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 126.2, -183.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 131.1, -169.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 131.1, -169.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 131.4, -176.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 131.4, -176.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 177.8, -89.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 177.8, -89.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 177.8, -91.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 177.8, -91.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 177.8, -96.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 177.8, -96.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 177.8, -105 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 177.8, -105 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 177.8, -117 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 177.8, -117 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 148.9 + a, 10.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 148.9 + a, 10.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 119.4 + a, -47.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 119.4 + a, -47.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 133.7 + a, 6.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 133.7 + a, 6.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 141.4 + a, -36.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 141.4 + a, -36.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 220.1 + a, 402.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 220.1 + a, 402.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 248.1, 512.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 248.1, 512.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 253.8, 533.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 253.8, 533.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 253.9, 534 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 253.9, 534 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -52.7 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -52.7 );

--敵の動き3
setDisp( spep_2 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 448 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 192 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 236 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 106 );

--敵Y座標調整用
b = -80;

setMoveKey( spep_2 + 192 + OFFSET_X, 1, -151.2, -141.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -151.2, -141.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -151.7, -141.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -151.7, -141.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -155.6, -141.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -155.6, -141.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -166.3, -141.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -166.3, -141.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -186.9, -141.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -186.9, -141.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -221, -141.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -221, -141.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -271.8, -141.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -271.8, -141.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -342.6, -141.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -342.6, -141.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -437, -141.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -437, -141.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -558.1, -141.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -558.1, -141.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -709.4, -141.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -709.4, -141.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -894.1, -141.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -894.1, -141.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -1115.6, -140.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -1115.6, -140.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -1103.1, -141.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -1103.1, -141.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -1065.5, -143.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -1065.5, -143.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -1002.8, -147.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -1002.8, -147.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -915, -152.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -915, -152.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -802.1, -159.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -802.1, -159.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -664.2, -167.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -664.2, -167.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -501.2, -177.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -501.2, -177.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -313.1, -189 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -313.1, -189 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -100, -201.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -100, -201.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 90.3, -173.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 90.3, -173.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 311.3, -171 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 311.3, -171 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 506.4, -168.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 506.4, -168.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 675.4, -167 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 675.4, -167 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 818.5, -165.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 818.5, -165.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 935.5, -164.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 935.5, -164.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 1026.6, -163.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 1026.6, -163.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 1091.6, -162.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 1091.6, -162.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 1130.6, -162.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 1130.6, -162.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 1143.7, -162 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 1143.7, -162 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 831.3, -147.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 831.3, -147.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 607.5, -137 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 607.5, -137 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 451.9, -129.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 451.9, -129.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 347.5, -124.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 347.5, -124.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 280.5, -121.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 280.5, -121.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 239.8, -119.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 239.8, -119.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 216.8, -118.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 216.8, -118.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 204.9, -118.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 204.9, -118.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 199.6, -118.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 199.6, -118.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 197.6, -118 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 197.6, -118 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 197, -118 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 197, -118 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 196.9, -118 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 196.9, -118 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 204.1, -221.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 204.1, -221.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 217.1, -242.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 221.1, -248.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 221.1, -248.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 256.4, -265.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 256.4, -265.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 202, -236.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 202, -236.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 194.5, -233.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 194.5, -233.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 241, -235.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 241, -235.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 204.1, -243.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 204.1, -243.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 251.1, -241.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 251.1, -241.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 178.2, -268.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 178.2, -268.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 210.2, -199.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 210.2, -199.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 253.1, -267.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 253.1, -267.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 222.3, -268.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 222.3, -268.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 202.9, -241.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 202.9, -241.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 216.4, -222.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 216.4, -222.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 237.1, -267.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 237.1, -267.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 221.5, -226.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 221.5, -226.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 196.5, -280.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 196.5, -280.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 246.5, -213.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 246.5, -213.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 189.1, -248.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 189.1, -248.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 246.7, -275.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 246.7, -275.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 183.2, -214.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 183.2, -214.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 223.7, -255.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 223.7, -255.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 25, -32.1 + b, 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 25, -32.1 + b, 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 8.9, -48.1 + b, 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 8.9, -48.1 + b, 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 10.9, -104.1 + b, 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 10.9, -104.1 + b, 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 29, -101.1 + b, 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 29, -101.1 + b, 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 25, -144.1 + b, 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 25, -144.1 + b, 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 8.9, -160.1 + b, 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 8.9, -160.1 + b, 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 10.9, -216.1 + b, 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 10.9, -216.1 + b, 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 25, -228.1 + b, 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 25, -228.1 + b, 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 36.1, -69.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 36.1, -69.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 25.1, -115.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 25.1, -115.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 23.1, -82.2 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 23.1, -82.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 32.1, -122.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 32.1, -122.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 31.1, -78.2 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 31.1, -78.2 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 26.1, -99.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 26.1, -99.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 31.1, -99.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 31.1, -99.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 30.1, -78.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 30.1, -78.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 26.1, -91.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 26.1, -91.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 29.1, -83.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 29.1, -83.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 29.1, -82.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 29.1, -82.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 29.1, -81.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 29.1, -81.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 29.1, -80.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 29.1, -79.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 29.1, -79.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 29.1, -79.2 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 29.1, -79.2 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 29.1, -78.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 29.1, -78.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 29.1, -78.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 29.1, -78.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 29.1, -77.7 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 29.1, -77.7 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 29.1, -77.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 29.1, -77.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 29.1, -77.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 29.1, -77.2 , 0 );

setScaleKey( spep_2 + 192 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 6.59, 6.59 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 6.37, 6.37 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 6.05, 6.05 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 8.02, 8.02 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 8.02, 8.02 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 8.25, 8.25 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 8.51, 8.51 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 8.51, 8.51 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 8.55, 8.55 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 8.55, 8.55 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.64, 1.46 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.64, 1.46 );

setRotateKey( spep_2 + 192 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 7.7 );

setBlendColor( spep_2 + 288 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 291 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

setGaussBlurKey( spep_2 + 332 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 347 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 348 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 448 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--蹴り飛ばす
SE004 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 6, 1010, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 6, 1110, "", 0, 0, 0, -1);

--着地
SE007 = playSeVer2( spep_2 + 32, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE007, 71 );
SE008 = playSeVer2( spep_2 + 34, 1192, "",spep_2 + 64, 0, 12, -1);

--向かっていく
SE009 = playSeVer2( spep_2 + 52, 1117, "", 0, 0, 0, -1);

--連続パンチ
SE010 = playSeVer2( spep_2 + 68, 1425, "",spep_2 + 140, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 68, SE010, 89 );
SE012 = playSeVer2( spep_2 + 124, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE012, 76 );

--回り込む
SE011 = playSeVer2( spep_2 + 178, 1278, "",spep_2 + 296, 20, 44, -1);
setStartTimeMs( SE011,  967 );
SE016 = playSeVer2( spep_2 + 198, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE016, 52 );
setTimeStretch( SE016, 1.24, 30, 4 );

--膝蹴り
SE013 = playSeVer2( spep_2 + 134, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 142, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE015 = playSeVer2( spep_2 + 174, 1207, "",spep_2 + 238, 0, 42, -1);

--両足蹴り
SE017 = playSeVer2( spep_2 + 264, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE017, 162 );
SE018 = playSeVer2( spep_2 + 274, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 274, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE019, 79 );

--敵飛んでいく
SE020 = playSeVer2( spep_2 + 292, 1121, "",spep_2 + 370, 0, 32, -1);

--地面激突
SE021 = playSeVer2( spep_2 + 334, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 360 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  450f -4


end
