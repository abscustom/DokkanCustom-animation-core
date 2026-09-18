--4028030:LR_超サイヤ人ブロリー(フルパワー)_必殺技：アウェイキングテンペスト
--sp_effect_a3_00109
--sp2657

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162591;  --ef_001   バストアップで力む→壁を突き破る
SP_01b = 162592;  --ef_001_b バストアップで力む→壁を突き破る
SP_02  = 162593;  --ef_002   口ビーム
SP_03  = 162594;  --ef_003   フィニッシュ
SP_03b = 162595;  --ef_003_b フィニッシュ


--エフェクト(敵)
SP_01r  = 162598;  --ef_001   バストアップで力む→壁を突き破る
SP_01br = 162599;  --ef_001_b バストアップで力む→壁を突き破る
SP_02r  = 162600;  --ef_002   口ビーム
SP_03r  = 162601;  --ef_003   フィニッシュ
SP_03br = 162602;  --ef_003_b フィニッシュ


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]--

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

if (_IS_PLAYER_SIDE_ == 1) then

   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_2 = 2 + 742 + 94;

        skipFrame(0, spep_2 + 4);  -- スキップ先フレーム指定

        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --のけぞりながら気弾溜める
        SE050 = playSeVer2( spep_2 + 4 + 3, 1226, "",spep_2 + 72, 0, 24, -1);
        SE051 = playSeVer2( spep_2 + 4 + 3, 1116, "",spep_2 + 40, 0, 22, -1);
        setSeVolumeByWorkId( spep_2 + 4 + 3, SE051, 74 );
        SE052 = playSeVer2( spep_2 + 10 + 3, 1153, "", 0, 12, 0, -1);
        setStartTimeMs( SE052,  0 );
        
    else

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- バストアップで力む→壁を突き破る
-------------------------------------------------
MAX_FRAME_0 = 742;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- バストアップで力む→壁を突き破る(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- バストアップで力む→壁を突き破る(ef_001_b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 86 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 86 + OFFSET_X, 1, 284.1, -26.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 284.1, -26.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 196, -28.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 196, -28.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 198.3, -28.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 198.3, -28.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 200.6, -27.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 200.6, -27.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 202.9, -27.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 202.9, -27.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 205.2, -27 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 205.2, -27 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 207.5, -26.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 207.5, -26.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 209.8, -26.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 209.8, -26.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 212, -25.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 212, -25.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 214.3, -25.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 214.3, -25.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 216.6, -24.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 216.6, -24.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 218.9, -24.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 218.9, -24.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 221.2, -24 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 221.2, -24 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 223.5, -23.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 223.5, -23.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 225.8, -23.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 225.8, -23.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 228.1, -22.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 228.1, -22.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 228, -30.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 228, -30.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 228, -17.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 228, -17.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 219.9, -34.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 219.9, -34.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 218.6, -15.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 218.6, -15.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 213.2, -29.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 213.2, -29.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 215.9, -13.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 215.9, -13.2 , 0 );

setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.59, 0.53 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.59, 0.53 );

setRotateKey( spep_0 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -7.2 );

--敵の動き2
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 304 + OFFSET_X, 1, 109 );
changeAnime( spep_0 + 318 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 378 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 466 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 516 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 520 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, 262.7, 242.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 262.7, 242.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 263, 244.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 263, 244.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 278.2, 313.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 278.2, 313.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 256.9, 326.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 256.9, 326.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 265.4, 366.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 265.4, 366.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 275.1, 426.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 275.1, 426.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 269, 406.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 269, 406.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 264.3, 428.8 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 264.3, 428.8 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 306.8, 410.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 306.8, 410.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 306.1, 410.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 306.1, 410.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 309.5, 420.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 309.5, 420.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -335.4, -374.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -335.4, -374.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -247.8, -266.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -247.8, -266.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -179.6, -182.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -179.6, -182.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -127.6, -118.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -127.6, -118.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -89.1, -71.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -89.1, -71.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -61.5, -37.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -61.5, -37.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -42.6, -13.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -42.6, -13.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -30.2, 1.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -30.2, 1.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -22.7, 10.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -22.7, 10.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -18.5, 15.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -18.5, 15.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -16.6, 18.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -16.6, 18.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -15.9, 19.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -15.9, 19.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -15.7, 19.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -15.7, 19.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -10.2, 18.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -10.2, 18.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -4.6, 18.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -4.6, 18.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 0.9, 17.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 0.9, 17.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 6.5, 17.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 6.5, 17.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 36.3, -12.7 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 36.3, -12.7 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 16.3, -44.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 16.3, -44.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 140.7, -112.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 140.7, -112.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 136.9, -139.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 136.9, -139.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 163.5, -92.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 163.5, -92.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 140.2, -106.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 140.2, -106.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 113.4, 67.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 113.4, 67.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 97.4, 37.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 97.4, 37.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 591.6, 208.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 591.6, 208.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 568, 270.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 568, 270.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 516, 226.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 516, 226.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 497.9, 186.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 497.9, 186.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 434, 182.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 434, 182.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 300, 148.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 300, 148.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 99.8, 76.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 99.8, 76.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 110.6, 64.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 110.6, 64.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 266.7, -118.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 266.7, -118.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 266, -89.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 266, -89.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 274.8, -110.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 274.8, -110.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 292.2, -61 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 292.2, -61 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 288.8, -60.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 288.8, -60.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 281.5, -50.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 281.5, -50.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 279.5, -83.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 279.5, -83.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 277.5, -77 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 277.5, -77 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 276.8, -77.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 276.8, -77.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 278.9, -74.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 278.9, -74.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 280.6, -69.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 280.6, -69.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 289.4, -74.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 289.4, -74.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 299.4, -24.3 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 299.4, -24.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 292, -18.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 292, -18.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 314, 47 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 314, 47 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 314.7, 46.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 314.7, 46.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 318.1, 59.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 318.1, 59.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 319.4, 67.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 319.4, 67.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 114.8, -88 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 114.8, -88 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 114.2, -87.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 114.2, -87.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 114.2, -67.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 114.2, -67.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 114.3, -67.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 114.3, -67.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 129.3, -120.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 129.3, -120.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 94.2, -84.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 94.2, -84.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 104.3, -102.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 104.3, -102.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 100.4, -82.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 100.4, -82.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 72.4, -55 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 72.4, -55 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 69.7, -49.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 69.7, -49.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 63.7, -48.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 63.7, -48.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 63.7, -41 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 63.7, -41 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 55.7, -41 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 55.7, -41 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 55.7, -34.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 55.7, -34.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 53.7, -41 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 53.7, -41 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 55, -39.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 55, -39.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 45.1, -25.6 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 45.1, -25.6 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 67.1, -13.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 67.1, -13.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 111.1, 3.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 111.1, 3.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 196.1, 0.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 196.1, 0.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 290.9, -1.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 290.9, -1.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 332.6, -12.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 332.6, -12.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 352.6, -14.2 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 352.6, -14.2 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 346.4, -22 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 346.4, -22 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 320.2, -25.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 320.2, -25.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 293.2, -16.6 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 293.2, -16.6 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 238.1, -12.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 238.1, -12.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 175.1, -16.5 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 175.1, -16.5 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 112, -25.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 112, -25.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 35.8, -46.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 35.8, -46.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -32.8, -68.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -32.8, -68.3 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -88, -87.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -88, -87.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -140.5, -110.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -140.5, -110.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -233.5, -160.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -233.5, -160.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -63.3, -42.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -63.3, -42.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -43, -27.3 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -43, -27.3 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -53.2, -39.4 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -53.2, -39.4 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -68.5, -51.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -68.5, -51.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -59.8, -28.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -59.8, -28.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -58.4, -40.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -58.4, -40.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -58.4, -29.8 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -58.4, -29.8 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -44.9, -35.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -44.9, -35.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -54.4, -39.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -54.4, -39.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -54.4, -35.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -54.4, -35.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -54.4, -31.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -54.4, -31.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -54.4, -33.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -54.4, -33.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -60.3, -37.8 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -60.3, -37.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -62.2, -40.4 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -62.2, -40.4 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -62.7, -40.3 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -62.7, -40.3 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -68.7, -42.9 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -68.7, -42.9 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -66.5, -45.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -66.5, -45.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -67, -45.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -67, -45.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -63.5, -45.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -63.5, -45.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -64.1, -45.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -64.1, -45.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -75.4, -41 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -75.4, -41 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -57.8, -40.5 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -57.8, -40.5 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -33.8, -21.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -33.8, -21.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -67.3, -55.7 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -67.3, -55.7 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -40.3, -39.5 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -40.3, -39.5 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.82, 0.82 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 70.9 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 70.9 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -89.5 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -89.5 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -35.6 );

