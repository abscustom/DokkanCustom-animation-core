-- 1030120: UR_餃子_必殺技：どどん波
-- sp_effect_a3_00111
-- sp2783

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 共通
SP_01 = 163197 --指先構えてドドン波充填 ef_001
SP_02 = 163199 --指先構えてドドン波充填(背景) ef_001_b
SP_03 = 163200 --発射 ef_002
SP_04 = 163201 --発射(背景) ef_002_b

SP_01r = 163198 --指先構えてドドン波充填 ef_001_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 指先構えてドドン波充填 ef_001
------------------------------------------------------
MAX_FRAME_0 = 236;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0);-- 指先構えてドドン波充填 ef_001
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);
base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0);  -- 指先構えてドドン波充填(背景) ef_001_b
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 34;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 120, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 120, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 197, -90.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 197, -90.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 196.7, -90.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 196.7, -90.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 196.5, -91 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 196.5, -91 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 196.3, -91.2 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 196.3, -91.2 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 196.1, -91.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 196.1, -91.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 195.9, -91.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 195.9, -91.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 195.7, -91.8 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 195.7, -91.8 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 195.5, -92 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 195.5, -92 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 195.3, -92.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 195.3, -92.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 195.1, -92.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 195.1, -92.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 194.8, -92.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 194.8, -92.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 194.6, -92.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 194.6, -92.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 194.4, -93.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 194.4, -93.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 194.2, -93.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 194.2, -93.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 194, -93.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 194, -93.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 193.8, -93.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 193.8, -93.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 193.6, -93.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 193.6, -93.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 193.4, -94.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 193.4, -94.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 193.2, -94.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 193.2, -94.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 193, -94.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 193, -94.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 192.7, -94.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 192.7, -94.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 192.5, -95 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 192.5, -95 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 192.3, -95.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 192.3, -95.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 192.1, -95.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 192.1, -95.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 191.9, -95.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 191.9, -95.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 191.7, -95.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 191.7, -95.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 191.5, -96 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 191.5, -96 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 191.3, -96.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 191.3, -96.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 191.1, -96.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 191.1, -96.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 190.9, -96.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 190.9, -96.7 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--指立てる
SE001 = playSeVer2( spep_0 + 0, 1189, "", 0, 0, 0, -1);

--気弾溜め
SE002 = playSeVer2( spep_0 + 12, 1199, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1204, "",spep_0 + 238, 0, 12, -1);
SE004 = playSeVer2( spep_0 + 16, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 146 );
SE005 = playSeVer2( spep_0 + 16, 1154, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1199, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 146, 1199, "",spep_0 + 236, 0, 8, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 10, SE008, 0);
stopSe( SP_dodge - 12, SE00X, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--背景音
SE009 = playSeVer2( spep_0 + 158, 1229, "",spep_0 + 248, 0, 16, -1);

--画面遷移
SE010 = playSeVer2( spep_0 + 166, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE010, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 236

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 78, 1199, "",spep_1 + 156, 0, 18, -1);
SE013 = playSeVer2( spep_1 + 78, 1204, "",spep_1 + 156, 0, 20, -1);

------------------------------------------------------
-- 発射 ef_002
------------------------------------------------------
MAX_FRAME_2 = 286;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  -- 発射 ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0 );
setEffAlphaKey( spep_2 + 0, finish_0f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255 );
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  -- 発射(背景) ef_002_b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0 );
setEffAlphaKey( spep_2 + 0, finish_0b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, 6.2, -15.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 6.2, -15.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 21.4, -15.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 21.4, -15.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 29, -19.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 29, -19.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 82.3, -60.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 82.3, -60.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 79.8, -38.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 79.8, -38.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 126.3, -27.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 126.3, -27.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 126.3, -2.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 126.3, -2.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 179, -6.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 179, -6.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 179, 18.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 179, 18.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 278.2, 34.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 278.2, 34.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 278.2, 59.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 278.2, 59.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 355.7, 55.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 355.7, 55.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 355.7, 80.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 355.7, 80.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 448.7, 95.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 448.7, 95.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 448.7, 121.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 448.7, 121.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 603.7, 132.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 603.7, 132.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 603.7, 152.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 603.7, 152.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 975.7, 212.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 975.7, 212.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 975.7, 236.6 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 7.5 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 36, 1430, "",spep_2 + 158, 0, 14, -1);
SE015 = playSeVer2( spep_2 + 36, 1177, "",spep_2 + 162, 0, 20, -1);
SE016 = playSeVer2( spep_2 + 36, 1178, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_2 + 138, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 186 );
endPhase( spep_2 + MAX_FRAME_2);  -- 286

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 指先構えてドドン波充填 ef_001
------------------------------------------------------
MAX_FRAME_0 = 236;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0);-- 指先構えてドドン波充填 ef_001
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);
base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0);  -- 指先構えてドドン波充填(背景) ef_001_b
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 34;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 120, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 120, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 197, -90.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 197, -90.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 196.7, -90.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 196.7, -90.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 196.5, -91 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 196.5, -91 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 196.3, -91.2 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 196.3, -91.2 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 196.1, -91.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 196.1, -91.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 195.9, -91.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 195.9, -91.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 195.7, -91.8 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 195.7, -91.8 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 195.5, -92 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 195.5, -92 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 195.3, -92.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 195.3, -92.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 195.1, -92.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 195.1, -92.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 194.8, -92.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 194.8, -92.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 194.6, -92.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 194.6, -92.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 194.4, -93.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 194.4, -93.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 194.2, -93.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 194.2, -93.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 194, -93.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 194, -93.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 193.8, -93.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 193.8, -93.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 193.6, -93.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 193.6, -93.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 193.4, -94.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 193.4, -94.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 193.2, -94.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 193.2, -94.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 193, -94.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 193, -94.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 192.7, -94.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 192.7, -94.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 192.5, -95 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 192.5, -95 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 192.3, -95.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 192.3, -95.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 192.1, -95.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 192.1, -95.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 191.9, -95.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 191.9, -95.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 191.7, -95.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 191.7, -95.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 191.5, -96 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 191.5, -96 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 191.3, -96.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 191.3, -96.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 191.1, -96.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 191.1, -96.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 190.9, -96.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 190.9, -96.7 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--指立てる
SE001 = playSeVer2( spep_0 + 0, 1189, "", 0, 0, 0, -1);

