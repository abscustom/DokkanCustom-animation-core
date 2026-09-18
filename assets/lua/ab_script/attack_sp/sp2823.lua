--4030350:LR_超サイヤ人4孫悟空_必殺技：龍撃円舞
--sp_effect_b1_00316
--sp2823

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163578; --冒頭 ef_001

--エフェクト(味方側)
SP_02  = 163579; --塔遠景～ラスト：手前 ef_002
SP_02b = 163580; --塔遠景～ラスト：奥 ef_002b

--エフェクト(敵側)
SP_02r  = 163603; --[敵用]塔遠景～ラスト：手前 ef_002
SP_02br = 163604; --[敵用]塔遠景～ラスト：奥 ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 128;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 310 );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --向かっていく
        SE032 = playSeVer2( spep_2 + 310 +3, 1245, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 310 +3, SE032, 79 );
        SE033 = playSeVer2( spep_2 + 310 +3, 1116, "",spep_2 + 320, 0, 20, -1);
        setSeVolumeByWorkId( spep_2 + 310 +3, SE033, 112 );
        SE034 = playSeVer2( spep_2 + 310 +3, 1019, "", 0, 0, 0, -1);
        SE035 = playSeVer2( spep_2 + 310 +3, 9, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 310 +3, SE035, 76 );

    else 
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -23.7, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -23.7, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -23.7, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 154, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE003 = playSeVer2( spep_0 + 12, 1175, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 25 );

--髪揺れる
SE004 = playSeVer2( spep_0 + 26, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 126 );
SE005 = playSeVer2( spep_0 + 32, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE005, 123 );

--イナヅマ走る
SE006 = playSeVer2( spep_0 + 66, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 128f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 塔遠景～ラスト
-------------------------------------------------
MAX_FRAME_2 = 600;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 塔遠景～ラスト：手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 塔遠景～ラスト：奥(ef_002b)
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
setDisp( spep_2 + 84 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 208 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 84 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 130 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 152 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 192 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 202 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 84 + OFFSET_X, 1, 391.5, 106.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 391.5, 106.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 341.7, 96.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 341.7, 96.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 291.9, 91.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 291.9, 91.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 236.6, 85.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 236.6, 85.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 183.5, 78.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 183.5, 78.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 130.6, 66.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 130.6, 66.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 75.8, 64.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 75.8, 64.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 20.6, 55.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 20.6, 55.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -33.8, 44.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -33.8, 44.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -46.8, 9.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -46.8, 9.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -27.1, 30.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -27.1, 30.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -66.1, 51.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -66.1, 51.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -38, 22.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -38, 22.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -53.2, 10.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -53.2, 10.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -43.5, 16.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -43.5, 16.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -46.2, 13.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -46.2, 13.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -48.9, 9.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -48.9, 9.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -21.7, 12.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -21.7, 12.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -3.6, 41.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -3.6, 41.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -44.2, 69.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -44.2, 69.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -16.1, 34.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -16.1, 34.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -40.2, 23.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -40.2, 23.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -23.8, 28.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -23.8, 28.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -92.8, -17.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -92.8, -17.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -80.1, -0.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -80.1, -0.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -122.9, 34.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -122.9, 34.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -92.8, -5.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -92.8, -5.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -114.8, -24.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -114.8, -24.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -100.9, -10.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -100.9, -10.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 1.5, 35.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 1.5, 35.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -1.3, 59.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -1.3, 59.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -31.2, 93.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -31.2, 93.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -7.1, 61.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -7.1, 61.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -24.9, 48.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -24.9, 48.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -96.6, -66.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -96.6, -66.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -134.7, -98.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -134.7, -98.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -110.8, -84.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -110.8, -84.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -138.2, -72.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -138.2, -72.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -113.5, -90.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -113.5, -90.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -127.2, -97.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -127.2, -97.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -118.2, -97 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -118.2, -97 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -117.6, -100.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -117.6, -100.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -112.2, -109.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -112.2, -109.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -89.4, -88.0 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -89.4, -88.0 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -129.9, -70.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -129.9, -70.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -104.2, -99.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -104.2, -99.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -109.5, -105.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -109.5, -105.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -114.8, -110.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -114.8, -110.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -223.5, -99.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -223.5, -99.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -210.5, -74.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -210.5, -74.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -257.6, -52.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -257.6, -52.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -226, -83.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -226, -83.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -240.6, -91.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -240.6, -91.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -231, -88.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -231, -88.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -149.3, -9.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -149.3, -9.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -124.7, -33.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -124.7, -33.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -166.1, -47.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -166.1, -47.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -138.7, -31.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -138.7, -31.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -153.4, -34.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -153.4, -34.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -265.1, -22 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -265.1, -22 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -383.8, -53.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -383.8, -53.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -589.6, -84.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -589.6, -84.2 , 0 );

setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.43, 2.43 );