--敵の動き3
setDisp( spep_0 + 566 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 644 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 566 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 566 + OFFSET_X, 1, 26.5, -80.5 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 26.5, -80.5 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 26.5, -76.5 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 26.5, -76.5 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 49.4, -66.7 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 49.4, -66.7 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 62.8, -59.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 62.8, -59.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 57.4, -65.3 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 57.4, -65.3 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 62.8, -61.3 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 62.8, -61.3 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 69.5, -57.9 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 69.5, -57.9 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 70.8, -55.2 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 70.8, -55.2 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 204.4, -970.3 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 204.4, -970.3 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 211.3, -967.6 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 211.3, -967.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 211.3, -970.3 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 211.3, -970.3 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 214.1, -978.5 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 214.1, -978.5 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 214.1, -982.7 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 214.1, -982.7 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 214.1, -995.1 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 214.1, -995.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 214.1, -1006.5 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 214.1, -1006.5 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 214.1, -1007 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 214.1, -1007 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 180.6, -1026.9 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 180.6, -1026.9 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 180.6, -1027.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 180.6, -1027.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 162.4, -1032 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 162.4, -1032 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 162.4, -1032.4 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 162.4, -1032.4 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 162.4, -1032.9 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 162.4, -1032.9 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 148.5, -1033.3 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 148.5, -1033.3 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 148.5, -1033.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 148.5, -1033.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 148.5, -1034.2 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 148.5, -1034.2 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 140.2, -1026.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 140.2, -1026.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 140.2, -1026.9 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 140.2, -1026.9 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 140.2, -1036.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 140.2, -1036.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 169.6, -1066 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 169.6, -1066 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 166.9, -1089 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 166.9, -1089 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 291.7, -1564.6 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 291.7, -1564.6 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 291.7, -1557.8 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 291.7, -1557.8 , 0 );

setScaleKey( spep_0 + 566 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 10.31, 10.31 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 10.31, 10.31 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 12.69, 12.69 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 12.69, 12.69 );

setRotateKey( spep_0 + 566 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 24 );

--敵の動き4
setDisp( spep_0 + 684 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 700 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 684 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 684 + OFFSET_X, 1, 37.5, -426.8 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 37.5, -426.8 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 83.3, -170.8 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 83.3, -170.8 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 179.7, 241.2 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 179.7, 241.2 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 213.8, 511.3 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 213.8, 511.3 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 219.2, 500.5 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 219.2, 500.5 , 0 );

setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_0 + 684 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 685 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 686 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_0 + 689 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_0 + 690 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 693 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, -74.7 );

--敵の動き5
setDisp( spep_0 + 706 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 745 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 706 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 706 + OFFSET_X, 1, 310.3, 451.6 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 310.3, 451.6 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 162, 245.5 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 162, 245.5 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 159, 221.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 159, 221.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 156.1, 198 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 156.1, 198 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 153.4, 176.3 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 153.4, 176.3 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 150.9, 156 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 150.9, 156 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 148.5, 137.1 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 148.5, 137.1 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 146.3, 119.6 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 146.3, 119.6 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 144.3, 103.6 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 144.3, 103.6 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 142.5, 88.9 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 142.5, 88.9 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 140.8, 75.6 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 140.8, 75.6 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 139.4, 63.7 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 139.4, 63.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 138, 53.2 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 138, 53.2 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 136.9, 44.1 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 136.9, 44.1 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 135.9, 36.4 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 135.9, 36.4 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 135.2, 30.1 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 135.2, 30.1 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 134.5, 25.2 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 134.5, 25.2 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 134.1, 21.7 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 134.1, 21.7 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 133.8, 19.6 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 133.8, 19.6 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 133.8, 18.9 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 133.8, 18.9 , 0 );

setScaleKey( spep_0 + 706 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 706 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_0 + 707 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_0 + 708 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 709 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 710 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 711 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 712 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 713 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 714 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_0 + 715 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_0 + 716 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_0 + 717 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_0 + 718 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 719 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 720 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_0 + 723 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_0 + 725 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_0 + 726 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_0 + 727 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 729 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 730 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_0 + 733 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_0 + 741 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_0 + 742 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 745 + OFFSET_X, 1, 52.6 );

