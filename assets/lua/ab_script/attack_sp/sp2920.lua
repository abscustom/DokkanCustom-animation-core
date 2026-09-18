--1032220:LR_チチ_超必殺技：芭蕉扇
--sp_effect_b4_00404
--sp2920

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164131; --開幕～カットイン ef_001
SP_02  = 164133; --カメラ回り込みながら1振り〜フィニッシュまで ef_002
SP_02b = 164134; --カメラ回り込みながら1振り〜フィニッシュまで ef_002b

--エフェクト(敵)
SP_01r  = 164132; --開幕～カットイン ef_001r
SP_02r  = 164135; --カメラ回り込みながら1振り〜フィニッシュまで ef_002r
SP_02br = 164136; --カメラ回り込みながら1振り〜フィニッシュまで ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕～カットイン(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -52, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -52, 515.5 , 0 );
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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 148, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 4, 1151, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 4, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 65 );
SE004 = playSeVer2( spep_0 + 16, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 74 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--振り上げる
SE007 = playSeVer2( spep_1 + 80, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE007, 74 );


-------------------------------------------------
-- カメラ回り込みながら1振り〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 622;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カメラ回り込みながら1振り〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カメラ回り込みながら1振り〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, 211.8, -381.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 211.8, -381.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 217.8, -375.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 217.8, -375.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 205.8, -387.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 205.8, -387.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 205.8, -375.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 205.8, -375.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 217.8, -387.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 217.8, -387.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 27.5, -102.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 27.5, -102.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 31.9, -98.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 31.9, -98.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 24.3, -106.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 24.3, -106.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 24.6, -99.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 24.6, -99.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 33, -107.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 33, -107.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 33.3, -99.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 33.3, -99.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 25.5, -107.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 25.5, -107.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 25.8, -100.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 25.8, -100.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 34, -108.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 34, -108.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 34.1, -100.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 34.1, -100.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 26.3, -108.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 26.3, -108.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 26.4, -100.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 26.4, -100.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 34.5, -108.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 34.5, -108.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 34.5, -100.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 34.5, -100.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 26.5, -108.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 26.5, -108.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 26.2, -100.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 26.2, -100.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 34, -108.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 34, -108.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 25.9, -108.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 25.9, -108.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 25.9, -100.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 25.9, -100.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 33.9, -108.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 33.9, -108.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 26, -108.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 26, -108.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 26, -100.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 26, -100.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 34.1, -108.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 34.1, -108.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 34.2, -100.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 34.2, -100.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 26.3, -108.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 26.3, -108.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 26.4, -100.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 26.4, -100.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 34.6, -108.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 34.6, -108.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 32.8, -106.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 32.8, -106.7 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 148 + OFFSET_X, 1, 3, 1, 1, 1, 0.25 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_2 + 154 + OFFSET_X, 1, 3, 1, 1, 1, 0.42 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 1, 1, 1, 0.5 );
setBlendColor( spep_2 + 164 + OFFSET_X, 1, 3, 1, 1, 1, 0.52 );
setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 1, 1, 1, 0.48 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 1, 1, 1, 0.50 );
setBlendColor( spep_2 + 180 + OFFSET_X, 1, 3, 1, 1, 1, 0.47 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 1, 1, 1, 0.51 );
setBlendColor( spep_2 + 200 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_2 + 426 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 504 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 468 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 472 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 488 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 426 + OFFSET_X, 1, 189.5, -238.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 189.5, -238.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 179.9, -244.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 179.9, -244.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 177.2, -233.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 177.2, -233.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 181.5, -236.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 181.5, -236.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 176.7, -222.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 176.7, -222.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 162.8, -222.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 162.8, -222.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 155.9, -205.4 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 155.9, -205.4 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 155.9, -202.9 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 155.9, -202.9 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 146.8, -183 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 146.8, -183 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 128.7, -177.8 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 128.7, -177.8 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 117.8, -155.5 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 117.8, -155.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 115.7, -150.3 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 115.7, -150.3 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 106.6, -130.4 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 106.6, -130.4 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 90.6, -128 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 90.6, -128 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 83.7, -110.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 83.7, -110.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 85.8, -111.2 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 85.8, -111.2 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 81.1, -97 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 81.1, -97 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 69.3, -100.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 69.3, -100.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 66.7, -88.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 66.7, -88.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 73.1, -94.5 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 73.1, -94.5 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 72.5, -85.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 72.5, -85.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -5.9, -369.7 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -5.9, -369.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -5.9, -361.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -5.9, -361.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 41.2, -331.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 41.2, -331.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 47.9, -315.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 47.9, -315.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 59.3, -299.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 59.3, -299.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 87.9, -249.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 87.9, -249.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 127.1, -192.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 127.1, -192.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 148.9, -95.3 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 148.9, -95.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 138.4, 8.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 138.4, 8.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 98, 119.8 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 98, 119.8 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 25, 197.4 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 25, 197.4 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -103, 237.5 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -103, 237.5 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -146.4, 211.8 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -146.4, 211.8 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -247.4, 180.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -247.4, 180.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -310.5, 76.7 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -310.5, 76.7 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -266.3, -219.1 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -266.3, -219.1 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 3.3, -223.7 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 3.3, -223.7 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 9.5, -203.5 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 9.5, -203.5 , 0 );

