-- 1027110: UR_超サイヤ人ゴッドSS孫悟空&超サイヤ人ゴッドSSベジータ_戦闘民族の怒り_簡易版
-- sp_effect_b1_00259
-- sp2603

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162198;  -- 【簡易版】　冒頭 ef_003
SP_002 = 162199;  -- 【簡易版】　敵に突進～ラスト・手前 ef_004
SP_002b = 162200;  -- 【簡易版】　敵に突進～ラスト・奥 ef_004b

-- 敵側
SP_001r = 162201;  -- 【簡易版】　敵用：冒頭 ef_003r
SP_002r = 162202;  -- 【簡易版】　敵用：敵に突進～ラスト・手前 ef_004r
SP_002br = 162203;  -- 【簡易版】　敵用：敵に突進～ラスト・奥 ef_004br

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001 (122F)
------------------------------------------------------
MAX_FRAME_0 = 122 - 2;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

spep_x = spep_0 + 6;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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
]]

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 122 + 14, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 168 );
SE002 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 122 + 14, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 170 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 16 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 16 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 16 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 16 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 16 );

--ベジータ向かっていく
SE008 = playSeVer2( spep_0 + 88, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 96, 1277, "",spep_0 + 122 + 4, 0, 8, -1);
SE011 = playSeVer2( spep_0 + 96, 1182, "",spep_0 + 122 + 4, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 122

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 敵に突進～ラスト・手前 ef_002 (422F)
------------------------------------------------------
MAX_FRAME_2 = 422;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 58 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 246 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 316 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 334 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 200 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, -2.5, -89.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -2.5, -88.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -2.5, -88 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -2.5, -87.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -2.5, -86.3 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -2.5, -85.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -2.5, -84.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -2.5, -83.8 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -2.5, -82.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -2.5, -82.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -2.5, -81.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -2.5, -80.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -2.5, -79.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -2.5, -78.7 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -2.5, -77.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -2.5, -77 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -2.5, -76.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -2.5, -75.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -2.5, -74.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -2.5, -73.7 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -2.5, -72.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -2.5, -72 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -2.5, -71.1 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -2.6, -70.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -2.6, -69.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -2.6, -68.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -2.6, -67.7 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -2.6, -66.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -2.6, -66.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -2.6, -66.1 , 0 );
--
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 29.2, -14.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 29.2, -14.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 70.7, 18.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 70.7, 18.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 58.3, 51.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 58.3, 51.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 99.8, 22.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 99.8, 22.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 94, 6.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 94, 6.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 106.2, 18.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 106.2, 18.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 95.9, 11.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 95.9, 11.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 112.6, 14 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 112.6, 14 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 111.3, 3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 111.3, 3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 119, 10 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 119, 10 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 117.7, 3.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 117.7, 3.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 125.4, 5.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 125.4, 5.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 128.6, 3.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 128.6, 3.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 122, 39.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 122, 39.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 120.7, 44.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 120.7, 44.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 119.3, 50 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 119.3, 50 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 118, 55.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 118, 55.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 116.6, 60.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 116.6, 60.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 115.3, 65.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 115.3, 65.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 114, 71 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 114, 71 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 112.6, 76.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 112.6, 76.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 111.3, 81.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 111.3, 81.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 110, 86.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 110, 86.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 108.7, 91.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 108.7, 91.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 107.5, 95.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 107.5, 95.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 101.2, 96.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 101.2, 96.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 95.1, 96.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 95.1, 96.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 89, 95.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 89, 95.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 86.2, 113.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 86.2, 113.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 82.8, 125.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 82.8, 125.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 78.8, 132.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 78.8, 132.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 80.3, 145.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 80.3, 145.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 81.5, 155.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 81.5, 155.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 81.6, 158.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 81.6, 158.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 81.7, 161.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 81.7, 161.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 81.8, 163.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 81.8, 163.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 81.9, 166.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 81.9, 166.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 82, 168.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 82, 168.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 82, 171.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 82, 171.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 82.1, 173.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 82.1, 173.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 82.2, 175.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 82.2, 175.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 82.3, 178.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 82.3, 178.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 82.3, 180.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 82.3, 180.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 82.4, 182.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 82.4, 182.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 82.5, 184.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 82.5, 184.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 82.6, 186.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 82.6, 186.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 52.6, -38.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 52.6, -38.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 61.3, -3.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 61.3, -3.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 22.5, 34 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 22.5, 34 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 39.6, 14.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 39.6, 14.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 22.7, 1.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 22.7, 1.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 25.8, 22.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 25.8, 22.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 32, 84.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 32, 84.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 74, 155.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 74, 155.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 93.1, 207.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 93.1, 207.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 100.3, 222.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 100.3, 222.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 93.9, 214.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 93.9, 214.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 105.6, 225.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 105.6, 225.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 94.7, 244.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 94.7, 244.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 110.7, 227.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 110.7, 227.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 108.8, 224.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 108.8, 224.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 115.8, 230.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 115.8, 230.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 109.3, 226.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 109.3, 226.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 120.7, 232 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 120.7, 232 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 123.1, 232.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 123.1, 232.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 125.5, 233.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 125.5, 233.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 127.9, 234.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 127.9, 234.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 130.2, 234.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 130.2, 234.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 132.5, 235 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 132.5, 235 , 0 );
--
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 37, 76 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 37, 76 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 50.7, 178.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 50.7, 178.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 23.9, 292.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 23.9, 292.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 51, 334.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 51, 334.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 42.5, 330.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 42.5, 330.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 51.9, 352.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 51.9, 352.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 34.3, 349.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 34.3, 349.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 52.8, 355.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 52.8, 355.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 48.7, 343.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 48.7, 343.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 53.6, 358.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 53.6, 358.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 45.1, 351.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 45.1, 351.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 54.5, 361.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 54.5, 361.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 41.4, 376.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 41.4, 376.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 55.3, 364.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 55.3, 364.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 46.8, 358.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 46.8, 358.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -494.9, -219.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -494.9, -219.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -455.2, -201.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -455.2, -201.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -402.2, -178.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -402.2, -178.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -335.9, -149.6 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -335.9, -149.6 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -256.4, -114.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -256.4, -114.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -163.7, -74.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -163.7, -74.3 , 0 );
--
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 119.2, 9.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 119.2, 9.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 159.4, 35.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 159.4, 35.4 , 0 );
--
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 333.3, 84.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 333.3, 84.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 347.3, 85 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 347.3, 85 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 379.3, 94.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 379.3, 94.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 397.8, 95.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 397.8, 95.3 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.4, 0.4 );
--
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.05, 2.05 );
--
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.38, 0.38 );
--
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.13, 0.13 );
--
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.03, 0.03 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -85.2 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -85.2 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -87.4 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -87.4 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -88.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -88.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -89.7 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -89.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -90.4 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -90.4 );
--
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -22.2 );
--
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -22.2 );
--
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -22.2 );