-- ** 音 ** --
--オーラベース
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 218, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 218, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 76 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 62 );

--オーラ
SE005 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 14 );
setPitch( spep_0 + 62, SE005, 200 );
setTimeStretch( SE005, 1.13, 30, 4 );
SE006 = playSeVer2( spep_0 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE006, 17 );
setPitch( spep_0 + 80, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );
SE007 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 32 );
setPitch( spep_0 + 98, SE007, 200 );
setTimeStretch( SE007, 1.13, 30, 4 );
SE008 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE008, 32 );
setPitch( spep_0 + 116, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );
SE009 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 32 );
setPitch( spep_0 + 134, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--オーラ
SE011 = playSeVer2( spep_0 + 152, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE011, 32 );
setPitch( spep_0 + 152, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );
SE015 = playSeVer2( spep_0 + 170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE015, 32 );
setPitch( spep_0 + 170, SE015, 200 );
setTimeStretch( SE015, 1.13, 30, 4 );

--気弾吐く
SE010 = playSeVer2( spep_0 + 160, 1302, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE010, 65 );
setStartTimeMs( SE010,  133 );
setBandpassFilter( spep_0 + 160, SE010, 24, 5730 );
SE012 = playSeVer2( spep_0 + 160, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012, 72 );
SE013 = playSeVer2( spep_0 + 160, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE013, 84 );
SE014 = playSeVer2( spep_0 + 160, 1402, "", 0, 0, 0, -1);

--爆発
SE016 = playSeVer2( spep_0 + 172, 1014, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 178, 1023, "", 0, 0, 0, -1);

--向かっていく
SE018 = playSeVer2( spep_0 + 214, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 218, 1277, "", 0, 0, 0, -1);

--パンチ
SE020 = playSeVer2( spep_0 + 252, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE020, 86 );
SE021 = playSeVer2( spep_0 + 252, 1414, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 256, 1187, "",spep_0 + 360, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 256, SE023, 80 );

--パンチ溜める
SE022 = playSeVer2( spep_0 + 280, 1274, "",spep_0 + 336, 6, 14, -1);
setSeVolumeByWorkId( spep_0 + 280, SE022, 112 );
setStartTimeMs( SE022,  433 );
setPitch( spep_0 + 280, SE022, 400 );
setTimeStretch( SE022, 1.27, 30, 4 );
SE024 = playSeVer2( spep_0 + 282, 1037, "",spep_0 + 332, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 282, SE024, 82 );

--腹パン
SE025 = playSeVer2( spep_0 + 316, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE025, 78 );
SE026 = playSeVer2( spep_0 + 316, 1414, "",spep_0 + 358, 0, 10, -1);
SE027 = playSeVer2( spep_0 + 320, 1187, "",spep_0 + 420, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 320, SE027, 81 );
SE028 = playSeVer2( spep_0 + 326, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE029 = playSeVer2( spep_0 + 356, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE030 = playSeVer2( spep_0 + 366, 1123, "",spep_0 + 466, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 366, SE030, 67 );
SE031 = playSeVer2( spep_0 + 372, 1187, "",spep_0 + 468, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 372, SE031, 85 );
SE032 = playSeVer2( spep_0 + 372, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE033 = playSeVer2( spep_0 + 392, 1183, "",spep_0 + 482, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 392, SE033, 124 );
SE034 = playSeVer2( spep_0 + 392, 1278, "",spep_0 + 480, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 392, SE034, 60 );
SE035 = playSeVer2( spep_0 + 392, 1410, "",spep_0 + 546, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 392, SE035, 257 );

--壁に当たる
SE036 = playSeVer2( spep_0 + 460, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE036, 81 );
SE037 = playSeVer2( spep_0 + 460, 1033, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 460, 1135, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 460, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE039, 74 );

--壁爆発
SE040 = playSeVer2( spep_0 + 514, 1384, "",spep_0 + 668, 0, 96, -1);
SE041 = playSeVer2( spep_0 + 514, 1187, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 514, 1264, "",spep_0 + 670, 0, 98, -1);

--振りかぶる
SE043 = playSeVer2( spep_0 + 600, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE043,  100 );
SE044 = playSeVer2( spep_0 + 608, 1004, "", 0, 0, 0, -1);

--地面叩きつける
SE045 = playSeVer2( spep_0 + 654, 1359, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 654, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE046, 78 );
SE047 = playSeVer2( spep_0 + 660, 1159, "",spep_0 + 762, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 660, SE047, 84 );
SE048 = playSeVer2( spep_0 + 672, 1067, "",spep_0 + 766, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 672, SE048, 87 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --742f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--のけぞりながら気弾溜める
SE050 = playSeVer2( spep_1 + 78, 1226, "",spep_2 + 72, 0, 24, -1);
SE051 = playSeVer2( spep_1 + 78, 1116, "",spep_2 + 40, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 78, SE051, 74 );
SE052 = playSeVer2( spep_1 + 84, 1153, "", 0, 12, 0, -1);
setStartTimeMs( SE052,  0 );

-------------------------------------------------
-- 口ビーム
-------------------------------------------------
MAX_FRAME_2 = 196;

-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 口ビーム(ef_002)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, beam, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, beam, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, beam, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, beam, 0);
setEffAlphaKey( spep_2 + 0, beam, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, beam, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, beam, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, beam, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--連続気弾音
SE053 = playSeVer2( spep_2 + 40, 1256, "",spep_2 + 66, 4, 4, -1);
setSeVolumeByWorkId( spep_2 + 40, SE053, 63 );
setStartTimeMs( SE053,  100 );

--気弾発射
SE054 = playSeVer2( spep_2 + 38, 1213, "",spep_2 + 212, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 38, SE054, 56 );
SE055 = playSeVer2( spep_2 + 38, 1447, "",spep_2 + 224, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 38, SE055, 279 );
SE056 = playSeVer2( spep_2 + 38, 1264, "",spep_2 + 214, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 38, SE056, 71 );
SE057 = playSeVer2( spep_2 + 38, 1278, "",spep_2 + 216, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 38, SE057, 58 );
SE059 = playSeVer2( spep_2 + 38, 1258, "",spep_2 + 212, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 38, SE059, 71 );
SE060 = playSeVer2( spep_2 + 40, 1256, "", 0, 0, 0, -1);

--連続気弾音
SE061 = playSeVer2( spep_2 + 48, 1256, "",spep_2 + 0, 0, 6, 0.5);

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  --196f

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_3 = 138;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); -- フィニッシュ(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- フィニッシュ(ef_003_b)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -52.1, 704 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_3 + 21 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_3 + 23 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_3 + 25 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_3 + 27 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_3 + 31 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_3 + 35 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_3 + 37 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_3 + 39 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_3 + 41 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_3 + 42 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_3 + 43 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_3 + 44 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_3 + 45 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_3 + 46 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_3 + 47 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_3 + 48 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_3 + 49 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_3 + 50 + OFFSET_X, 1, 29, -29.7 , 0 );
setMoveKey( spep_3 + 52 + OFFSET_X, 1, 29, -29.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 19 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 23 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 27 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 31 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 37 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 39 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 40 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 41 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 42 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 43 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 44 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 45 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 46 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 47 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 48 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 49 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 50 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 52 + OFFSET_X, 1, 1.09, 1.09 );

setRotateKey( spep_3 + 0, 1, 57.1 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_3 + 19 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_3 + 20 + OFFSET_X, 1, 59 );
setRotateKey( spep_3 + 21 + OFFSET_X, 1, 59 );
setRotateKey( spep_3 + 22 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_3 + 23 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_3 + 24 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_3 + 25 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_3 + 26 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_3 + 27 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_3 + 28 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_3 + 29 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_3 + 30 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_3 + 31 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_3 + 32 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_3 + 33 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_3 + 34 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_3 + 35 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_3 + 36 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_3 + 37 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_3 + 39 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_3 + 40 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_3 + 41 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_3 + 42 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_3 + 43 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_3 + 44 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_3 + 45 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_3 + 46 + OFFSET_X, 1, 67 );
setRotateKey( spep_3 + 47 + OFFSET_X, 1, 67 );
setRotateKey( spep_3 + 48 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_3 + 49 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_3 + 50 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_3 + 52 + OFFSET_X, 1, 68.8 );

-- ** 音 ** --
--【全体攻撃】気弾発射
SE079 = playSeVer2( spep_3 + 2, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE079, 63 );
SE081 = playSeVer2( spep_3 + 6, 1406, "",spep_3 + 150, 0, 10, -1);
SE082 = playSeVer2( spep_3 + 6, 1409, "",spep_3 + 148, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 6, SE082, 316 );

--【全体攻撃】連続気弾音
SE080 = playSeVer2( spep_3 + 2, 1256, "",spep_3 + 0, 0, 6, 0.5);

--【全体攻撃】連続爆発
SE089 = playSeVer2( spep_3 + 42, 1011, "",spep_3 + 148, 0, 8, -1);
SE092 = playSeVer2( spep_3 + 60, 1024, "",spep_3 + 150, 0, 10, -1);
SE095 = playSeVer2( spep_3 + 80, 1023, "",spep_3 + 152, 0, 14, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 28 ); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -2); -- 終了フレーム 138f -2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- バストアップで力む→壁を突き破る
-------------------------------------------------
MAX_FRAME_0 = 742;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- バストアップで力む→壁を突き破る(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- バストアップで力む→壁を突き破る(ef_001_b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 86 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 86 + OFFSET_X, 1, 284.1, -26.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 284.1, -26.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 196, -28.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 196, -28.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 198.3, -28.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 198.3, -28.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 200.6, -27.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 200.6, -27.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 202.9, -27.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 202.9, -27.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 205.2, -27 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 205.2, -27 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 207.5, -26.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 207.5, -26.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 209.8, -26.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 209.8, -26.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 212, -25.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 212, -25.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 214.3, -25.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 214.3, -25.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 216.6, -24.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 216.6, -24.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 218.9, -24.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 218.9, -24.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 221.2, -24 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 221.2, -24 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 223.5, -23.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 223.5, -23.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 225.8, -23.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 225.8, -23.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 228.1, -22.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 228.1, -22.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 228, -30.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 228, -30.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 228, -17.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 228, -17.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 219.9, -34.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 219.9, -34.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 218.6, -15.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 218.6, -15.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 213.2, -29.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 213.2, -29.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 215.9, -13.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 215.9, -13.2 , 0 );

setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.59, 0.53 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.59, 0.53 );

setRotateKey( spep_0 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -7.2 );

--敵の動き2
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 304 + OFFSET_X, 1, 109 );
changeAnime( spep_0 + 318 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 378 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 466 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 516 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 520 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, 262.7, 242.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 262.7, 242.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 263, 244.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 263, 244.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 278.2, 313.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 278.2, 313.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 256.9, 326.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 256.9, 326.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 265.4, 366.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 265.4, 366.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 275.1, 426.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 275.1, 426.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 269, 406.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 269, 406.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 264.3, 428.8 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 264.3, 428.8 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 306.8, 410.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 306.8, 410.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 306.1, 410.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 306.1, 410.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 309.5, 420.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 309.5, 420.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -335.4, -374.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -335.4, -374.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -247.8, -266.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -247.8, -266.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -179.6, -182.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -179.6, -182.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -127.6, -118.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -127.6, -118.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -89.1, -71.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -89.1, -71.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -61.5, -37.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -61.5, -37.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -42.6, -13.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -42.6, -13.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -30.2, 1.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -30.2, 1.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -22.7, 10.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -22.7, 10.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -18.5, 15.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -18.5, 15.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -16.6, 18.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -16.6, 18.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -15.9, 19.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -15.9, 19.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -15.7, 19.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -15.7, 19.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -10.2, 18.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -10.2, 18.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -4.6, 18.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -4.6, 18.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 0.9, 17.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 0.9, 17.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 6.5, 17.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 6.5, 17.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 36.3, -12.7 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 36.3, -12.7 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 16.3, -44.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 16.3, -44.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 140.7, -112.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 140.7, -112.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 136.9, -139.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 136.9, -139.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 163.5, -92.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 163.5, -92.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 140.2, -106.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 140.2, -106.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 156.9, -119.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 113.4, 67.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 113.4, 67.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 97.4, 37.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 97.4, 37.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 591.6, 208.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 591.6, 208.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 568, 270.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 568, 270.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 516, 226.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 516, 226.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 497.9, 186.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 497.9, 186.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 434, 182.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 434, 182.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 300, 148.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 300, 148.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 99.8, 76.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 99.8, 76.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 110.6, 64.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 110.6, 64.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 266.7, -118.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 266.7, -118.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 266, -89.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 266, -89.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 274.8, -110.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 274.8, -110.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 292.2, -61 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 292.2, -61 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 288.8, -60.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 288.8, -60.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 281.5, -50.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 281.5, -50.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 279.5, -83.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 279.5, -83.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 277.5, -77 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 277.5, -77 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 276.8, -77.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 276.8, -77.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 278.9, -74.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 278.9, -74.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 280.6, -69.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 280.6, -69.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 289.4, -74.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 289.4, -74.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 299.4, -24.3 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 299.4, -24.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 292, -18.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 292, -18.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 314, 47 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 314, 47 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 314.7, 46.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 314.7, 46.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 318.1, 59.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 318.1, 59.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 319.4, 67.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 319.4, 67.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 114.8, -88 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 114.8, -88 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 114.2, -87.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 114.2, -87.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 114.2, -67.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 114.2, -67.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 114.3, -67.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 114.3, -67.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 129.3, -120.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 129.3, -120.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 94.2, -84.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 94.2, -84.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 104.3, -102.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 104.3, -102.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 100.4, -82.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 100.4, -82.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 72.4, -55 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 72.4, -55 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 69.7, -49.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 69.7, -49.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 63.7, -48.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 63.7, -48.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 63.7, -41 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 63.7, -41 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 55.7, -41 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 55.7, -41 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 55.7, -34.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 55.7, -34.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 53.7, -41 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 53.7, -41 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 55, -39.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 55, -39.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 45.1, -25.6 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 45.1, -25.6 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 67.1, -13.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 67.1, -13.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 111.1, 3.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 111.1, 3.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 196.1, 0.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 196.1, 0.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 290.9, -1.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 290.9, -1.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 332.6, -12.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 332.6, -12.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 352.6, -14.2 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 352.6, -14.2 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 346.4, -22 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 346.4, -22 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 320.2, -25.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 320.2, -25.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 293.2, -16.6 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 293.2, -16.6 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 238.1, -12.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 238.1, -12.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 175.1, -16.5 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 175.1, -16.5 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 112, -25.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 112, -25.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 35.8, -46.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 35.8, -46.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -32.8, -68.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -32.8, -68.3 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -88, -87.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -88, -87.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -140.5, -110.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -140.5, -110.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -233.5, -160.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -233.5, -160.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -63.3, -42.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -63.3, -42.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -43, -27.3 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -43, -27.3 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -53.2, -39.4 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -53.2, -39.4 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -68.5, -51.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -68.5, -51.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -59.8, -28.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -59.8, -28.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -58.4, -40.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -58.4, -40.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -58.4, -29.8 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -58.4, -29.8 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -44.9, -35.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -44.9, -35.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -54.4, -39.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -54.4, -39.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -54.4, -35.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -54.4, -35.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -54.4, -31.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -54.4, -31.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -54.4, -33.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -54.4, -33.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -60.3, -37.8 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -60.3, -37.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -62.2, -40.4 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -62.2, -40.4 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -62.7, -40.3 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -62.7, -40.3 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -68.7, -42.9 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -68.7, -42.9 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -66.5, -45.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -66.5, -45.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -67, -45.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -67, -45.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -63.5, -45.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -63.5, -45.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -64.1, -45.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -64.1, -45.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -75.4, -41 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -75.4, -41 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -57.8, -40.5 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -57.8, -40.5 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -33.8, -21.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -33.8, -21.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -67.3, -55.7 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -67.3, -55.7 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -40.3, -39.5 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -40.3, -39.5 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.82, 0.82 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 70.9 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 70.9 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -89.5 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -89.5 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -35.6 );

--敵の動き3
setDisp( spep_0 + 566 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 644 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 566 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 566 + OFFSET_X, 1, 26.5, -80.5 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 26.5, -80.5 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 26.5, -76.5 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 26.5, -76.5 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 49.4, -66.7 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 49.4, -66.7 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 62.8, -59.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 62.8, -59.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 57.4, -65.3 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 57.4, -65.3 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 62.8, -61.3 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 62.8, -61.3 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 69.5, -57.9 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 69.5, -57.9 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 70.8, -55.2 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 70.8, -55.2 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 204.4, -970.3 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 204.4, -970.3 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 211.3, -967.6 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 211.3, -967.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 211.3, -970.3 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 211.3, -970.3 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 214.1, -978.5 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 214.1, -978.5 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 214.1, -982.7 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 214.1, -982.7 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 214.1, -995.1 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 214.1, -995.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 214.1, -1006.5 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 214.1, -1006.5 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 214.1, -1007 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 214.1, -1007 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 180.6, -1026.9 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 180.6, -1026.9 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 180.6, -1027.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 180.6, -1027.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 162.4, -1032 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 162.4, -1032 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 162.4, -1032.4 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 162.4, -1032.4 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 162.4, -1032.9 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 162.4, -1032.9 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 148.5, -1033.3 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 148.5, -1033.3 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 148.5, -1033.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 148.5, -1033.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 148.5, -1034.2 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 148.5, -1034.2 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 140.2, -1026.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 140.2, -1026.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 140.2, -1026.9 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 140.2, -1026.9 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 140.2, -1036.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 140.2, -1036.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 169.6, -1066 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 169.6, -1066 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 166.9, -1089 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 166.9, -1089 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 291.7, -1564.6 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 291.7, -1564.6 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 291.7, -1557.8 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 291.7, -1557.8 , 0 );

setScaleKey( spep_0 + 566 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 10.31, 10.31 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 10.31, 10.31 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 12.69, 12.69 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 12.69, 12.69 );

setRotateKey( spep_0 + 566 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 24 );

--敵の動き4
setDisp( spep_0 + 684 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 700 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 684 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 684 + OFFSET_X, 1, 37.5, -426.8 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 37.5, -426.8 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 83.3, -170.8 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 83.3, -170.8 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 179.7, 241.2 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 179.7, 241.2 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 213.8, 511.3 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 213.8, 511.3 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 219.2, 500.5 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 219.2, 500.5 , 0 );

setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_0 + 684 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 685 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 686 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_0 + 689 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_0 + 690 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 693 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, -74.7 );

--敵の動き5
setDisp( spep_0 + 706 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 745 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 706 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 706 + OFFSET_X, 1, 310.3, 451.6 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 310.3, 451.6 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 162, 245.5 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 162, 245.5 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 159, 221.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 159, 221.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 156.1, 198 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 156.1, 198 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 153.4, 176.3 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 153.4, 176.3 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 150.9, 156 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 150.9, 156 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 148.5, 137.1 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 148.5, 137.1 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 146.3, 119.6 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 146.3, 119.6 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 144.3, 103.6 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 144.3, 103.6 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 142.5, 88.9 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 142.5, 88.9 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 140.8, 75.6 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 140.8, 75.6 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 139.4, 63.7 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 139.4, 63.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 138, 53.2 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 138, 53.2 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 136.9, 44.1 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 136.9, 44.1 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 135.9, 36.4 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 135.9, 36.4 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 135.2, 30.1 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 135.2, 30.1 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 134.5, 25.2 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 134.5, 25.2 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 134.1, 21.7 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 134.1, 21.7 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 133.8, 19.6 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 133.8, 19.6 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 133.8, 18.9 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 133.8, 18.9 , 0 );

setScaleKey( spep_0 + 706 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 706 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_0 + 707 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_0 + 708 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 709 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 710 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 711 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 712 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 713 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 714 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_0 + 715 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_0 + 716 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_0 + 717 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_0 + 718 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 719 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 720 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_0 + 723 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_0 + 725 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_0 + 726 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_0 + 727 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 729 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 730 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_0 + 733 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_0 + 741 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_0 + 742 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 745 + OFFSET_X, 1, 52.6 );

-- ** 音 ** --
--オーラベース
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 218, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 218, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 76 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 62 );