--気弾溜め
SE002 = playSeVer2( spep_0 + 12, 1199, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1204, "",spep_0 + 238, 0, 12, -1);
SE004 = playSeVer2( spep_0 + 16, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 146 );
SE005 = playSeVer2( spep_0 + 16, 1154, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1199, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 146, 1199, "",spep_0 + 236, 0, 8, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 10, SE008, 0);
stopSe( SP_dodge - 12, SE00X, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--背景音
SE009 = playSeVer2( spep_0 + 158, 1229, "",spep_0 + 248, 0, 16, -1);

--画面遷移
SE010 = playSeVer2( spep_0 + 166, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE010, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 236

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 78, 1199, "",spep_1 + 156, 0, 18, -1);
SE013 = playSeVer2( spep_1 + 78, 1204, "",spep_1 + 156, 0, 20, -1);

------------------------------------------------------
-- 発射 ef_002
------------------------------------------------------
MAX_FRAME_2 = 286;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  -- 発射 ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0 );
setEffAlphaKey( spep_2 + 0, finish_0f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255 );
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  -- 発射(背景) ef_002_b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0 );
setEffAlphaKey( spep_2 + 0, finish_0b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, -6.2, -15.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -6.2, -15.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -21.4, -15.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -21.4, -15.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -29, -19.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -29, -19.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -82.3, -60.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -82.3, -60.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -79.8, -38.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -79.8, -38.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -126.3, -27.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -126.3, -27.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -126.3, -2.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -126.3, -2.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -179, -6.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -179, -6.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -179, 18.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -179, 18.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -278.2, 34.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -278.2, 34.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -278.2, 59.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -278.2, 59.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -355.7, 55.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -355.7, 55.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -355.7, 80.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -355.7, 80.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -448.7, 95.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -448.7, 95.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -448.7, 121.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -448.7, 121.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -603.7, 132.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -603.7, 132.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -603.7, 152.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -603.7, 152.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -975.7, 212.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -975.7, 212.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -975.7, 236.6 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -7.5 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 36, 1430, "",spep_2 + 158, 0, 14, -1);
SE015 = playSeVer2( spep_2 + 36, 1177, "",spep_2 + 162, 0, 20, -1);
SE016 = playSeVer2( spep_2 + 36, 1178, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_2 + 138, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 186 );
endPhase( spep_2 + MAX_FRAME_2);  -- 286

end