-- ** 音 ** --
--ベジータ向かっていく２
SE013 = playSeVer2( spep_1 + 88, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 88, 1183, "",spep_2 + 108, 0, 44, -1);
SE015 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);

--悟空向かっていく
SE016 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 50, 0, 16, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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
-- ** 音 ** --
--ベジータ振りかぶる
SE017 = playSeVer2( spep_2 + 46, 1395, "", 0, 18, 0, -1);
SE018 = playSeVer2( spep_2 + 52, 1181, "",spep_2 + 124, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 52, SE018, 178 );
SE019 = playSeVer2( spep_2 + 52, 1004, "", 0, 0, 0, -1);

--ベジータ振り下ろす
SE020 = playSeVer2( spep_2 + 76, 9, "",spep_2 + 124, 20, 12, -1);
setStartTimeMs( SE020,  33 );
SE021 = playSeVer2( spep_2 + 88, 1116, "",spep_2 + 122, 0, 14, -1);

--パンチ
SE022 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 106, 1110, "", 0, 0, 0, -1);

--パンチ２
SE024 = playSeVer2( spep_2 + 130, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);

--悟空飛び込んでくる
SE026 = playSeVer2( spep_2 + 154, 44, "", 0, 0, 0, -1);

--悟空アッパー
SE027 = playSeVer2( spep_2 + 190, 1189, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 196, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE028, 79 );
SE029 = playSeVer2( spep_2 + 200, 1187, "", 0, 0, 0, -1);

--悟空振りかぶる
SE030 = playSeVer2( spep_2 + 238, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 238, 1116, "",spep_2 + 276, 0, 14, -1);

--蹴り飛ばす
SE032 = playSeVer2( spep_2 + 274, 1120, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 274, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE033, 83 );
SE034 = playSeVer2( spep_2 + 278, 1110, "", 0, 0, 0, -1);