setScaleKey( spep_2 + 426 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 1.27, 1.27 );

setRotateKey( spep_2 + 426 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 473 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 474 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 481 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 485 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, -94.2 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, -94.2 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -101.2 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, -101.2 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -133.8 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, -133.8 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -166.5 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, -166.5 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -250.5 );
setRotateKey( spep_2 + 499 + OFFSET_X, 1, -250.5 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, -334.6 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, -334.6 );

setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 1, 1, 1, 0.37 );
setBlendColor( spep_2 + 480 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_2 + 488 + OFFSET_X, 1, 3, 1, 1, 1, 0.55 );
setBlendColor( spep_2 + 490 + OFFSET_X, 1, 3, 1, 1, 1, 0.59 );
setBlendColor( spep_2 + 494 + OFFSET_X, 1, 3, 1, 1, 1, 0.65 );
setBlendColor( spep_2 + 498 + OFFSET_X, 1, 3, 1, 1, 1, 0.76 );
setBlendColor( spep_2 + 500 + OFFSET_X, 1, 3, 1, 1, 1, 0.85 );
setBlendColor( spep_2 + 504 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--振り上げる
SE008 = playSeVer2( spep_2 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE008, 162 );
SE009 = playSeVer2( spep_2 + 10, 1013, "", 0, 0, 0, -1);

--振り下ろす
SE010 = playSeVer2( spep_2 + 36, 1116, "",spep_2 + 86, 0, 24, -1);
SE011 = playSeVer2( spep_2 + 50, 1004, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 10, SE011, 0);
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
--風起こす
SE012 = playSeVer2( spep_2 + 62, 1258, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 88, 1427, "", 0, 0, 0, -1);

--敵ヒット
SE014 = playSeVer2( spep_2 + 122, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE014, 56 );
setPitch( spep_2 + 122, SE014, 500 );
setTimeStretch( SE014, 1.33, 30, 4 );
SE015 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);

--飛び上がる
SE016 = playSeVer2( spep_2 + 260, 1452, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 260, 1207, "", 0, 0, 0, -1);

--ズーム
SE018 = playSeVer2( spep_2 + 294, 1072, "", 0, 0, 0, -1);

--振り下ろす
SE019 = playSeVer2( spep_2 + 358, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 358, 1116, "",spep_2 + 406, 0, 20, -1);

--芭蕉扇
SE021 = playSeVer2( spep_2 + 372, 1161, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 372, 1258, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 372, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 372, SE023, 79 );
SE024 = playSeVer2( spep_2 + 372, 1027, "", 0, 0, 0, -1);