--オーラ
SE005 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 14 );
setPitch( spep_0 + 62, SE005, 200 );
setTimeStretch( SE005, 1.13, 30, 4 );
SE006 = playSeVer2( spep_0 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE006, 17 );
setPitch( spep_0 + 80, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );
SE007 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 32 );
setPitch( spep_0 + 98, SE007, 200 );
setTimeStretch( SE007, 1.13, 30, 4 );
SE008 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE008, 32 );
setPitch( spep_0 + 116, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );
SE009 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 32 );
setPitch( spep_0 + 134, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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
--オーラ
SE011 = playSeVer2( spep_0 + 152, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE011, 32 );
setPitch( spep_0 + 152, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );
SE015 = playSeVer2( spep_0 + 170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE015, 32 );
setPitch( spep_0 + 170, SE015, 200 );
setTimeStretch( SE015, 1.13, 30, 4 );

--気弾吐く
SE010 = playSeVer2( spep_0 + 160, 1302, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE010, 65 );
setStartTimeMs( SE010,  133 );
setBandpassFilter( spep_0 + 160, SE010, 24, 5730 );
SE012 = playSeVer2( spep_0 + 160, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012, 72 );
SE013 = playSeVer2( spep_0 + 160, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE013, 84 );
SE014 = playSeVer2( spep_0 + 160, 1402, "", 0, 0, 0, -1);

--爆発
SE016 = playSeVer2( spep_0 + 172, 1014, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 178, 1023, "", 0, 0, 0, -1);

--向かっていく
SE018 = playSeVer2( spep_0 + 214, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 218, 1277, "", 0, 0, 0, -1);

--パンチ
SE020 = playSeVer2( spep_0 + 252, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE020, 86 );
SE021 = playSeVer2( spep_0 + 252, 1414, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 256, 1187, "",spep_0 + 360, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 256, SE023, 80 );

--パンチ溜める
SE022 = playSeVer2( spep_0 + 280, 1274, "",spep_0 + 336, 6, 14, -1);
setSeVolumeByWorkId( spep_0 + 280, SE022, 112 );
setStartTimeMs( SE022,  433 );
setPitch( spep_0 + 280, SE022, 400 );
setTimeStretch( SE022, 1.27, 30, 4 );
SE024 = playSeVer2( spep_0 + 282, 1037, "",spep_0 + 332, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 282, SE024, 82 );

--腹パン
SE025 = playSeVer2( spep_0 + 316, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE025, 78 );
SE026 = playSeVer2( spep_0 + 316, 1414, "",spep_0 + 358, 0, 10, -1);
SE027 = playSeVer2( spep_0 + 320, 1187, "",spep_0 + 420, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 320, SE027, 81 );
SE028 = playSeVer2( spep_0 + 326, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE029 = playSeVer2( spep_0 + 356, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE030 = playSeVer2( spep_0 + 366, 1123, "",spep_0 + 466, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 366, SE030, 67 );
SE031 = playSeVer2( spep_0 + 372, 1187, "",spep_0 + 468, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 372, SE031, 85 );
SE032 = playSeVer2( spep_0 + 372, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE033 = playSeVer2( spep_0 + 392, 1183, "",spep_0 + 482, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 392, SE033, 124 );
SE034 = playSeVer2( spep_0 + 392, 1278, "",spep_0 + 480, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 392, SE034, 60 );
SE035 = playSeVer2( spep_0 + 392, 1410, "",spep_0 + 546, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 392, SE035, 257 );

--壁に当たる
SE036 = playSeVer2( spep_0 + 460, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE036, 81 );
SE037 = playSeVer2( spep_0 + 460, 1033, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 460, 1135, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 460, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE039, 74 );

--壁爆発
SE040 = playSeVer2( spep_0 + 514, 1384, "",spep_0 + 668, 0, 96, -1);
SE041 = playSeVer2( spep_0 + 514, 1187, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 514, 1264, "",spep_0 + 670, 0, 98, -1);

--振りかぶる
SE043 = playSeVer2( spep_0 + 600, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE043,  100 );
SE044 = playSeVer2( spep_0 + 608, 1004, "", 0, 0, 0, -1);

--地面叩きつける
SE045 = playSeVer2( spep_0 + 654, 1359, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 654, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE046, 78 );
SE047 = playSeVer2( spep_0 + 660, 1159, "",spep_0 + 762, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 660, SE047, 84 );
SE048 = playSeVer2( spep_0 + 672, 1067, "",spep_0 + 766, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 672, SE048, 87 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --742f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--のけぞりながら気弾溜める
SE050 = playSeVer2( spep_1 + 78, 1226, "",spep_2 + 72, 0, 24, -1);
SE051 = playSeVer2( spep_1 + 78, 1116, "",spep_2 + 40, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 78, SE051, 74 );
SE052 = playSeVer2( spep_1 + 84, 1153, "", 0, 12, 0, -1);
setStartTimeMs( SE052,  0 );

-------------------------------------------------
-- 口ビーム
-------------------------------------------------
MAX_FRAME_2 = 196;

-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 口ビーム(ef_002)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, beam, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, beam, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, beam, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, beam, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, beam, 0);
setEffAlphaKey( spep_2 + 0, beam, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, beam, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, beam, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, beam, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--連続気弾音
SE053 = playSeVer2( spep_2 + 40, 1256, "",spep_2 + 66, 4, 4, -1);
setSeVolumeByWorkId( spep_2 + 40, SE053, 63 );
setStartTimeMs( SE053,  100 );

--気弾発射
SE054 = playSeVer2( spep_2 + 38, 1213, "",spep_2 + 212, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 38, SE054, 56 );
SE055 = playSeVer2( spep_2 + 38, 1447, "",spep_2 + 224, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 38, SE055, 279 );
SE056 = playSeVer2( spep_2 + 38, 1264, "",spep_2 + 214, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 38, SE056, 71 );
SE057 = playSeVer2( spep_2 + 38, 1278, "",spep_2 + 216, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 38, SE057, 58 );
SE059 = playSeVer2( spep_2 + 38, 1258, "",spep_2 + 212, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 38, SE059, 71 );
SE060 = playSeVer2( spep_2 + 40, 1256, "", 0, 0, 0, -1);

--連続気弾音
SE061 = playSeVer2( spep_2 + 48, 1256, "",spep_2 + 0, 0, 6, 0.5);

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  --196f

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_3 = 138;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- フィニッシュ(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03br, 0x80, -1, 0, 0, 0); -- フィニッシュ(ef_003_b)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b,-1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -52.1, 704 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_3 + 21 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_3 + 23 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_3 + 25 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_3 + 27 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_3 + 31 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_3 + 35 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_3 + 37 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_3 + 39 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_3 + 41 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_3 + 42 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_3 + 43 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_3 + 44 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_3 + 45 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_3 + 46 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_3 + 47 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_3 + 48 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_3 + 49 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_3 + 50 + OFFSET_X, 1, 29, -29.7 , 0 );
setMoveKey( spep_3 + 52 + OFFSET_X, 1, 29, -29.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 19 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 23 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 27 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 31 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 37 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 39 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 40 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 41 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 42 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 43 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 44 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 45 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 46 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 47 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 48 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 49 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 50 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 52 + OFFSET_X, 1, 1.09, 1.09 );

setRotateKey( spep_3 + 0, 1, 57.1 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_3 + 19 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_3 + 20 + OFFSET_X, 1, 59 );
setRotateKey( spep_3 + 21 + OFFSET_X, 1, 59 );
setRotateKey( spep_3 + 22 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_3 + 23 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_3 + 24 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_3 + 25 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_3 + 26 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_3 + 27 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_3 + 28 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_3 + 29 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_3 + 30 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_3 + 31 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_3 + 32 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_3 + 33 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_3 + 34 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_3 + 35 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_3 + 36 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_3 + 37 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_3 + 39 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_3 + 40 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_3 + 41 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_3 + 42 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_3 + 43 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_3 + 44 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_3 + 45 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_3 + 46 + OFFSET_X, 1, 67 );
setRotateKey( spep_3 + 47 + OFFSET_X, 1, 67 );
setRotateKey( spep_3 + 48 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_3 + 49 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_3 + 50 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_3 + 52 + OFFSET_X, 1, 68.8 );

-- ** 音 ** --
--【全体攻撃】気弾発射
SE079 = playSeVer2( spep_3 + 2, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE079, 63 );
SE081 = playSeVer2( spep_3 + 6, 1406, "",spep_3 + 150, 0, 10, -1);
SE082 = playSeVer2( spep_3 + 6, 1409, "",spep_3 + 148, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 6, SE082, 316 );

--【全体攻撃】連続気弾音
SE080 = playSeVer2( spep_3 + 2, 1256, "",spep_3 + 0, 0, 6, 0.5);

--【全体攻撃】連続爆発
SE089 = playSeVer2( spep_3 + 42, 1011, "",spep_3 + 148, 0, 8, -1);
SE092 = playSeVer2( spep_3 + 60, 1024, "",spep_3 + 150, 0, 10, -1);
SE095 = playSeVer2( spep_3 + 80, 1023, "",spep_3 + 152, 0, 14, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 36 ); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -2); -- 終了フレーム 138f -2


end
end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示


    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 138;

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- フィニッシュ(ef_003)
setEffMoveKey( spep_z + 0, finish_f2, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, finish_f2, 0, 0 , 0);
setEffScaleKey( spep_z + 0, finish_f2, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, finish_f2, 1.0, 1.0);
setEffRotateKey( spep_z + 0, finish_f2, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, finish_f2, 0);
setEffAlphaKey( spep_z + 0, finish_f, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, finish_f2, 255);

finish_b2 = entryEffect( spep_z + 0, SP_03b, 0x80, -1, 0, 0, 0); -- フィニッシュ(ef_003_b)
setEffMoveKey( spep_z + 0, finish_b2, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, finish_b2, 0, 0 , 0);
setEffScaleKey( spep_z + 0, finish_b2, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, finish_b2, 1.0, 1.0);
setEffRotateKey( spep_z + 0, finish_b2, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, finish_b2, 0);
setEffAlphaKey( spep_z + 0, finish_b2, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, finish_b2, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 106 );

setMoveKey( spep_z + 0, 1, -52.1, 704 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 29, -29.7 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 29, -29.7 , 0 );

setScaleKey( spep_z + 0, 1, 1.59, 1.59 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 8 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_z + 11 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_z + 12 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_z + 13 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_z + 14 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_z + 15 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_z + 16 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_z + 17 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_z + 18 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_z + 19 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_z + 21 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_z + 22 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_z + 23 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_z + 24 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_z + 25 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_z + 26 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_z + 27 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_z + 28 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_z + 30 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_z + 31 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_z + 32 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_z + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_z + 36 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_z + 39 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_z + 40 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_z + 41 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_z + 42 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_z + 43 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_z + 44 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_z + 47 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_z + 48 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_z + 49 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_z + 50 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_z + 52 + OFFSET_X, 1, 1.09, 1.09 );

setRotateKey( spep_z + 0, 1, 57.1 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 57.1 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_z + 8 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_z + 9 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_z + 10 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_z + 11 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_z + 12 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_z + 13 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_z + 14 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_z + 15 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_z + 16 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_z + 17 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_z + 18 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_z + 19 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_z + 20 + OFFSET_X, 1, 59 );
setRotateKey( spep_z + 21 + OFFSET_X, 1, 59 );
setRotateKey( spep_z + 22 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_z + 23 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_z + 24 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_z + 25 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_z + 26 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_z + 27 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_z + 28 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_z + 29 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_z + 30 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_z + 31 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_z + 32 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_z + 33 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_z + 34 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_z + 35 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_z + 36 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_z + 37 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_z + 38 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_z + 39 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_z + 40 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_z + 41 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_z + 42 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_z + 43 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_z + 44 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_z + 45 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_z + 46 + OFFSET_X, 1, 67 );
setRotateKey( spep_z + 47 + OFFSET_X, 1, 67 );
setRotateKey( spep_z + 48 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_z + 49 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_z + 50 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_z + 52 + OFFSET_X, 1, 68.8 );

-- ** 音 ** --
--【全体攻撃】気弾発射
SE079 = playSeVer2( spep_z + 2, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 2, SE079, 63 );
SE081 = playSeVer2( spep_z + 6, 1406, "",spep_z + 150, 0, 10, -1);
SE082 = playSeVer2( spep_z + 6, 1409, "",spep_z + 148, 0, 8, -1);
setSeVolumeByWorkId( spep_z + 6, SE082, 316 );

--【全体攻撃】連続気弾音
SE080 = playSeVer2( spep_z + 2, 1256, "",spep_z + 0, 0, 6, 0.5);

--【全体攻撃】連続爆発
SE089 = playSeVer2( spep_z + 42, 1011, "",spep_z + 148, 0, 8, -1);
SE092 = playSeVer2( spep_z + 60, 1024, "",spep_z + 150, 0, 10, -1);
SE095 = playSeVer2( spep_z + 80, 1023, "",spep_z + 152, 0, 14, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 28 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -2); -- 終了フレーム 138f -2

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示


    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 138;

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_z + 0, SP_03r, 0x100, -1, 0, 0, 0); -- フィニッシュ(ef_003)
setEffMoveKey( spep_z + 0, finish_f2, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, finish_f2, 0, 0 , 0);
setEffScaleKey( spep_z + 0, finish_f2, -1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, finish_f2, -1.0, 1.0);
setEffRotateKey( spep_z + 0, finish_f2, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, finish_f2, 0);
setEffAlphaKey( spep_z + 0, finish_f, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, finish_f2, 255);

finish_b2 = entryEffect( spep_z + 0, SP_03br, 0x80, -1, 0, 0, 0); -- フィニッシュ(ef_003_b)
setEffMoveKey( spep_z + 0, finish_b2, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, finish_b2, 0, 0 , 0);
setEffScaleKey( spep_z + 0, finish_b2, -1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, finish_b2, -1.0, 1.0);
setEffRotateKey( spep_z + 0, finish_b2, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, finish_b2, 0);
setEffAlphaKey( spep_z + 0, finish_b2, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, finish_b2, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 106 );

setMoveKey( spep_z + 0, 1, -52.1, 704 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, -51.9, 702.9 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -51.5, 699.4 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, -50.8, 693.5 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, -49.9, 685.4 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, -48.7, 674.9 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, -47.2, 662.1 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, -51.3, 637.6 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, -41.5, 628.8 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, -47.1, 614.8 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, -42.1, 585.6 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, -36.2, 562.9 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, -34.1, 540.9 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, -33.3, 501.2 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, -22.5, 479.9 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, -12.7, 430.1 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, -13.5, 409.1 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, -13.9, 365.8 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, -9.5, 330.4 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, -7, 269.7 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 0.1, 235.3 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 5.5, 199.3 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 11.6, 143.5 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 8.8, 87 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 25.3, 35.5 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 29, -29.7 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 29, -29.7 , 0 );

setScaleKey( spep_z + 0, 1, 1.59, 1.59 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_z + 8 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_z + 11 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_z + 12 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_z + 13 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_z + 14 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_z + 15 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_z + 16 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_z + 17 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_z + 18 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_z + 19 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_z + 21 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_z + 22 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_z + 23 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_z + 24 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_z + 25 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_z + 26 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_z + 27 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_z + 28 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_z + 30 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_z + 31 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_z + 32 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_z + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_z + 36 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_z + 39 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_z + 40 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_z + 41 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_z + 42 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_z + 43 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_z + 44 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_z + 47 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_z + 48 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_z + 49 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_z + 50 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_z + 52 + OFFSET_X, 1, 1.09, 1.09 );

setRotateKey( spep_z + 0, 1, 57.1 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 57.1 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_z + 8 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_z + 9 + OFFSET_X, 1, 57.4 );
setRotateKey( spep_z + 10 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_z + 11 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_z + 12 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_z + 13 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_z + 14 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_z + 15 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_z + 16 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_z + 17 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_z + 18 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_z + 19 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_z + 20 + OFFSET_X, 1, 59 );
setRotateKey( spep_z + 21 + OFFSET_X, 1, 59 );
setRotateKey( spep_z + 22 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_z + 23 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_z + 24 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_z + 25 + OFFSET_X, 1, 59.8 );
setRotateKey( spep_z + 26 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_z + 27 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_z + 28 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_z + 29 + OFFSET_X, 1, 60.8 );
setRotateKey( spep_z + 30 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_z + 31 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_z + 32 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_z + 33 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_z + 34 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_z + 35 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_z + 36 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_z + 37 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_z + 38 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_z + 39 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_z + 40 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_z + 41 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_z + 42 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_z + 43 + OFFSET_X, 1, 65.4 );
setRotateKey( spep_z + 44 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_z + 45 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_z + 46 + OFFSET_X, 1, 67 );
setRotateKey( spep_z + 47 + OFFSET_X, 1, 67 );
setRotateKey( spep_z + 48 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_z + 49 + OFFSET_X, 1, 67.9 );
setRotateKey( spep_z + 50 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_z + 52 + OFFSET_X, 1, 68.8 );

-- ** 音 ** --
--【全体攻撃】気弾発射
SE079 = playSeVer2( spep_z + 2, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 2, SE079, 63 );
SE081 = playSeVer2( spep_z + 6, 1406, "",spep_z + 150, 0, 10, -1);
SE082 = playSeVer2( spep_z + 6, 1409, "",spep_z + 148, 0, 8, -1);
setSeVolumeByWorkId( spep_z + 6, SE082, 316 );

--【全体攻撃】連続気弾音
SE080 = playSeVer2( spep_z + 2, 1256, "",spep_z + 0, 0, 6, 0.5);

--【全体攻撃】連続爆発
SE089 = playSeVer2( spep_z + 42, 1011, "",spep_z + 148, 0, 8, -1);
SE092 = playSeVer2( spep_z + 60, 1024, "",spep_z + 150, 0, 10, -1);
SE095 = playSeVer2( spep_z + 80, 1023, "",spep_z + 152, 0, 14, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 36 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -2); -- 終了フレーム 138f -2

end
end