--ビル激突１
SE035 = playSeVer2( spep_2 + 306, 1023, "",spep_2 + 330, 0, 10, -1);
stopSeIfDoubleSpeed( spep_2 + 306, SE035 );
SE036 = playSeVer2( spep_2 + 308, 1061, "",spep_2 + 330, 0, 6, -1);

--ビル激突２
SE037 = playSeVer2( spep_2 + 320, 1024, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 320, 1061, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 318 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 422


else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001 (122F)
------------------------------------------------------
MAX_FRAME_0 = 122 - 2;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

spep_x = spep_0 + 6;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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
]]

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 122 + 14, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 168 );
SE002 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 122 + 14, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 170 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 16 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 16 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 16 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 16 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 16 );

--ベジータ向かっていく
SE008 = playSeVer2( spep_0 + 88, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 96, 1277, "",spep_0 + 122 + 4, 0, 8, -1);
SE011 = playSeVer2( spep_0 + 96, 1182, "",spep_0 + 122 + 4, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 122

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 敵に突進～ラスト・手前 ef_002 (422F)
------------------------------------------------------
MAX_FRAME_2 = 422;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 58 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 246 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 316 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 334 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 0 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 200 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, 2.5, -89.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 2.5, -88.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 2.5, -88 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 2.5, -87.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 2.5, -86.3 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 2.5, -85.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 2.5, -84.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 2.5, -83.8 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 2.5, -82.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 2.5, -82.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 2.5, -81.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 2.5, -80.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 2.5, -79.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 2.5, -78.7 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 2.5, -77.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 2.5, -77 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 2.5, -76.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 2.5, -75.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 2.5, -74.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 2.5, -73.7 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 2.5, -72.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 2.5, -72 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 2.5, -71.1 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 2.6, -70.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 2.6, -69.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 2.6, -68.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 2.6, -67.7 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 2.6, -66.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 2.6, -66.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 2.6, -66.1 , 0 );
--
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 29.2, -14.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 29.2, -14.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 70.7, 18.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 70.7, 18.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 58.3, 51.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 58.3, 51.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 99.8, 22.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 99.8, 22.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 94, 6.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 94, 6.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 106.2, 18.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 106.2, 18.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 95.9, 11.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 95.9, 11.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 112.6, 14 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 112.6, 14 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 111.3, 3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 111.3, 3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 119, 10 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 119, 10 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 117.7, 3.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 117.7, 3.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 125.4, 5.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 125.4, 5.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 128.6, 3.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 128.6, 3.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 122, 39.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 122, 39.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 120.7, 44.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 120.7, 44.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 119.3, 50 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 119.3, 50 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 118, 55.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 118, 55.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 116.6, 60.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 116.6, 60.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 115.3, 65.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 115.3, 65.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 114, 71 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 114, 71 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 112.6, 76.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 112.6, 76.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 111.3, 81.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 111.3, 81.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 110, 86.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 110, 86.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 108.7, 91.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 108.7, 91.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 107.5, 95.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 107.5, 95.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 101.2, 96.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 101.2, 96.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 95.1, 96.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 95.1, 96.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 89, 95.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 89, 95.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 86.2, 113.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 86.2, 113.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 82.8, 125.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 82.8, 125.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 78.8, 132.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 78.8, 132.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 80.3, 145.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 80.3, 145.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 81.5, 155.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 81.5, 155.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 81.6, 158.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 81.6, 158.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 81.7, 161.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 81.7, 161.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 81.8, 163.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 81.8, 163.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 81.9, 166.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 81.9, 166.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 82, 168.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 82, 168.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 82, 171.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 82, 171.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 82.1, 173.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 82.1, 173.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 82.2, 175.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 82.2, 175.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 82.3, 178.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 82.3, 178.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 82.3, 180.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 82.3, 180.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 82.4, 182.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 82.4, 182.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 82.5, 184.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 82.5, 184.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 82.6, 186.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 82.6, 186.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 52.6, -38.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 52.6, -38.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 61.3, -3.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 61.3, -3.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 22.5, 34 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 22.5, 34 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 39.6, 14.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 39.6, 14.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 22.7, 1.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 22.7, 1.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 25.8, 22.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 25.8, 22.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 32, 84.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 32, 84.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 74, 155.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 74, 155.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 93.1, 207.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 93.1, 207.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 100.3, 222.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 100.3, 222.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 93.9, 214.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 93.9, 214.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 105.6, 225.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 105.6, 225.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 94.7, 244.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 94.7, 244.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 110.7, 227.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 110.7, 227.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 108.8, 224.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 108.8, 224.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 115.8, 230.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 115.8, 230.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 109.3, 226.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 109.3, 226.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 120.7, 232 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 120.7, 232 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 123.1, 232.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 123.1, 232.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 125.5, 233.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 125.5, 233.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 127.9, 234.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 127.9, 234.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 130.2, 234.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 130.2, 234.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 132.5, 235 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 132.5, 235 , 0 );
--
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 37, 76 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 37, 76 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 50.7, 178.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 50.7, 178.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 23.9, 292.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 23.9, 292.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 51, 334.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 51, 334.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 42.5, 330.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 42.5, 330.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 51.9, 352.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 51.9, 352.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 34.3, 349.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 34.3, 349.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 52.8, 355.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 52.8, 355.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 48.7, 343.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 48.7, 343.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 53.6, 358.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 53.6, 358.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 45.1, 351.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 45.1, 351.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 54.5, 361.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 54.5, 361.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 41.4, 376.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 41.4, 376.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 55.3, 364.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 55.3, 364.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 46.8, 358.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 46.8, 358.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -494.9, -219.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -494.9, -219.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -455.2, -201.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -455.2, -201.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -402.2, -178.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -402.2, -178.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -335.9, -149.6 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -335.9, -149.6 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -256.4, -114.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -256.4, -114.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -163.7, -74.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -163.7, -74.3 , 0 );
--
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 119.2, 9.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 119.2, 9.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 159.4, 35.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 159.4, 35.4 , 0 );
--
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 333.3, 84.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 333.3, 84.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 347.3, 85 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 347.3, 85 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 379.3, 94.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 379.3, 94.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 397.8, 95.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 397.8, 95.3 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.4, 0.4 );
--
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.05, 2.05 );
--
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.38, 0.38 );
--
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.13, 0.13 );
--
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.03, 0.03 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -48.5 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -85.2 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -85.2 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -87.4 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -87.4 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -88.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -88.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -89.7 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -89.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -90.4 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -90.4 );
--
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -22.2 );
--
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -22.2 );
--
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -22.2 );