setRotateKey( spep_2 + 84 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -8.3 );


--敵の動き2
setDisp( spep_2 + 402 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 420 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 402 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 402 + OFFSET_X, 1, -36.3, 14.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -36.3, 14.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 111.6, -216.7 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 111.6, -216.7 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 219.4, -451.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 219.4, -451.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 264.9, -530.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 264.9, -530.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 284.5, -597.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 284.5, -597.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 316, -635.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 316, -635.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 341.6, -687.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 341.6, -687.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 367.2, -739.7 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 367.2, -739.7 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 392.8, -792.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 392.8, -792.1 , 0 );

setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_2 + 402 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, 118 );


-- ** 音 ** --
--爆発
SE008 = playSeVer2( spep_2 + 22, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE008, 79 );
SE009 = playSeVer2( spep_2 + 22, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE009, 82 );

--手前に飛んでくる
SE010 = playSeVer2( spep_2 + 36, 1167, "",spep_2 + 92, 0, 22, -1);
SE011 = playSeVer2( spep_2 + 46, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 58; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--連打
SE012 = playSeVer2( spep_2 + 84, 1189, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 84, SE012, 155 );
SE013 = playSeVer2( spep_2 + 92, 1009, "", 0, 0, 0, 0.5);
SE014 = playSeVer2( spep_2 + 92, 1110, "", 0, 0, 0, 0.5);
SE015 = playSeVer2( spep_2 + 110, 1110, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_2 + 110, 1006, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, 0.5);
SE018 = playSeVer2( spep_2 + 122, 1010, "", 0, 0, 0, 0.5);
SE019 = playSeVer2( spep_2 + 134, 1110, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_2 + 144, 1010, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 144, SE021, 75 );
setPitch( spep_2 + 144, SE021, -100 );
setTimeStretch( SE021, 0.93, 30, 4 );
SE022 = playSeVer2( spep_2 + 154, 1006, "", 0, 0, 0, 0.5);
SE023 = playSeVer2( spep_2 + 158, 1110, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_2 + 164, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 164, SE024, 76 );
setPitch( spep_2 + 164, SE024, 100 );
setTimeStretch( SE024, 1.07, 30, 4 );
SE025 = playSeVer2( spep_2 + 174, 1110, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_2 + 174, 1009, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_2 + 190, 1003, "", 0, 0, 0, 0.5);
SE028 = playSeVer2( spep_2 + 194, 1120, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 194, SE028, 81 );
SE029 = playSeVer2( spep_2 + 196, 1110, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_2 + 196, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE030, 79 );

--画面遷移
SE031 = playSeVer2( spep_2 + 236, 1232, "", 0, 0, 0, -1);

--向かっていく
SE032 = playSeVer2( spep_2 + 272, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE032, 79 );
SE033 = playSeVer2( spep_2 + 272, 1116, "",spep_2 + 320, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 272, SE033, 112 );
SE034 = playSeVer2( spep_2 + 282, 1019, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 286, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 286, SE035, 76 );

--翻る
SE036 = playSeVer2( spep_2 + 334, 1117, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 334, 44, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 348, 1004, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 348, 1116, "",spep_2 + 388, 0, 18, -1);

--踵落とし
SE040 = playSeVer2( spep_2 + 382, 1123, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 384, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE042 = playSeVer2( spep_2 + 414, 1121, "",spep_2 + 488, 0, 48, -1);
SE043 = playSeVer2( spep_2 + 436, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE043, 133 );
SE044 = playSeVer2( spep_2 + 440, 1279, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 440, SE044, 81 );

--地面吹き上がる
SE045 = playSeVer2( spep_2 + 466, 1258, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 472, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 484, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 480); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 600f -2f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -23.7, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -23.7, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -23.7, 515.5 , 0 );
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


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 154, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE003 = playSeVer2( spep_0 + 12, 1175, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 25 );

--髪揺れる
SE004 = playSeVer2( spep_0 + 26, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 126 );
SE005 = playSeVer2( spep_0 + 32, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE005, 123 );

--イナヅマ走る
SE006 = playSeVer2( spep_0 + 66, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 128f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 塔遠景～ラスト
-------------------------------------------------
MAX_FRAME_2 = 600;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 塔遠景～ラスト：手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 塔遠景～ラスト：奥(ef_002b)
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
setDisp( spep_2 + 84 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 208 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 84 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 130 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 152 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 192 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 202 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 84 + OFFSET_X, 1, 391.5, 106.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 391.5, 106.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 341.7, 96.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 341.7, 96.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 291.9, 91.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 291.9, 91.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 236.6, 85.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 236.6, 85.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 183.5, 78.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 183.5, 78.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 130.6, 66.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 130.6, 66.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 75.8, 64.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 75.8, 64.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 20.6, 55.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 20.6, 55.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -33.8, 44.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -33.8, 44.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -46.8, 9.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -46.8, 9.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -27.1, 30.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -27.1, 30.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -66.1, 51.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -66.1, 51.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -38, 22.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -38, 22.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -53.2, 10.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -53.2, 10.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -43.5, 16.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -43.5, 16.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -46.2, 13.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -46.2, 13.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -48.9, 9.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -48.9, 9.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -21.7, 12.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -21.7, 12.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -3.6, 41.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -3.6, 41.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -44.2, 69.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -44.2, 69.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -16.1, 34.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -16.1, 34.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -40.2, 23.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -40.2, 23.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -23.8, 28.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -23.8, 28.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -92.8, -17.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -92.8, -17.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -80.1, -0.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -80.1, -0.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -122.9, 34.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -122.9, 34.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -92.8, -5.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -92.8, -5.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -114.8, -24.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -114.8, -24.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -100.9, -10.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -100.9, -10.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 1.5, 35.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 1.5, 35.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -1.3, 59.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -1.3, 59.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -31.2, 93.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -31.2, 93.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -7.1, 61.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -7.1, 61.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -24.9, 48.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -24.9, 48.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -96.6, -66.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -96.6, -66.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -134.7, -98.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -134.7, -98.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -110.8, -84.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -110.8, -84.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -138.2, -72.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -138.2, -72.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -113.5, -90.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -113.5, -90.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -127.2, -97.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -127.2, -97.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -118.2, -97 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -118.2, -97 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -117.6, -100.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -117.6, -100.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -112.2, -109.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -112.2, -109.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -89.4, -88.0 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -89.4, -88.0 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -129.9, -70.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -129.9, -70.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -104.2, -99.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -104.2, -99.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -109.5, -105.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -109.5, -105.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -114.8, -110.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -114.8, -110.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -223.5, -99.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -223.5, -99.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -210.5, -74.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -210.5, -74.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -257.6, -52.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -257.6, -52.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -226, -83.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -226, -83.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -240.6, -91.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -240.6, -91.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -231, -88.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -231, -88.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -149.3, -9.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -149.3, -9.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -124.7, -33.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -124.7, -33.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -166.1, -47.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -166.1, -47.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -138.7, -31.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -138.7, -31.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -153.4, -34.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -153.4, -34.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -265.1, -22 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -265.1, -22 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -383.8, -53.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -383.8, -53.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -589.6, -84.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -589.6, -84.2 , 0 );

setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.43, 2.43 );

setRotateKey( spep_2 + 84 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -8.3 );


--敵の動き2
setDisp( spep_2 + 402 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 420 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 402 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 402 + OFFSET_X, 1, -36.3, 14.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -36.3, 14.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 111.6, -216.7 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 111.6, -216.7 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 219.4, -451.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 219.4, -451.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 264.9, -530.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 264.9, -530.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 284.5, -597.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 284.5, -597.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 316, -635.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 316, -635.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 341.6, -687.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 341.6, -687.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 367.2, -739.7 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 367.2, -739.7 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 392.8, -792.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 392.8, -792.1 , 0 );

setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_2 + 402 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, 118 );