--敵ヒット2
SE025 = playSeVer2( spep_2 + 460, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE025, 72 );
setPitch( spep_2 + 460, SE025, -1200 );
setTimeStretch( SE025, 0.2, 30, 4 );
SE026 = playSeVer2( spep_2 + 470, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 504); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 622f -4f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 開幕～カットイン(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -52, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -52, 515.5 , 0 );
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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 148, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 4, 1151, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 4, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 65 );
SE004 = playSeVer2( spep_0 + 16, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 74 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--振り上げる
SE007 = playSeVer2( spep_1 + 80, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE007, 74 );


-------------------------------------------------
-- カメラ回り込みながら1振り〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 622;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カメラ回り込みながら1振り〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カメラ回り込みながら1振り〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, 211.8, -381.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 211.8, -381.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 215.8, -377.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 207.8, -385.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 207.8, -377.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 215.8, -385.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 217.8, -375.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 217.8, -375.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 205.8, -387.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 205.8, -387.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 205.8, -375.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 205.8, -375.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 217.8, -387.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 217.8, -387.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 219.8, -373.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 203.8, -389.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 205.8, -373.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 219.8, -389.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 27.5, -102.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 27.5, -102.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 31.9, -98.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 31.9, -98.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 24.3, -106.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 24.3, -106.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 24.6, -99.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 24.6, -99.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 33, -107.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 33, -107.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 33.3, -99.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 33.3, -99.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 25.5, -107.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 25.5, -107.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 25.8, -100.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 25.8, -100.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 34, -108.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 34, -108.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 34.1, -100.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 34.1, -100.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 26.3, -108.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 26.3, -108.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 26.4, -100.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 26.4, -100.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 34.5, -108.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 34.5, -108.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 34.5, -100.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 34.5, -100.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 26.5, -108.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 26.5, -108.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 26.2, -100.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 26.2, -100.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 34, -108.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 34, -108.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 25.9, -108.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 25.9, -108.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 25.9, -100.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 25.9, -100.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 33.9, -108.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 33.9, -108.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 33.9, -100.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 26, -108.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 26, -108.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 26, -100.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 26, -100.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 34.1, -108.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 34.1, -108.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 34.2, -100.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 34.2, -100.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 26.3, -108.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 26.3, -108.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 26.4, -100.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 26.4, -100.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 34.6, -108.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 34.6, -108.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 32.8, -106.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 32.8, -106.7 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 148 + OFFSET_X, 1, 3, 1, 1, 1, 0.25 );
setBlendColor( spep_2 + 150 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_2 + 154 + OFFSET_X, 1, 3, 1, 1, 1, 0.42 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 1, 1, 1, 0.5 );
setBlendColor( spep_2 + 164 + OFFSET_X, 1, 3, 1, 1, 1, 0.52 );
setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 1, 1, 1, 0.48 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 1, 1, 1, 0.50 );
setBlendColor( spep_2 + 180 + OFFSET_X, 1, 3, 1, 1, 1, 0.47 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 1, 1, 1, 0.51 );
setBlendColor( spep_2 + 200 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き2
setDisp( spep_2 + 426 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 504 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 468 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 472 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 488 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 426 + OFFSET_X, 1, 189.5, -238.8 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 189.5, -238.8 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 179.9, -244.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 179.9, -244.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 177.2, -233.2 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 177.2, -233.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 181.5, -236.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 181.5, -236.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 176.7, -222.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 176.7, -222.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 162.8, -222.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 162.8, -222.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 155.9, -205.4 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 155.9, -205.4 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 155.9, -202.9 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 155.9, -202.9 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 146.8, -183 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 146.8, -183 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 128.7, -177.8 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 128.7, -177.8 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 117.8, -155.5 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 117.8, -155.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 115.7, -150.3 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 115.7, -150.3 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 106.6, -130.4 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 106.6, -130.4 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 90.6, -128 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 90.6, -128 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 83.7, -110.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 83.7, -110.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 85.8, -111.2 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 85.8, -111.2 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 81.1, -97 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 81.1, -97 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 69.3, -100.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 69.3, -100.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 66.7, -88.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 66.7, -88.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 73.1, -94.5 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 73.1, -94.5 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 72.5, -85.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 72.5, -85.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -5.9, -369.7 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -5.9, -369.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -5.9, -361.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -5.9, -361.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 41.2, -331.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 41.2, -331.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 47.9, -315.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 47.9, -315.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 59.3, -299.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 59.3, -299.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 87.9, -249.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 87.9, -249.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 127.1, -192.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 127.1, -192.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 148.9, -95.3 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 148.9, -95.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 138.4, 8.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 138.4, 8.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 98, 119.8 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 98, 119.8 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 25, 197.4 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 25, 197.4 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -103, 237.5 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -103, 237.5 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -146.4, 211.8 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -146.4, 211.8 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -247.4, 180.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -247.4, 180.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -310.5, 76.7 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -310.5, 76.7 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -266.3, -219.1 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -266.3, -219.1 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 3.3, -223.7 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 3.3, -223.7 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 9.5, -203.5 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 9.5, -203.5 , 0 );

setScaleKey( spep_2 + 426 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 1.27, 1.27 );

setRotateKey( spep_2 + 426 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 473 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 474 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 477 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 481 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 485 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, -94.2 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, -94.2 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -101.2 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, -101.2 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -133.8 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, -133.8 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -166.5 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, -166.5 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -250.5 );
setRotateKey( spep_2 + 499 + OFFSET_X, 1, -250.5 );
setRotateKey( spep_2 + 500 + OFFSET_X, 1, -334.6 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, -334.6 );

setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 1, 1, 1, 0.37 );
setBlendColor( spep_2 + 480 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_2 + 488 + OFFSET_X, 1, 3, 1, 1, 1, 0.55 );
setBlendColor( spep_2 + 490 + OFFSET_X, 1, 3, 1, 1, 1, 0.59 );
setBlendColor( spep_2 + 494 + OFFSET_X, 1, 3, 1, 1, 1, 0.65 );
setBlendColor( spep_2 + 498 + OFFSET_X, 1, 3, 1, 1, 1, 0.76 );
setBlendColor( spep_2 + 500 + OFFSET_X, 1, 3, 1, 1, 1, 0.85 );
setBlendColor( spep_2 + 504 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--振り上げる
SE008 = playSeVer2( spep_2 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE008, 162 );
SE009 = playSeVer2( spep_2 + 10, 1013, "", 0, 0, 0, -1);

--振り下ろす
SE010 = playSeVer2( spep_2 + 36, 1116, "",spep_2 + 86, 0, 24, -1);
SE011 = playSeVer2( spep_2 + 50, 1004, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 10, SE011, 0);
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
--風起こす
SE012 = playSeVer2( spep_2 + 62, 1258, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 88, 1427, "", 0, 0, 0, -1);

--敵ヒット
SE014 = playSeVer2( spep_2 + 122, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE014, 56 );
setPitch( spep_2 + 122, SE014, 500 );
setTimeStretch( SE014, 1.33, 30, 4 );
SE015 = playSeVer2( spep_2 + 122, 1011, "", 0, 0, 0, -1);

--飛び上がる
SE016 = playSeVer2( spep_2 + 260, 1452, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 260, 1207, "", 0, 0, 0, -1);

--ズーム
SE018 = playSeVer2( spep_2 + 294, 1072, "", 0, 0, 0, -1);

--振り下ろす
SE019 = playSeVer2( spep_2 + 358, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 358, 1116, "",spep_2 + 406, 0, 20, -1);

--芭蕉扇
SE021 = playSeVer2( spep_2 + 372, 1161, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 372, 1258, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 372, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 372, SE023, 79 );
SE024 = playSeVer2( spep_2 + 372, 1027, "", 0, 0, 0, -1);

--敵ヒット2
SE025 = playSeVer2( spep_2 + 460, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE025, 72 );
setPitch( spep_2 + 460, SE025, -1200 );
setTimeStretch( SE025, 0.2, 30, 4 );
SE026 = playSeVer2( spep_2 + 470, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 504); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 622f -4f

end