-- ** 音 ** --
--ベジータ向かっていく２
SE013 = playSeVer2( spep_1 + 88, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 88, 1183, "",spep_2 + 108, 0, 44, -1);
SE015 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);

--悟空向かっていく
SE016 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 50, 0, 16, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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
-- ** 音 ** --
--ベジータ振りかぶる
SE017 = playSeVer2( spep_2 + 46, 1395, "", 0, 18, 0, -1);
SE018 = playSeVer2( spep_2 + 52, 1181, "",spep_2 + 124, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 52, SE018, 178 );
SE019 = playSeVer2( spep_2 + 52, 1004, "", 0, 0, 0, -1);

--ベジータ振り下ろす
SE020 = playSeVer2( spep_2 + 76, 9, "",spep_2 + 124, 20, 12, -1);
setStartTimeMs( SE020,  33 );
SE021 = playSeVer2( spep_2 + 88, 1116, "",spep_2 + 122, 0, 14, -1);

--パンチ
SE022 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 106, 1110, "", 0, 0, 0, -1);

--パンチ２
SE024 = playSeVer2( spep_2 + 130, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);

--悟空飛び込んでくる
SE026 = playSeVer2( spep_2 + 154, 44, "", 0, 0, 0, -1);

--悟空アッパー
SE027 = playSeVer2( spep_2 + 190, 1189, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 196, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE028, 79 );
SE029 = playSeVer2( spep_2 + 200, 1187, "", 0, 0, 0, -1);

--悟空振りかぶる
SE030 = playSeVer2( spep_2 + 238, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 238, 1116, "",spep_2 + 276, 0, 14, -1);

--蹴り飛ばす
SE032 = playSeVer2( spep_2 + 274, 1120, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 274, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE033, 83 );
SE034 = playSeVer2( spep_2 + 278, 1110, "", 0, 0, 0, -1);

--ビル激突１
SE035 = playSeVer2( spep_2 + 306, 1023, "",spep_2 + 330, 0, 10, -1);
stopSeIfDoubleSpeed( spep_2 + 306, SE035 );
SE036 = playSeVer2( spep_2 + 308, 1061, "",spep_2 + 330, 0, 6, -1);

--ビル激突２
SE037 = playSeVer2( spep_2 + 320, 1024, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 320, 1061, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 318 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 422
end