-- ** 音 ** --
--爆発
SE008 = playSeVer2( spep_2 + 22, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE008, 79 );
SE009 = playSeVer2( spep_2 + 22, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE009, 82 );

--手前に飛んでくる
SE010 = playSeVer2( spep_2 + 36, 1167, "",spep_2 + 92, 0, 22, -1);
SE011 = playSeVer2( spep_2 + 46, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 58; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--連打
SE012 = playSeVer2( spep_2 + 84, 1189, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 84, SE012, 155 );
SE013 = playSeVer2( spep_2 + 92, 1009, "", 0, 0, 0, 0.5);
SE014 = playSeVer2( spep_2 + 92, 1110, "", 0, 0, 0, 0.5);
SE015 = playSeVer2( spep_2 + 110, 1110, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_2 + 110, 1006, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, 0.5);
SE018 = playSeVer2( spep_2 + 122, 1010, "", 0, 0, 0, 0.5);
SE019 = playSeVer2( spep_2 + 134, 1110, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_2 + 144, 1010, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 144, SE021, 75 );
setPitch( spep_2 + 144, SE021, -100 );
setTimeStretch( SE021, 0.93, 30, 4 );
SE022 = playSeVer2( spep_2 + 154, 1006, "", 0, 0, 0, 0.5);
SE023 = playSeVer2( spep_2 + 158, 1110, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_2 + 164, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 164, SE024, 76 );
setPitch( spep_2 + 164, SE024, 100 );
setTimeStretch( SE024, 1.07, 30, 4 );
SE025 = playSeVer2( spep_2 + 174, 1110, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_2 + 174, 1009, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_2 + 190, 1003, "", 0, 0, 0, 0.5);
SE028 = playSeVer2( spep_2 + 194, 1120, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 194, SE028, 81 );
SE029 = playSeVer2( spep_2 + 196, 1110, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_2 + 196, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE030, 79 );

--画面遷移
SE031 = playSeVer2( spep_2 + 236, 1232, "", 0, 0, 0, -1);

--向かっていく
SE032 = playSeVer2( spep_2 + 272, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE032, 79 );
SE033 = playSeVer2( spep_2 + 272, 1116, "",spep_2 + 320, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 272, SE033, 112 );
SE034 = playSeVer2( spep_2 + 282, 1019, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 286, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 286, SE035, 76 );

--翻る
SE036 = playSeVer2( spep_2 + 334, 1117, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 334, 44, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 348, 1004, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 348, 1116, "",spep_2 + 388, 0, 18, -1);

--踵落とし
SE040 = playSeVer2( spep_2 + 382, 1123, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 384, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE042 = playSeVer2( spep_2 + 414, 1121, "",spep_2 + 488, 0, 48, -1);
SE043 = playSeVer2( spep_2 + 436, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE043, 133 );
SE044 = playSeVer2( spep_2 + 440, 1279, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 440, SE044, 81 );

--地面吹き上がる
SE045 = playSeVer2( spep_2 + 466, 1258, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 472, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 484, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 480); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 600f -2f


end