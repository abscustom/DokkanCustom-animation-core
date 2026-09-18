--1026200:UR人造人間17号&ヘルファイター17号_ヘルコンビネーション
--sp_effect_b4_00277

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
SP_01 = 161640;	--開幕〜カードカットインまで	ef_001
SP_02 = 161642;	--開幕〜カードカットインまで	ef_002
SP_03 = 161644;	--気弾発射〜フィニッシュまで	ef_003
SP_04 = 161646;	--気弾発射〜フィニッシュまで	ef_004

--敵側
SP_01r = 161641;	--開幕〜カードカットインまで	ef_001r
SP_02r = 161643;	--開幕〜カードカットインまで	ef_002r
SP_03r = 161645;	--気弾発射〜フィニッシュまで	ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜カードカットインまで(844F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕〜カードカットインまで	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 844, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 844, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 844, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 844 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 844, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --開幕〜カードカットインまで	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 844, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 844, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 844, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 844 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 844, first_b, 0 );

spep_x = spep_0 + 756;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 136 -1, 1, 1 );
changeAnime( spep_0 + 136 -1, 1, 117 );

setMoveKey( spep_0 + 136 -1, 1, -22.9, 28.7 , 0 );
setMoveKey( spep_0 + 141 -1, 1, -22.9, 28.7 , 0 );
setMoveKey( spep_0 + 142 -1, 1, -23, 28.7 , 0 );
setMoveKey( spep_0 + 149 -1, 1, -23, 28.7 , 0 );
setMoveKey( spep_0 + 150 -1, 1, -23.1, 28.7 , 0 );

setScaleKey( spep_0 + 136 -1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 139 -1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 140 -1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 141 -1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 142 -1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 143 -1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 144 -1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 145 -1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 146 -1, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 147 -1, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 148 -1, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 149 -1, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 150 -1, 1, 1.28, 1.28 );

setRotateKey( spep_0 + 136 -1, 1, 0 );

-- ** 音 ** --
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 82 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 81 );

--炎飲まれる
SE004 = playSeVer2( spep_0 + 86, 1258, "",spep_0 + 178, 18, 48, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 60 );
setStartTimeMs( SE004,  400 );
SE005 = playSeVer2( spep_0 + 82, 1014, "", 0, 20, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 130, 1182, "",spep_0 + 192, 0, 22, -1);
SE007 = playSeVer2( spep_0 + 130, 1117, "",spep_0 + 190, 0, 18, -1);
SE008 = playSeVer2( spep_0 + 130, 9, "",spep_0 + 190, 0, 18, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -23.1, 28.7 , 0 );
    setMoveKey( SP_dodge + 1, 1, -23.1, 28.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, -23.1, 28.7 , 0 );
    setMoveKey( SP_dodge + 3, 1, -23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, -23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 5, 1, -23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, -23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 7, 1, -23.4, 28.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, -23.4, 28.4 , 0 );
    setMoveKey( SP_dodge + 9, 1, -23.5, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, -23.5, 28.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.28, 1.28 );
    setScaleKey( SP_dodge + 1, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 3, 1, 1.34, 1.34 );
    setScaleKey( SP_dodge + 4, 1, 1.34, 1.34 );
    setScaleKey( SP_dodge + 5, 1, 1.38, 1.38 );
    setScaleKey( SP_dodge + 6, 1, 1.38, 1.38 );
    setScaleKey( SP_dodge + 7, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 8, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 9, 1, 1.79, 1.79 );
    setScaleKey( SP_dodge + 10, 1, 1.79, 1.79 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  
    
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 230 -1, 1, 0 );
changeAnime( spep_0 + 166 -1, 1, 5 );


setMoveKey( spep_0 + 151 -1, 1, -23.1, 28.7 , 0 );
setMoveKey( spep_0 + 152 -1, 1, -23.1, 28.7 , 0 );
setMoveKey( spep_0 + 153 -1, 1, -23.1, 28.7 , 0 );
setMoveKey( spep_0 + 154 -1, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_0 + 155 -1, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_0 + 156 -1, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_0 + 157 -1, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_0 + 158 -1, 1, -23.4, 28.4 , 0 );
setMoveKey( spep_0 + 159 -1, 1, -23.4, 28.4 , 0 );
setMoveKey( spep_0 + 160 -1, 1, -23.5, 28.1 , 0 );
setMoveKey( spep_0 + 161 -1, 1, -23.5, 28.1 , 0 );
setMoveKey( spep_0 + 162 -1, 1, -23.7, 27.7 , 0 );
setMoveKey( spep_0 + 163 -1, 1, -23.7, 27.7 , 0 );
setMoveKey( spep_0 + 164 -1, 1, -23.9, 27.4 , 0 );
setMoveKey( spep_0 + 165 -1, 1, -23.9, 27.4 , 0 );--
setMoveKey( spep_0 + 166 -1, 1, 54.3, -133.6 , 0 );
setMoveKey( spep_0 + 167 -1, 1, 54.3, -133.6 , 0 );
setMoveKey( spep_0 + 168 -1, 1, 69.3, -200.5 , 0 );
setMoveKey( spep_0 + 169 -1, 1, 69.3, -200.5 , 0 );
setMoveKey( spep_0 + 170 -1, 1, 54.7, -128.1 , 0 );
setMoveKey( spep_0 + 171 -1, 1, 54.7, -128.1 , 0 );
setMoveKey( spep_0 + 172 -1, 1, 40, -56.1 , 0 );
setMoveKey( spep_0 + 173 -1, 1, 40, -56.1 , 0 );
setMoveKey( spep_0 + 174 -1, 1, 65, -122.9 , 0 );
setMoveKey( spep_0 + 175 -1, 1, 65, -122.9 , 0 );
setMoveKey( spep_0 + 176 -1, 1, 45.8, 24 , 0 );
setMoveKey( spep_0 + 177 -1, 1, 45.8, 24 , 0 );
setMoveKey( spep_0 + 178 -1, 1, 45.8, 86.7 , 0 );
setMoveKey( spep_0 + 179 -1, 1, 45.8, 86.7 , 0 );
setMoveKey( spep_0 + 180 -1, 1, 58.2, 103.2 , 0 );
setMoveKey( spep_0 + 182 -1, 1, 49, 126.9 , 0 );
setMoveKey( spep_0 + 184 -1, 1, 60.5, 156.8 , 0 );
setMoveKey( spep_0 + 186 -1, 1, 52.1, 175.8 , 0 );
setMoveKey( spep_0 + 188 -1, 1, 63.8, 182.1 , 0 );
setMoveKey( spep_0 + 190 -1, 1, 63, 192 , 0 );
setMoveKey( spep_0 + 192 -1, 1, 57.6, 188.1 , 0 );
setMoveKey( spep_0 + 194 -1, 1, 57.6, 188.9 , 0 );
setMoveKey( spep_0 + 196 -1, 1, 57.6, 189.7 , 0 );
setMoveKey( spep_0 + 198 -1, 1, 57.7, 190.4 , 0 );
setMoveKey( spep_0 + 200 -1, 1, 57.7, 191.2 , 0 );
setMoveKey( spep_0 + 202 -1, 1, 57.7, 192 , 0 );
setMoveKey( spep_0 + 204 -1, 1, 57.8, 192.7 , 0 );
setMoveKey( spep_0 + 206 -1, 1, 53.6, 198.6 , 0 );
setMoveKey( spep_0 + 208 -1, 1, 64.2, 189.8 , 0 );
setMoveKey( spep_0 + 210 -1, 1, 57.9, 195 , 0 );
setMoveKey( spep_0 + 212 -1, 1, 57.9, 195.8 , 0 );
setMoveKey( spep_0 + 214 -1, 1, 58, 196.6 , 0 );
setMoveKey( spep_0 + 216 -1, 1, 58, 197.3 , 0 );
setMoveKey( spep_0 + 218 -1, 1, 58, 198.1 , 0 );
setMoveKey( spep_0 + 220 -1, 1, 58.1, 198.9 , 0 );
setMoveKey( spep_0 + 222 -1, 1, 58.1, 199.7 , 0 );
setMoveKey( spep_0 + 224 -1, 1, 58.2, 200.4 , 0 );
setMoveKey( spep_0 + 226 -1, 1, 58.2, 201.2 , 0 );
setMoveKey( spep_0 + 228 -1, 1, 58.3, 202 , 0 );
setMoveKey( spep_0 + 230 -1, 1, 58.3, 202 , 0 );

setScaleKey( spep_0 + 151 -1, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 152 -1, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 153 -1, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 154 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 155 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 156 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 157 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 158 -1, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 159 -1, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 160 -1, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 161 -1, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 162 -1, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 163 -1, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 164 -1, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 165 -1, 1, 2.27, 2.27 );--
setScaleKey( spep_0 + 166 -1, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 167 -1, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 168 -1, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 169 -1, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 170 -1, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 171 -1, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 172 -1, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 173 -1, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 174 -1, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 175 -1, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 176 -1, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 177 -1, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 178 -1, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 179 -1, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 180 -1, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 182 -1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 184 -1, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 186 -1, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 188 -1, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 190 -1, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 192 -1, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 194 -1, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 196 -1, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 198 -1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 200 -1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 202 -1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 204 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 206 -1, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 208 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 210 -1, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 212 -1, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 214 -1, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 216 -1, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 218 -1, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 220 -1, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 222 -1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 224 -1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 226 -1, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 228 -1, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 230 -1, 1, 1.16, 1.16 );

setRotateKey( spep_0 + 165 -1, 1, 0 );--
setRotateKey( spep_0 + 166 -1, 1, 6.2 );
setRotateKey( spep_0 + 167 -1, 1, 6.2 );
setRotateKey( spep_0 + 168 -1, 1, 6.2 );
setRotateKey( spep_0 + 169 -1, 1, 6.2 );
setRotateKey( spep_0 + 170 -1, 1, 6 );
setRotateKey( spep_0 + 171 -1, 1, 6 );
setRotateKey( spep_0 + 172 -1, 1, 5.8 );
setRotateKey( spep_0 + 173 -1, 1, 5.8 );
setRotateKey( spep_0 + 174 -1, 1, 5.4 );
setRotateKey( spep_0 + 175 -1, 1, 5.4 );
setRotateKey( spep_0 + 176 -1, 1, 1.6 );
setRotateKey( spep_0 + 177 -1, 1, 1.6 );
setRotateKey( spep_0 + 178 -1, 1, -1.5 );
setRotateKey( spep_0 + 179 -1, 1, -1.5 );
setRotateKey( spep_0 + 180 -1, 1, -2.8 );
setRotateKey( spep_0 + 182 -1, 1, -4.1 );
setRotateKey( spep_0 + 184 -1, 1, -5.2 );
setRotateKey( spep_0 + 186 -1, 1, -6.2 );
setRotateKey( spep_0 + 188 -1, 1, -7 );
setRotateKey( spep_0 + 190 -1, 1, -7 );
setRotateKey( spep_0 + 192 -1, 1, -7.1 );
setRotateKey( spep_0 + 194 -1, 1, -7.1 );
setRotateKey( spep_0 + 196 -1, 1, -7.2 );
setRotateKey( spep_0 + 198 -1, 1, -7.2 );
setRotateKey( spep_0 + 200 -1, 1, -7.3 );
setRotateKey( spep_0 + 204 -1, 1, -7.3 );
setRotateKey( spep_0 + 206 -1, 1, -7.4 );
setRotateKey( spep_0 + 208 -1, 1, -7.4 );
setRotateKey( spep_0 + 210 -1, 1, -7.5 );
setRotateKey( spep_0 + 214 -1, 1, -7.5 );
setRotateKey( spep_0 + 216 -1, 1, -7.6 );
setRotateKey( spep_0 + 218 -1, 1, -7.6 );
setRotateKey( spep_0 + 220 -1, 1, -7.7 );
setRotateKey( spep_0 + 224 -1, 1, -7.7 );
setRotateKey( spep_0 + 226 -1, 1, -7.8 );
setRotateKey( spep_0 + 230 -1, 1, -7.8 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 272 -1, 1, 1 );
setDisp( spep_0 + 294 -1, 1, 0 );
changeAnime( spep_0 + 272 -1, 1, 108 );

a1 = 30;
b1 = 60;
setMoveKey( spep_0 + 272 -1, 1, 207.1 +30, 123.2 -b1 , 0 );
setMoveKey( spep_0 + 273 -1, 1, 207.1 +30, 123.2 -b1 , 0 );
setMoveKey( spep_0 + 274 -1, 1, 391.2 +a1, 207.1 -b1 , 0 );
setMoveKey( spep_0 + 275 -1, 1, 391.2 +a1, 207.1 -b1 , 0 );
setMoveKey( spep_0 + 276 -1, 1, 166.7 +a1, 99.1 -b1 , 0 );
setMoveKey( spep_0 + 277 -1, 1, 166.7 +a1, 99.1 -b1 , 0 );
setMoveKey( spep_0 + 278 -1, 1, 218.6 +a1, 219.2 -b1 , 0 );
setMoveKey( spep_0 + 279 -1, 1, 218.6 +a1, 219.2 -b1 , 0 );
setMoveKey( spep_0 + 280 -1, 1, 168.3 +a1, 103 -b1 , 0 );
setMoveKey( spep_0 + 281 -1, 1, 168.3 +a1, 103 -b1 , 0 );
setMoveKey( spep_0 + 282 -1, 1, 163.2 +a1, 101.6 -b1 , 0 );
setMoveKey( spep_0 + 283 -1, 1, 163.2 +a1, 101.6 -b1 , 0 );
setMoveKey( spep_0 + 284 -1, 1, 191.3 +a1, 134.4 -b1 , 0 );
setMoveKey( spep_0 + 285 -1, 1, 191.3 +a1, 134.4 -b1 , 0 );
setMoveKey( spep_0 + 286 -1, 1, 281.7 +a1, 237.4 -b1 , 0 );
setMoveKey( spep_0 + 288 -1, 1, 415.4 +a1, 393.4 -b1 , 0 );
setMoveKey( spep_0 + 290 -1, 1, 553.3 +a1, 488.1 -b1 , 0 );
setMoveKey( spep_0 + 292 -1, 1, 673.4 +a1, 588.9 -b1 , 0 );
setMoveKey( spep_0 + 294 -1, 1, 673.4 +a1, 588.9 -b1 , 0 );

setScaleKey( spep_0 + 272 -1, 1, 4.646, 4.646 );
setScaleKey( spep_0 + 273 -1, 1, 4.646, 4.646 );
setScaleKey( spep_0 + 274 -1, 1, 8.1305, 8.1305 );
setScaleKey( spep_0 + 275 -1, 1, 8.1305, 8.1305 );
setScaleKey( spep_0 + 276 -1, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_0 + 277 -1, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_0 + 278 -1, 1, 5.106, 5.106 );
setScaleKey( spep_0 + 279 -1, 1, 5.106, 5.106 );
setScaleKey( spep_0 + 280 -1, 1, 4.186, 4.186 );
setScaleKey( spep_0 + 281 -1, 1, 4.186, 4.186 );
setScaleKey( spep_0 + 282 -1, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_0 + 283 -1, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_0 + 284 -1, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 285 -1, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 286 -1, 1, 4.117, 4.117 );
setScaleKey( spep_0 + 288 -1, 1, 4.093999999999999, 4.093999999999999 );
setScaleKey( spep_0 + 290 -1, 1, 4.071, 4.071 );
setScaleKey( spep_0 + 292 -1, 1, 4.0595, 4.0595 );
setScaleKey( spep_0 + 294 -1, 1, 4.0595, 4.0595 );

setRotateKey( spep_0 + 272 -1, 1, -47 );
setRotateKey( spep_0 + 294 -1, 1, -47 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 320 -1, 1, 1 );
setDisp( spep_0 + 372 -1, 1, 0 );
changeAnime( spep_0 + 320 -1, 1, 108 );
changeAnime( spep_0 + 350 -1, 1, 106 );

setMoveKey( spep_0 + 320 -1, 1, -388.1, -503.5 , 0 );
setMoveKey( spep_0 + 322 -1, 1, -258.6, -357.5 , 0 );
setMoveKey( spep_0 + 324 -1, 1, -129.1, -211.6 , 0 );
setMoveKey( spep_0 + 326 -1, 1, 0.4, -65.6 , 0 );
setMoveKey( spep_0 + 328 -1, 1, 9.5, -55.4 , 0 );
setMoveKey( spep_0 + 330 -1, 1, 17.8, -46.1 , 0 );
setMoveKey( spep_0 + 332 -1, 1, 25.4, -37.5 , 0 );
setMoveKey( spep_0 + 334 -1, 1, 32.3, -29.8 , 0 );
setMoveKey( spep_0 + 336 -1, 1, 38.4, -22.9 , 0 );
setMoveKey( spep_0 + 338 -1, 1, 43.8, -16.9 , 0 );
setMoveKey( spep_0 + 340 -1, 1, 48.5, -11.6 , 0 );
setMoveKey( spep_0 + 342 -1, 1, 52.4, -7.2 , 0 );
setMoveKey( spep_0 + 344 -1, 1, 55.6, -3.6 , 0 );
setMoveKey( spep_0 + 346 -1, 1, 58, -0.9 , 0 );
setMoveKey( spep_0 + 348 -1, 1, 59.7, 1.1 , 0 );
setMoveKey( spep_0 + 349 -1, 1, 59.7, 1.1 , 0 );--
setMoveKey( spep_0 + 350 -1, 1, 159.1, -128.6 , 0 );
setMoveKey( spep_0 + 351 -1, 1, 159.1, -128.6 , 0 );
setMoveKey( spep_0 + 352 -1, 1, 210.6, -188 , 0 );
setMoveKey( spep_0 + 353 -1, 1, 210.6, -188 , 0 );
setMoveKey( spep_0 + 354 -1, 1, 153.8, -150.7 , 0 );
setMoveKey( spep_0 + 355 -1, 1, 153.8, -150.7 , 0 );
setMoveKey( spep_0 + 356 -1, 1, 98.8, -105.8 , 0 );
setMoveKey( spep_0 + 357 -1, 1, 98.8, -105.8 , 0 );
setMoveKey( spep_0 + 358 -1, 1, 171.3, -199.4 , 0 );
setMoveKey( spep_0 + 359 -1, 1, 171.3, -199.4 , 0 );
setMoveKey( spep_0 + 360 -1, 1, 95.4, -120.2 , 0 );
setMoveKey( spep_0 + 361 -1, 1, 95.4, -120.2 , 0 );
setMoveKey( spep_0 + 362 -1, 1, 23.6, -154 , 0 );
setMoveKey( spep_0 + 364 -1, 1, -45, -176.3 , 0 );
setMoveKey( spep_0 + 366 -1, 1, -98.2, -335.2 , 0 );
setMoveKey( spep_0 + 368 -1, 1, -150.6, -492.8 , 0 );
setMoveKey( spep_0 + 370 -1, 1, -202.2, -649.4 , 0 );
setMoveKey( spep_0 + 372 -1, 1, -202.2, -649.4 , 0 );

setScaleKey( spep_0 + 320 -1, 1, 4.428, 4.428 );
setScaleKey( spep_0 + 328 -1, 1, 4.428, 4.428 );
setScaleKey( spep_0 + 330 -1, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 349 -1, 1, 4.44, 4.44 );--
setScaleKey( spep_0 + 350 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 351 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 352 -1, 1, 7.995000000000001, 7.995000000000001 );
setScaleKey( spep_0 + 353 -1, 1, 7.995000000000001, 7.995000000000001 );
setScaleKey( spep_0 + 354 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 355 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 356 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 357 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 358 -1, 1, 6.851, 6.851 );
setScaleKey( spep_0 + 359 -1, 1, 6.851, 6.851 );
setScaleKey( spep_0 + 360 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 361 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 362 -1, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 364 -1, 1, 3.653, 3.653 );
setScaleKey( spep_0 + 366 -1, 1, 3.6270000000000002, 3.6270000000000002 );
setScaleKey( spep_0 + 368 -1, 1, 3.601, 3.601 );
setScaleKey( spep_0 + 370 -1, 1, 3.575, 3.575 );
setScaleKey( spep_0 + 372 -1, 1, 3.575, 3.575 );

setRotateKey( spep_0 + 320 -1, 1, -46.9 );
setRotateKey( spep_0 + 332 -1, 1, -46.9 );
setRotateKey( spep_0 + 334 -1, 1, -47 );
setRotateKey( spep_0 + 349 -1, 1, -47 );--
setRotateKey( spep_0 + 350 -1, 1, -164.3 );
setRotateKey( spep_0 + 372 -1, 1, -164.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 404 -1, 1, 1 );
setDisp( spep_0 + 436 -1, 1, 0 );
changeAnime( spep_0 + 404 -1, 1, 106 );
changeAnime( spep_0 + 420 -1, 1, 107 );

setMoveKey( spep_0 + 404 -1, 1, 421.2, 751.7 , 0 );
setMoveKey( spep_0 + 406 -1, 1, 416.9, 739.5 , 0 );
setMoveKey( spep_0 + 408 -1, 1, 403.9, 702.9 , 0 );
setMoveKey( spep_0 + 410 -1, 1, 382.4, 641.8 , 0 );
setMoveKey( spep_0 + 412 -1, 1, 352.2, 556.2 , 0 );
setMoveKey( spep_0 + 414 -1, 1, 313.4, 446.2 , 0 );
setMoveKey( spep_0 + 416 -1, 1, 266, 311.8 , 0 );
setMoveKey( spep_0 + 418 -1, 1, 209.9, 152.9 , 0 );
setMoveKey( spep_0 + 419 -1, 1, 209.9, 152.9 , 0 );--
setMoveKey( spep_0 + 420 -1, 1, 123.6, 95 , 0 );
setMoveKey( spep_0 + 421 -1, 1, 123.6, 95 , 0 );
setMoveKey( spep_0 + 422 -1, 1, 173.3, 128.1 , 0 );
setMoveKey( spep_0 + 423 -1, 1, 173.3, 128.1 , 0 );
setMoveKey( spep_0 + 424 -1, 1, 224.8, 161.8 , 0 );
setMoveKey( spep_0 + 425 -1, 1, 224.8, 161.8 , 0 );
setMoveKey( spep_0 + 426 -1, 1, 130.9, 97.1 , 0 );
setMoveKey( spep_0 + 427 -1, 1, 130.9, 97.1 , 0 );
setMoveKey( spep_0 + 428 -1, 1, 200, 146.7 , 0 );
setMoveKey( spep_0 + 429 -1, 1, 200, 146.7 , 0 );
setMoveKey( spep_0 + 430 -1, 1, 135.8, 98.4 , 0 );
setMoveKey( spep_0 + 431 -1, 1, 135.8, 98.4 , 0 );
setMoveKey( spep_0 + 432 -1, 1, 321.9, 153.7 , 0 );
setMoveKey( spep_0 + 433 -1, 1, 321.9, 153.7 , 0 );
setMoveKey( spep_0 + 434 -1, 1, 495.1, 223.5 , 0 );
setMoveKey( spep_0 + 435 -1, 1, 495.1, 223.5 , 0 );
setMoveKey( spep_0 + 436 -1, 1, 495.1, 223.5 , 0 );

s3 = 0.6;
setScaleKey( spep_0 + 404 -1, 1, 2 +s3, 2 +s3 );
setScaleKey( spep_0 + 419 -1, 1, 2 +s3, 2 +s3 );--
setScaleKey( spep_0 + 420 -1, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 421 -1, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 422 -1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 423 -1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 424 -1, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 425 -1, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 426 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 427 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 428 -1, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 429 -1, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 430 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 431 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 432 -1, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 433 -1, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 434 -1, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 435 -1, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 436 -1, 1, 1.92, 1.92 );

setRotateKey( spep_0 + 404 -1, 1, -150 );
setRotateKey( spep_0 + 406 -1, 1, -150.1 );
setRotateKey( spep_0 + 408 -1, 1, -150.3 );
setRotateKey( spep_0 + 410 -1, 1, -150.6 );
setRotateKey( spep_0 + 412 -1, 1, -151 );
setRotateKey( spep_0 + 414 -1, 1, -151.6 );
setRotateKey( spep_0 + 416 -1, 1, -152.3 );
setRotateKey( spep_0 + 418 -1, 1, -153.2 );
setRotateKey( spep_0 + 419 -1, 1, -153.2 );--
setRotateKey( spep_0 + 420 -1, 1, -27.6 );
setRotateKey( spep_0 + 436 -1, 1, -27.6 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 448 -1, 1, 1 );
setDisp( spep_0 + 504 -1, 1, 0 );
changeAnime( spep_0 + 448 -1, 1, 106 );
changeAnime( spep_0 + 472 -1, 1, 107 );

setMoveKey( spep_0 + 448 -1, 1, -512.3, -142.3 , 0 );
setMoveKey( spep_0 + 450 -1, 1, -325.6, -62.8 , 0 );
setMoveKey( spep_0 + 452 -1, 1, -138.9, 16.6 , 0 );
setMoveKey( spep_0 + 454 -1, 1, -124.6, 21 , 0 );
setMoveKey( spep_0 + 456 -1, 1, -111.3, 25 , 0 );
setMoveKey( spep_0 + 458 -1, 1, -99.2, 28.7 , 0 );
setMoveKey( spep_0 + 460 -1, 1, -88.2, 32.1 , 0 );
setMoveKey( spep_0 + 462 -1, 1, -78.2, 35.1 , 0 );
setMoveKey( spep_0 + 464 -1, 1, -69.4, 37.8 , 0 );
setMoveKey( spep_0 + 466 -1, 1, -61.7, 40.2 , 0 );
setMoveKey( spep_0 + 467 -1, 1, -61.7, 40.2 , 0 );
setMoveKey( spep_0 + 468 -1, 1, -64.7, 49.6 , 0 );
setMoveKey( spep_0 + 469 -1, 1, -64.7, 49.6 , 0 );
setMoveKey( spep_0 + 470 -1, 1, -46.1, -9.1 , 0 );
setMoveKey( spep_0 + 471 -1, 1, -46.1, -9.1 , 0 );--
setMoveKey( spep_0 + 472 -1, 1, 112, -65.4 , 0 );
setMoveKey( spep_0 + 473 -1, 1, 112, -65.4 , 0 );
setMoveKey( spep_0 + 474 -1, 1, 25.4, 54.1 , 0 );
setMoveKey( spep_0 + 475 -1, 1, 25.4, 54.1 , 0 );
setMoveKey( spep_0 + 476 -1, 1, 105.2, -89 , 0 );
setMoveKey( spep_0 + 477 -1, 1, 105.2, -89 , 0 );
setMoveKey( spep_0 + 478 -1, 1, 21.8, 43.1 , 0 );
setMoveKey( spep_0 + 479 -1, 1, 21.8, 43.1 , 0 );
setMoveKey( spep_0 + 480 -1, 1, 33.9, 34.1 , 0 );
setMoveKey( spep_0 + 481 -1, 1, 33.9, 34.1 , 0 );
setMoveKey( spep_0 + 482 -1, 1, 14.4, 53.8 , 0 );
setMoveKey( spep_0 + 483 -1, 1, 14.4, 53.8 , 0 );
setMoveKey( spep_0 + 484 -1, 1, 39.6, 47.9 , 0 );
setMoveKey( spep_0 + 485 -1, 1, 39.6, 47.9 , 0 );
setMoveKey( spep_0 + 486 -1, 1, 21.4, 35.3 , 0 );
setMoveKey( spep_0 + 487 -1, 1, 21.4, 35.3 , 0 );
setMoveKey( spep_0 + 488 -1, 1, 42.7, 33.2 , 0 );
setMoveKey( spep_0 + 489 -1, 1, 42.7, 33.2 , 0 );
setMoveKey( spep_0 + 490 -1, 1, 24.7, 52.8 , 0 );
setMoveKey( spep_0 + 491 -1, 1, 24.7, 52.8 , 0 );
setMoveKey( spep_0 + 492 -1, 1, 51.4, 46.6 , 0 );
setMoveKey( spep_0 + 493 -1, 1, 51.4, 46.6 , 0 );
setMoveKey( spep_0 + 494 -1, 1, 42.4, 40.9 , 0 );
setMoveKey( spep_0 + 495 -1, 1, 42.4, 40.9 , 0 );
setMoveKey( spep_0 + 496 -1, 1, 154.6, 28.9 , 0 );
setMoveKey( spep_0 + 498 -1, 1, 268.9, 16.6 , 0 );
setMoveKey( spep_0 + 500 -1, 1, 385.3, 4.1 , 0 );
setMoveKey( spep_0 + 502 -1, 1, 503.8, -8.6 , 0 );
setMoveKey( spep_0 + 504 -1, 1, 503.8, -8.6 , 0 );

setScaleKey( spep_0 + 448 -1, 1, 2.132, 2.132 );
setScaleKey( spep_0 + 466 -1, 1, 2.132, 2.132 );
setScaleKey( spep_0 + 467 -1, 1, 2.132, 2.132 );
setScaleKey( spep_0 + 468 -1, 1, 2.509, 2.509 );
setScaleKey( spep_0 + 469 -1, 1, 2.509, 2.509 );
setScaleKey( spep_0 + 470 -1, 1, 3.445, 3.445 );
setScaleKey( spep_0 + 471 -1, 1, 3.445, 3.445 );--
setScaleKey( spep_0 + 472 -1, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 473 -1, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 474 -1, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 475 -1, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 476 -1, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 477 -1, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 478 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 479 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 486 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 487 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 488 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 489 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 494 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 495 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 496 -1, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 498 -1, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 500 -1, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 502 -1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 504 -1, 1, 1.14, 1.14 );

setRotateKey( spep_0 + 448 -1, 1, -6 );
setRotateKey( spep_0 + 471 -1, 1, -6 );--
setRotateKey( spep_0 + 472 -1, 1, -2.3 );
setRotateKey( spep_0 + 504 -1, 1, -2.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 602 -1, 1, 1 );
setDisp( spep_0 + 650 -1, 1, 0 );
changeAnime( spep_0 + 602 -1, 1, 106 );
changeAnime( spep_0 + 624 -1, 1, 108 );

setMoveKey( spep_0 + 602 -1, 1, -391, 256.2 , 0 );
setMoveKey( spep_0 + 604 -1, 1, -340.2, 232 , 0 );
setMoveKey( spep_0 + 606 -1, 1, -289.4, 207.9 , 0 );
setMoveKey( spep_0 + 608 -1, 1, -238.5, 183.7 , 0 );
setMoveKey( spep_0 + 610 -1, 1, -187.7, 159.5 , 0 );
setMoveKey( spep_0 + 612 -1, 1, -136.9, 135.4 , 0 );
setMoveKey( spep_0 + 614 -1, 1, -86, 111.2 , 0 );
setMoveKey( spep_0 + 616 -1, 1, -35.2, 87 , 0 );
setMoveKey( spep_0 + 618 -1, 1, 15.6, 62.8 , 0 );
setMoveKey( spep_0 + 620 -1, 1, 66.5, 38.7 , 0 );
setMoveKey( spep_0 + 622 -1, 1, 117.3, 14.5 , 0 );
setMoveKey( spep_0 + 623 -1, 1, 117.3, 14.5 , 0 );--
setMoveKey( spep_0 + 624 -1, 1, 67.2, 26 , 0 );
setMoveKey( spep_0 + 625 -1, 1, 67.2, 26 , 0 );
setMoveKey( spep_0 + 626 -1, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_0 + 627 -1, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_0 + 628 -1, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_0 + 629 -1, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_0 + 630 -1, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_0 + 631 -1, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_0 + 632 -1, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_0 + 633 -1, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_0 + 634 -1, 1, 72, -6.7 , 0 );
setMoveKey( spep_0 + 635 -1, 1, 72, -6.7 , 0 );
setMoveKey( spep_0 + 636 -1, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_0 + 637 -1, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_0 + 638 -1, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_0 + 639 -1, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_0 + 640 -1, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_0 + 641 -1, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_0 + 642 -1, 1, 205.8, -6.7 , 0 );
setMoveKey( spep_0 + 644 -1, 1, 315.3, 5.6 , 0 );
setMoveKey( spep_0 + 646 -1, 1, 446.2, 0.3 , 0 );
setMoveKey( spep_0 + 648 -1, 1, 577.1, 5.1 , 0 );
setMoveKey( spep_0 + 650 -1, 1, 577.1, 5.1 , 0 );

setScaleKey( spep_0 + 602 -1, 1, 1.656, 1.656 );
setScaleKey( spep_0 + 623 -1, 1, 1.656, 1.656 );--
setScaleKey( spep_0 + 624 -1, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 625 -1, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 626 -1, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 627 -1, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 628 -1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 629 -1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 630 -1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 631 -1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 632 -1, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 650 -1, 1, 1.95, 1.95 );

setRotateKey( spep_0 + 602 -1, 1, -8.7 );
setRotateKey( spep_0 + 623 -1, 1, -8.7 );--
setRotateKey( spep_0 + 624 -1, 1, -14 );
setRotateKey( spep_0 + 650 -1, 1, -14 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 670 -1, 1, 1 );
setDisp( spep_0 + 730 -1, 1, 0 );
changeAnime( spep_0 + 670 -1, 1, 5 );

a4 =30;
setMoveKey( spep_0 + 670 -1, 1, -174.6 -a4, -337.2 , 0 );
setMoveKey( spep_0 + 672 -1, 1, -113.8 -a4, -279.8 , 0 );
setMoveKey( spep_0 + 674 -1, 1, -26.9 -a4, -251.4 , 0 );
setMoveKey( spep_0 + 676 -1, 1, 42.9 -a4, -188 , 0 );
setMoveKey( spep_0 + 678 -1, 1, 94.6 -a4, -160 , 0 );
setMoveKey( spep_0 + 680 -1, 1, 169.1 -a4, -105.2 , 0 );
setMoveKey( spep_0 + 682 -1, 1, 183.7 -a4, -100.7 , 0 );
setMoveKey( spep_0 + 684 -1, 1, 188.4 -a4, -87.1 , 0 );
setMoveKey( spep_0 + 686 -1, 1, 197.9 -a4, -86.1 , 0 );
setMoveKey( spep_0 + 688 -1, 1, 212.9 -a4, -75.4 , 0 );
setMoveKey( spep_0 + 690 -1, 1, 219.9 -a4, -76.1 , 0 );
setMoveKey( spep_0 + 692 -1, 1, 220.4 -a4, -65.2 , 0 );
setMoveKey( spep_0 + 694 -1, 1, 225.7 -a4, -66.8 , 0 );
setMoveKey( spep_0 + 696 -1, 1, 236.5 -a4, -58.6 , 0 );
setMoveKey( spep_0 + 698 -1, 1, 236.6 -a4, -63.6 , 0 );
setMoveKey( spep_0 + 700 -1, 1, 231.2 -a4, -56.3 , 0 );
setMoveKey( spep_0 + 702 -1, 1, 231.5 -a4, -60.9 , 0 );
setMoveKey( spep_0 + 704 -1, 1, 238.4 -a4, -55.1 , 0 );
setMoveKey( spep_0 + 706 -1, 1, 238.3 -a4, -60.3 , 0 );
setMoveKey( spep_0 + 708 -1, 1, 232.7 -a4, -53.2 , 0 );
setMoveKey( spep_0 + 710 -1, 1, 232.9 -a4, -58.1 , 0 );
setMoveKey( spep_0 + 712 -1, 1, 239.6 -a4, -52.6 , 0 );
setMoveKey( spep_0 + 714 -1, 1, 239.4 -a4, -58 , 0 );
setMoveKey( spep_0 + 716 -1, 1, 233.7 -a4, -51.2 , 0 );
setMoveKey( spep_0 + 718 -1, 1, 234.3 -a4, -51.4 , 0 );
setMoveKey( spep_0 + 720 -1, 1, 234.9 -a4, -51.5 , 0 );
setMoveKey( spep_0 + 722 -1, 1, 235.4 -a4, -51.8 , 0 );
setMoveKey( spep_0 + 724 -1, 1, 235.9 -a4, -52.1 , 0 );
setMoveKey( spep_0 + 726 -1, 1, 236.4 -a4, -52.4 , 0 );
setMoveKey( spep_0 + 728 -1, 1, 236.9 -a4, -52.8 , 0 );
setMoveKey( spep_0 + 730 -1, 1, 236.9 -a4, -52.8 , 0 );

setScaleKey( spep_0 + 670 -1, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 672 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 674 -1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 676 -1, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 678 -1, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 680 -1, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 682 -1, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 684 -1, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 686 -1, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 688 -1, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 690 -1, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 692 -1, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 694 -1, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 696 -1, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 698 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 700 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 702 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 706 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 708 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 712 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 714 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 730 -1, 1, 0.31, 0.31 );

r1 =41;
setRotateKey( spep_0 + 670 -1, 1, 95.7 -r1 );
setRotateKey( spep_0 + 672 -1, 1, 95.7 -r1 );
setRotateKey( spep_0 + 674 -1, 1, 95.6 -r1 );
setRotateKey( spep_0 + 730 -1, 1, 95.6 -r1 );

-- ** 音 ** --
--殴る
SE009 = playSeVer2( spep_0 + 162, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 162, 1010, "", 0, 0, 0, -1);

--右側から向かっていく
SE011 = playSeVer2( spep_0 + 198, 1117, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 198, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_0 + 222, 1116, "",spep_0 + 270, 0, 14, -1);
SE014 = playSeVer2( spep_0 + 240, 1004, "", 0, 0, 0, -1);

--裏拳
SE015 = playSeVer2( spep_0 + 262, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 292, 1121, "",spep_0 + 374, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 74 );

--瞬間移動
SE018 = playSeVer2( spep_0 + 322, 1109, "", 0, 0, 0, -1);

--叩き落とす
SE019 = playSeVer2( spep_0 + 334, 1123, "", 0, 0, 0, -1);

--裏拳２
SE020 = playSeVer2( spep_0 + 406, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE020, 127 );
SE021 = playSeVer2( spep_0 + 412, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 412, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE022, 79 );
SE023 = playSeVer2( spep_0 + 416, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE024 = playSeVer2( spep_0 + 458, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 468, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 470, 1153, "", 0, 0, 0, -1);

--構える
SE027 = playSeVer2( spep_0 + 526, 1013, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 526, 1189, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_0 + 558, 1182, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 558, 9, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 558, 1117, "", 0, 0, 0, -1);

--タックル
SE032 = playSeVer2( spep_0 + 620, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE032, 89 );
SE033 = playSeVer2( spep_0 + 620, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE033, 79 );
SE034 = playSeVer2( spep_0 + 620, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE034, 72 );

--敵ひきづられ飛んでいく
SE035 = playSeVer2( spep_0 + 664, 1159, "",spep_0 + 820, 14, 90, -1);
SE036 = playSeVer2( spep_0 + 664, 1044, "",spep_0 + 762, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 664, SE036, 174 );
SE037 = playSeVer2( spep_0 + 664, 1168, "",spep_0 + 764, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 664, SE037, 129 );
SE038 = playSeVer2( spep_0 + 670, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE038, 141 );
SE039 = playSeVer2( spep_0 + 674, 1011, "", 0, 18, 0, -1);
SE040 = playSeVer2( spep_0 + 680, 1197, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 692, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 692, SE041, 81 );
SE042 = playSeVer2( spep_0 + 702, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 702, SE042, 63 );
SE043 = playSeVer2( spep_0 + 712, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 712, SE043, 52 );

--腕上げる
SE044 = playSeVer2( spep_0 + 742, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE045 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜める
SE046 = playSeVer2( spep_0 + 760, 1154, "",spep_0 + 860, 0, 14, -1);
SE047 = playSeVer2( spep_0 + 760, 1296, "",spep_0 + 860, 0, 14, -1);
setPitch( spep_0 + 760, SE047, -200 );
setTimeStretch( SE047, 0.87, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 844 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 844;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--気弾発射
SE049 = playSeVer2( spep_1 + 88, 1027, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 88, 1022, "",spep_1 + 204, 0, 42, -1);
SE051 = playSeVer2( spep_1 + 88, 1177, "",spep_1 + 204, 0, 42, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射〜フィニッシュまで(222F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾発射〜フィニッシュまで	ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 222, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 222, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 222, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 222, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾発射〜フィニッシュまで	ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 222, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 222, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 222, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 222, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 60, 1, 1 );
setDisp( spep_2 -1 + 114, 1, 0 );
changeAnime( spep_2 -1 + 60, 1, 107 );

setBlendColor( spep_2 -1 + 60, 1, 5, 1.0, 0.2, 0.6, 0.9 );
setBlendColor( spep_2 -1 + 113, 1, 5, 1.0, 0.2, 0.6, 0.9 );
setBlendColor( spep_2 -1 + 114, 1, 5, 1.0, 0.2, 0.6, 0 );

setMoveKey( spep_2 -1 + 60, 1, 47.6, -181.4 , 0 );
setMoveKey( spep_2 -1 + 62, 1, 47.6, -183.5 , 0 );
setMoveKey( spep_2 -1 + 64, 1, 46.5, -184.5 , 0 );
setMoveKey( spep_2 -1 + 66, 1, 46.5, -186.5 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 48.8, -190.6 , 0 );
setMoveKey( spep_2 -1 + 70, 1, 48.8, -192.5 , 0 );
setMoveKey( spep_2 -1 + 72, 1, 49.1, -190.3 , 0 );
setMoveKey( spep_2 -1 + 74, 1, 43.9, -198.5 , 0 );
setMoveKey( spep_2 -1 + 76, 1, 50.1, -196.6 , 0 );
setMoveKey( spep_2 -1 + 78, 1, 47.5, -195.6 , 0 );
setMoveKey( spep_2 -1 + 80, 1, 46.5, -198.3 , 0 );
setMoveKey( spep_2 -1 + 82, 1, 46.5, -199.8 , 0 );
setMoveKey( spep_2 -1 + 84, 1, 51.4, -199.5 , 0 );
setMoveKey( spep_2 -1 + 86, 1, 46.2, -207.2 , 0 );
setMoveKey( spep_2 -1 + 88, 1, 47.8, -207.1 , 0 );
setMoveKey( spep_2 -1 + 90, 1, 43.9, -209.6 , 0 );
setMoveKey( spep_2 -1 + 92, 1, 50.1, -207.1 , 0 );
setMoveKey( spep_2 -1 + 94, 1, 47.5, -205.4 , 0 );
setMoveKey( spep_2 -1 + 96, 1, 46.5, -209.9 , 0 );
setMoveKey( spep_2 -1 + 98, 1, 46.5, -210.8 , 0 );
setMoveKey( spep_2 -1 + 100, 1, 51.8, -205.4 , 0 );
setMoveKey( spep_2 -1 + 102, 1, 46.6, -212.6 , 0 );
setMoveKey( spep_2 -1 + 104, 1, 47.8, -211.5 , 0 );
setMoveKey( spep_2 -1 + 106, 1, 45.2, -209.5 , 0 );
setMoveKey( spep_2 -1 + 108, 1, 48.8, -213.9 , 0 );
setMoveKey( spep_2 -1 + 110, 1, 53.3, -211.1 , 0 );
setMoveKey( spep_2 -1 + 112, 1, 44.4, -216.1 , 0 );
setMoveKey( spep_2 -1 + 114, 1, 44.4, -216.1 , 0 );

setScaleKey( spep_2 -1 + 60, 1, 0.66, 0.66 );
setScaleKey( spep_2 -1 + 62, 1, 0.67, 0.67 );
setScaleKey( spep_2 -1 + 64, 1, 0.68, 0.68 );
setScaleKey( spep_2 -1 + 66, 1, 0.69, 0.69 );
setScaleKey( spep_2 -1 + 68, 1, 0.7, 0.7 );
setScaleKey( spep_2 -1 + 70, 1, 0.71, 0.71 );
setScaleKey( spep_2 -1 + 72, 1, 0.73, 0.73 );
setScaleKey( spep_2 -1 + 74, 1, 0.74, 0.74 );
setScaleKey( spep_2 -1 + 76, 1, 0.75, 0.75 );
setScaleKey( spep_2 -1 + 78, 1, 0.75, 0.75 );
setScaleKey( spep_2 -1 + 80, 1, 0.76, 0.76 );
setScaleKey( spep_2 -1 + 82, 1, 0.77, 0.77 );
setScaleKey( spep_2 -1 + 84, 1, 0.78, 0.78 );
setScaleKey( spep_2 -1 + 86, 1, 0.79, 0.79 );
setScaleKey( spep_2 -1 + 88, 1, 0.8, 0.8 );
setScaleKey( spep_2 -1 + 90, 1, 0.8, 0.8 );
setScaleKey( spep_2 -1 + 92, 1, 0.81, 0.81 );
setScaleKey( spep_2 -1 + 94, 1, 0.81, 0.81 );
setScaleKey( spep_2 -1 + 96, 1, 0.82, 0.82 );
setScaleKey( spep_2 -1 + 98, 1, 0.82, 0.82 );
setScaleKey( spep_2 -1 + 100, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 102, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 104, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 108, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_2 -1 + 114, 1, 0.85, 0.85 );

setRotateKey( spep_2 -1 + 60, 1, 42.4 );
setRotateKey( spep_2 -1 + 114, 1, 42.4 );

-- ** 音 ** --
--気弾発射
SE052 = playSeVer2( spep_2 + 2, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE052, 60 );

--気弾に飲まれて向かってくる
SE053 = playSeVer2( spep_2 + 54, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE053, 68 );
SE054 = playSeVer2( spep_2 + 54, 1044, "", 0, 56, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE054, 316 );
SE055 = playSeVer2( spep_2 + 62, 1024, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 72, 1258, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 112 );
endPhase( spep_2 + 212 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜カードカットインまで(844F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --開幕〜カードカットインまで    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 844, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 844, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 844, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 844 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 844, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --開幕〜カードカットインまで ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 844, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 844, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 844, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 844 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 844, first_b, 0 );

spep_x = spep_0 + 756;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 136 -1, 1, 1 );
changeAnime( spep_0 + 136 -1, 1, 17 );

setMoveKey( spep_0 + 136 -1, 1, 22.9, 28.7 , 0 );
setMoveKey( spep_0 + 141 -1, 1, 22.9, 28.7 , 0 );
setMoveKey( spep_0 + 142 -1, 1, 23, 28.7 , 0 );
setMoveKey( spep_0 + 149 -1, 1, 23, 28.7 , 0 );
setMoveKey( spep_0 + 150 -1, 1, 23.1, 28.7 , 0 );

setScaleKey( spep_0 + 136 -1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 139 -1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 140 -1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 141 -1, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 142 -1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 143 -1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 144 -1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 145 -1, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 146 -1, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 147 -1, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 148 -1, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 149 -1, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 150 -1, 1, 1.28, 1.28 );

setRotateKey( spep_0 + 136 -1, 1, -0 );

-- ** 音 ** --
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 82 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 81 );

--炎飲まれる
SE004 = playSeVer2( spep_0 + 86, 1258, "",spep_0 + 178, 18, 48, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 60 );
setStartTimeMs( SE004,  400 );
SE005 = playSeVer2( spep_0 + 82, 1014, "", 0, 20, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 130, 1182, "",spep_0 + 192, 0, 22, -1);
SE007 = playSeVer2( spep_0 + 130, 1117, "",spep_0 + 190, 0, 18, -1);
SE008 = playSeVer2( spep_0 + 130, 9, "",spep_0 + 190, 0, 18, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 23.1, 28.7 , 0 );
    setMoveKey( SP_dodge + 1, 1, 23.1, 28.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, 23.1, 28.7 , 0 );
    setMoveKey( SP_dodge + 3, 1, 23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 5, 1, 23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 23.2, 28.7 , 0 );
    setMoveKey( SP_dodge + 7, 1, 23.4, 28.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 23.4, 28.4 , 0 );
    setMoveKey( SP_dodge + 9, 1, 23.5, 28.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 23.5, 28.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.28, 1.28 );
    setScaleKey( SP_dodge + 1, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 2, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 3, 1, 1.34, 1.34 );
    setScaleKey( SP_dodge + 4, 1, 1.34, 1.34 );
    setScaleKey( SP_dodge + 5, 1, 1.38, 1.38 );
    setScaleKey( SP_dodge + 6, 1, 1.38, 1.38 );
    setScaleKey( SP_dodge + 7, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 8, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 9, 1, 1.79, 1.79 );
    setScaleKey( SP_dodge + 10, 1, 1.79, 1.79 );

    setRotateKey( SP_dodge + 0, 1, -0 );
    setRotateKey( SP_dodge + 10, 1, -0 );  
    
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 230 -1, 1, 0 );
changeAnime( spep_0 + 166 -1, 1, 105 );


setMoveKey( spep_0 + 151 -1, 1, 23.1, 28.7 , 0 );
setMoveKey( spep_0 + 152 -1, 1, 23.1, 28.7 , 0 );
setMoveKey( spep_0 + 153 -1, 1, 23.1, 28.7 , 0 );
setMoveKey( spep_0 + 154 -1, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_0 + 155 -1, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_0 + 156 -1, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_0 + 157 -1, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_0 + 158 -1, 1, 23.4, 28.4 , 0 );
setMoveKey( spep_0 + 159 -1, 1, 23.4, 28.4 , 0 );
setMoveKey( spep_0 + 160 -1, 1, 23.5, 28.1 , 0 );
setMoveKey( spep_0 + 161 -1, 1, 23.5, 28.1 , 0 );
setMoveKey( spep_0 + 162 -1, 1, 23.7, 27.7 , 0 );
setMoveKey( spep_0 + 163 -1, 1, 23.7, 27.7 , 0 );
setMoveKey( spep_0 + 164 -1, 1, 23.9, 27.4 , 0 );
setMoveKey( spep_0 + 165 -1, 1, 23.9, 27.4 , 0 );--
setMoveKey( spep_0 + 166 -1, 1, -54.3, -133.6 , 0 );
setMoveKey( spep_0 + 167 -1, 1, -54.3, -133.6 , 0 );
setMoveKey( spep_0 + 168 -1, 1, -69.3, -200.5 , 0 );
setMoveKey( spep_0 + 169 -1, 1, -69.3, -200.5 , 0 );
setMoveKey( spep_0 + 170 -1, 1, -54.7, -128.1 , 0 );
setMoveKey( spep_0 + 171 -1, 1, -54.7, -128.1 , 0 );
setMoveKey( spep_0 + 172 -1, 1, -40, -56.1 , 0 );
setMoveKey( spep_0 + 173 -1, 1, -40, -56.1 , 0 );
setMoveKey( spep_0 + 174 -1, 1, -65, -122.9 , 0 );
setMoveKey( spep_0 + 175 -1, 1, -65, -122.9 , 0 );
setMoveKey( spep_0 + 176 -1, 1, -45.8, 24 , 0 );
setMoveKey( spep_0 + 177 -1, 1, -45.8, 24 , 0 );
setMoveKey( spep_0 + 178 -1, 1, -45.8, 86.7 , 0 );
setMoveKey( spep_0 + 179 -1, 1, -45.8, 86.7 , 0 );
setMoveKey( spep_0 + 180 -1, 1, -58.2, 103.2 , 0 );
setMoveKey( spep_0 + 182 -1, 1, -49, 126.9 , 0 );
setMoveKey( spep_0 + 184 -1, 1, -60.5, 156.8 , 0 );
setMoveKey( spep_0 + 186 -1, 1, -52.1, 175.8 , 0 );
setMoveKey( spep_0 + 188 -1, 1, -63.8, 182.1 , 0 );
setMoveKey( spep_0 + 190 -1, 1, -63, 192 , 0 );
setMoveKey( spep_0 + 192 -1, 1, -57.6, 188.1 , 0 );
setMoveKey( spep_0 + 194 -1, 1, -57.6, 188.9 , 0 );
setMoveKey( spep_0 + 196 -1, 1, -57.6, 189.7 , 0 );
setMoveKey( spep_0 + 198 -1, 1, -57.7, 190.4 , 0 );
setMoveKey( spep_0 + 200 -1, 1, -57.7, 191.2 , 0 );
setMoveKey( spep_0 + 202 -1, 1, -57.7, 192 , 0 );
setMoveKey( spep_0 + 204 -1, 1, -57.8, 192.7 , 0 );
setMoveKey( spep_0 + 206 -1, 1, -53.6, 198.6 , 0 );
setMoveKey( spep_0 + 208 -1, 1, -64.2, 189.8 , 0 );
setMoveKey( spep_0 + 210 -1, 1, -57.9, 195 , 0 );
setMoveKey( spep_0 + 212 -1, 1, -57.9, 195.8 , 0 );
setMoveKey( spep_0 + 214 -1, 1, -58, 196.6 , 0 );
setMoveKey( spep_0 + 216 -1, 1, -58, 197.3 , 0 );
setMoveKey( spep_0 + 218 -1, 1, -58, 198.1 , 0 );
setMoveKey( spep_0 + 220 -1, 1, -58.1, 198.9 , 0 );
setMoveKey( spep_0 + 222 -1, 1, -58.1, 199.7 , 0 );
setMoveKey( spep_0 + 224 -1, 1, -58.2, 200.4 , 0 );
setMoveKey( spep_0 + 226 -1, 1, -58.2, 201.2 , 0 );
setMoveKey( spep_0 + 228 -1, 1, -58.3, 202 , 0 );
setMoveKey( spep_0 + 230 -1, 1, -58.3, 202 , 0 );

setScaleKey( spep_0 + 151 -1, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 152 -1, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 153 -1, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 154 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 155 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 156 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 157 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 158 -1, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 159 -1, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 160 -1, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 161 -1, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 162 -1, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 163 -1, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 164 -1, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 165 -1, 1, 2.27, 2.27 );--
setScaleKey( spep_0 + 166 -1, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 167 -1, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 168 -1, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 169 -1, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 170 -1, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 171 -1, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 172 -1, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 173 -1, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 174 -1, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 175 -1, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 176 -1, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 177 -1, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 178 -1, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 179 -1, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 180 -1, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 182 -1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 184 -1, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 186 -1, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 188 -1, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 190 -1, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 192 -1, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 194 -1, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 196 -1, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 198 -1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 200 -1, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 202 -1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 204 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 206 -1, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 208 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 210 -1, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 212 -1, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 214 -1, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 216 -1, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 218 -1, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 220 -1, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 222 -1, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 224 -1, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 226 -1, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 228 -1, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 230 -1, 1, 1.16, 1.16 );

setRotateKey( spep_0 + 165 -1, 1, -0 );--
setRotateKey( spep_0 + 166 -1, 1, -6.2 );
setRotateKey( spep_0 + 167 -1, 1, -6.2 );
setRotateKey( spep_0 + 168 -1, 1, -6.2 );
setRotateKey( spep_0 + 169 -1, 1, -6.2 );
setRotateKey( spep_0 + 170 -1, 1, -6 );
setRotateKey( spep_0 + 171 -1, 1, -6 );
setRotateKey( spep_0 + 172 -1, 1, -5.8 );
setRotateKey( spep_0 + 173 -1, 1, -5.8 );
setRotateKey( spep_0 + 174 -1, 1, -5.4 );
setRotateKey( spep_0 + 175 -1, 1, -5.4 );
setRotateKey( spep_0 + 176 -1, 1, -1.6 );
setRotateKey( spep_0 + 177 -1, 1, -1.6 );
setRotateKey( spep_0 + 178 -1, 1, 1.5 );
setRotateKey( spep_0 + 179 -1, 1, 1.5 );
setRotateKey( spep_0 + 180 -1, 1, 2.8 );
setRotateKey( spep_0 + 182 -1, 1, 4.1 );
setRotateKey( spep_0 + 184 -1, 1, 5.2 );
setRotateKey( spep_0 + 186 -1, 1, 6.2 );
setRotateKey( spep_0 + 188 -1, 1, 7 );
setRotateKey( spep_0 + 190 -1, 1, 7 );
setRotateKey( spep_0 + 192 -1, 1, 7.1 );
setRotateKey( spep_0 + 194 -1, 1, 7.1 );
setRotateKey( spep_0 + 196 -1, 1, 7.2 );
setRotateKey( spep_0 + 198 -1, 1, 7.2 );
setRotateKey( spep_0 + 200 -1, 1, 7.3 );
setRotateKey( spep_0 + 204 -1, 1, 7.3 );
setRotateKey( spep_0 + 206 -1, 1, 7.4 );
setRotateKey( spep_0 + 208 -1, 1, 7.4 );
setRotateKey( spep_0 + 210 -1, 1, 7.5 );
setRotateKey( spep_0 + 214 -1, 1, 7.5 );
setRotateKey( spep_0 + 216 -1, 1, 7.6 );
setRotateKey( spep_0 + 218 -1, 1, 7.6 );
setRotateKey( spep_0 + 220 -1, 1, 7.7 );
setRotateKey( spep_0 + 224 -1, 1, 7.7 );
setRotateKey( spep_0 + 226 -1, 1, 7.8 );
setRotateKey( spep_0 + 230 -1, 1, 7.8 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 272 -1, 1, 1 );
setDisp( spep_0 + 294 -1, 1, 0 );
changeAnime( spep_0 + 272 -1, 1, 108 );

a1 = 30;
b1 = 60;
setMoveKey( spep_0 + 272 -1, 1, 207.1 +30, 123.2 -b1 , 0 );
setMoveKey( spep_0 + 273 -1, 1, 207.1 +30, 123.2 -b1 , 0 );
setMoveKey( spep_0 + 274 -1, 1, 391.2 +a1, 207.1 -b1 , 0 );
setMoveKey( spep_0 + 275 -1, 1, 391.2 +a1, 207.1 -b1 , 0 );
setMoveKey( spep_0 + 276 -1, 1, 166.7 +a1, 99.1 -b1 , 0 );
setMoveKey( spep_0 + 277 -1, 1, 166.7 +a1, 99.1 -b1 , 0 );
setMoveKey( spep_0 + 278 -1, 1, 218.6 +a1, 219.2 -b1 , 0 );
setMoveKey( spep_0 + 279 -1, 1, 218.6 +a1, 219.2 -b1 , 0 );
setMoveKey( spep_0 + 280 -1, 1, 168.3 +a1, 103 -b1 , 0 );
setMoveKey( spep_0 + 281 -1, 1, 168.3 +a1, 103 -b1 , 0 );
setMoveKey( spep_0 + 282 -1, 1, 163.2 +a1, 101.6 -b1 , 0 );
setMoveKey( spep_0 + 283 -1, 1, 163.2 +a1, 101.6 -b1 , 0 );
setMoveKey( spep_0 + 284 -1, 1, 191.3 +a1, 134.4 -b1 , 0 );
setMoveKey( spep_0 + 285 -1, 1, 191.3 +a1, 134.4 -b1 , 0 );
setMoveKey( spep_0 + 286 -1, 1, 281.7 +a1, 237.4 -b1 , 0 );
setMoveKey( spep_0 + 288 -1, 1, 415.4 +a1, 393.4 -b1 , 0 );
setMoveKey( spep_0 + 290 -1, 1, 553.3 +a1, 488.1 -b1 , 0 );
setMoveKey( spep_0 + 292 -1, 1, 673.4 +a1, 588.9 -b1 , 0 );
setMoveKey( spep_0 + 294 -1, 1, 673.4 +a1, 588.9 -b1 , 0 );

setScaleKey( spep_0 + 272 -1, 1, 4.646, 4.646 );
setScaleKey( spep_0 + 273 -1, 1, 4.646, 4.646 );
setScaleKey( spep_0 + 274 -1, 1, 8.1305, 8.1305 );
setScaleKey( spep_0 + 275 -1, 1, 8.1305, 8.1305 );
setScaleKey( spep_0 + 276 -1, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_0 + 277 -1, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_0 + 278 -1, 1, 5.106, 5.106 );
setScaleKey( spep_0 + 279 -1, 1, 5.106, 5.106 );
setScaleKey( spep_0 + 280 -1, 1, 4.186, 4.186 );
setScaleKey( spep_0 + 281 -1, 1, 4.186, 4.186 );
setScaleKey( spep_0 + 282 -1, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_0 + 283 -1, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_0 + 284 -1, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 285 -1, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 286 -1, 1, 4.117, 4.117 );
setScaleKey( spep_0 + 288 -1, 1, 4.093999999999999, 4.093999999999999 );
setScaleKey( spep_0 + 290 -1, 1, 4.071, 4.071 );
setScaleKey( spep_0 + 292 -1, 1, 4.0595, 4.0595 );
setScaleKey( spep_0 + 294 -1, 1, 4.0595, 4.0595 );

setRotateKey( spep_0 + 272 -1, 1, -47 );
setRotateKey( spep_0 + 294 -1, 1, -47 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 320 -1, 1, 1 );
setDisp( spep_0 + 372 -1, 1, 0 );
changeAnime( spep_0 + 320 -1, 1, 108 );
changeAnime( spep_0 + 350 -1, 1, 106 );

setMoveKey( spep_0 + 320 -1, 1, -388.1, -503.5 , 0 );
setMoveKey( spep_0 + 322 -1, 1, -258.6, -357.5 , 0 );
setMoveKey( spep_0 + 324 -1, 1, -129.1, -211.6 , 0 );
setMoveKey( spep_0 + 326 -1, 1, 0.4, -65.6 , 0 );
setMoveKey( spep_0 + 328 -1, 1, 9.5, -55.4 , 0 );
setMoveKey( spep_0 + 330 -1, 1, 17.8, -46.1 , 0 );
setMoveKey( spep_0 + 332 -1, 1, 25.4, -37.5 , 0 );
setMoveKey( spep_0 + 334 -1, 1, 32.3, -29.8 , 0 );
setMoveKey( spep_0 + 336 -1, 1, 38.4, -22.9 , 0 );
setMoveKey( spep_0 + 338 -1, 1, 43.8, -16.9 , 0 );
setMoveKey( spep_0 + 340 -1, 1, 48.5, -11.6 , 0 );
setMoveKey( spep_0 + 342 -1, 1, 52.4, -7.2 , 0 );
setMoveKey( spep_0 + 344 -1, 1, 55.6, -3.6 , 0 );
setMoveKey( spep_0 + 346 -1, 1, 58, -0.9 , 0 );
setMoveKey( spep_0 + 348 -1, 1, 59.7, 1.1 , 0 );
setMoveKey( spep_0 + 349 -1, 1, 59.7, 1.1 , 0 );--
setMoveKey( spep_0 + 350 -1, 1, 159.1, -128.6 , 0 );
setMoveKey( spep_0 + 351 -1, 1, 159.1, -128.6 , 0 );
setMoveKey( spep_0 + 352 -1, 1, 210.6, -188 , 0 );
setMoveKey( spep_0 + 353 -1, 1, 210.6, -188 , 0 );
setMoveKey( spep_0 + 354 -1, 1, 153.8, -150.7 , 0 );
setMoveKey( spep_0 + 355 -1, 1, 153.8, -150.7 , 0 );
setMoveKey( spep_0 + 356 -1, 1, 98.8, -105.8 , 0 );
setMoveKey( spep_0 + 357 -1, 1, 98.8, -105.8 , 0 );
setMoveKey( spep_0 + 358 -1, 1, 171.3, -199.4 , 0 );
setMoveKey( spep_0 + 359 -1, 1, 171.3, -199.4 , 0 );
setMoveKey( spep_0 + 360 -1, 1, 95.4, -120.2 , 0 );
setMoveKey( spep_0 + 361 -1, 1, 95.4, -120.2 , 0 );
setMoveKey( spep_0 + 362 -1, 1, 23.6, -154 , 0 );
setMoveKey( spep_0 + 364 -1, 1, -45, -176.3 , 0 );
setMoveKey( spep_0 + 366 -1, 1, -98.2, -335.2 , 0 );
setMoveKey( spep_0 + 368 -1, 1, -150.6, -492.8 , 0 );
setMoveKey( spep_0 + 370 -1, 1, -202.2, -649.4 , 0 );
setMoveKey( spep_0 + 372 -1, 1, -202.2, -649.4 , 0 );

setScaleKey( spep_0 + 320 -1, 1, 4.428, 4.428 );
setScaleKey( spep_0 + 328 -1, 1, 4.428, 4.428 );
setScaleKey( spep_0 + 330 -1, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 349 -1, 1, 4.44, 4.44 );--
setScaleKey( spep_0 + 350 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 351 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 352 -1, 1, 7.995000000000001, 7.995000000000001 );
setScaleKey( spep_0 + 353 -1, 1, 7.995000000000001, 7.995000000000001 );
setScaleKey( spep_0 + 354 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 355 -1, 1, 5.941000000000001, 5.941000000000001 );
setScaleKey( spep_0 + 356 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 357 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 358 -1, 1, 6.851, 6.851 );
setScaleKey( spep_0 + 359 -1, 1, 6.851, 6.851 );
setScaleKey( spep_0 + 360 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 361 -1, 1, 3.8870000000000005, 3.8870000000000005 );
setScaleKey( spep_0 + 362 -1, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 364 -1, 1, 3.653, 3.653 );
setScaleKey( spep_0 + 366 -1, 1, 3.6270000000000002, 3.6270000000000002 );
setScaleKey( spep_0 + 368 -1, 1, 3.601, 3.601 );
setScaleKey( spep_0 + 370 -1, 1, 3.575, 3.575 );
setScaleKey( spep_0 + 372 -1, 1, 3.575, 3.575 );

setRotateKey( spep_0 + 320 -1, 1, -46.9 );
setRotateKey( spep_0 + 332 -1, 1, -46.9 );
setRotateKey( spep_0 + 334 -1, 1, -47 );
setRotateKey( spep_0 + 349 -1, 1, -47 );--
setRotateKey( spep_0 + 350 -1, 1, -164.3 );
setRotateKey( spep_0 + 372 -1, 1, -164.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 404 -1, 1, 1 );
setDisp( spep_0 + 436 -1, 1, 0 );
changeAnime( spep_0 + 404 -1, 1, 6 );
changeAnime( spep_0 + 420 -1, 1, 7 );

setMoveKey( spep_0 + 404 -1, 1, -421.2, 751.7 , 0 );
setMoveKey( spep_0 + 406 -1, 1, -416.9, 739.5 , 0 );
setMoveKey( spep_0 + 408 -1, 1, -403.9, 702.9 , 0 );
setMoveKey( spep_0 + 410 -1, 1, -382.4, 641.8 , 0 );
setMoveKey( spep_0 + 412 -1, 1, -352.2, 556.2 , 0 );
setMoveKey( spep_0 + 414 -1, 1, -313.4, 446.2 , 0 );
setMoveKey( spep_0 + 416 -1, 1, -266, 311.8 , 0 );
setMoveKey( spep_0 + 418 -1, 1, -209.9, 152.9 , 0 );
setMoveKey( spep_0 + 419 -1, 1, -209.9, 152.9 , 0 );--
setMoveKey( spep_0 + 420 -1, 1, -123.6, 95 , 0 );
setMoveKey( spep_0 + 421 -1, 1, -123.6, 95 , 0 );
setMoveKey( spep_0 + 422 -1, 1, -173.3, 128.1 , 0 );
setMoveKey( spep_0 + 423 -1, 1, -173.3, 128.1 , 0 );
setMoveKey( spep_0 + 424 -1, 1, -224.8, 161.8 , 0 );
setMoveKey( spep_0 + 425 -1, 1, -224.8, 161.8 , 0 );
setMoveKey( spep_0 + 426 -1, 1, -130.9, 97.1 , 0 );
setMoveKey( spep_0 + 427 -1, 1, -130.9, 97.1 , 0 );
setMoveKey( spep_0 + 428 -1, 1, -200, 146.7 , 0 );
setMoveKey( spep_0 + 429 -1, 1, -200, 146.7 , 0 );
setMoveKey( spep_0 + 430 -1, 1, -135.8, 98.4 , 0 );
setMoveKey( spep_0 + 431 -1, 1, -135.8, 98.4 , 0 );
setMoveKey( spep_0 + 432 -1, 1, -321.9, 153.7 , 0 );
setMoveKey( spep_0 + 433 -1, 1, -321.9, 153.7 , 0 );
setMoveKey( spep_0 + 434 -1, 1, -495.1, 223.5 , 0 );
setMoveKey( spep_0 + 435 -1, 1, -495.1, 223.5 , 0 );
setMoveKey( spep_0 + 436 -1, 1, -495.1, 223.5 , 0 );

s3 = 0.6;
setScaleKey( spep_0 + 404 -1, 1, 2 +s3, 2 +s3 );
setScaleKey( spep_0 + 419 -1, 1, 2 +s3, 2 +s3 );--
setScaleKey( spep_0 + 420 -1, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 421 -1, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 422 -1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 423 -1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 424 -1, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 425 -1, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 426 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 427 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 428 -1, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 429 -1, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 430 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 431 -1, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 432 -1, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 433 -1, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 434 -1, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 435 -1, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 436 -1, 1, 1.92, 1.92 );

setRotateKey( spep_0 + 404 -1, 1, 150 );
setRotateKey( spep_0 + 406 -1, 1, 150.1 );
setRotateKey( spep_0 + 408 -1, 1, 150.3 );
setRotateKey( spep_0 + 410 -1, 1, 150.6 );
setRotateKey( spep_0 + 412 -1, 1, 151 );
setRotateKey( spep_0 + 414 -1, 1, 151.6 );
setRotateKey( spep_0 + 416 -1, 1, 152.3 );
setRotateKey( spep_0 + 418 -1, 1, 153.2 );
setRotateKey( spep_0 + 419 -1, 1, 153.2 );--
setRotateKey( spep_0 + 420 -1, 1, 27.6 );
setRotateKey( spep_0 + 436 -1, 1, 27.6 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 448 -1, 1, 1 );
setDisp( spep_0 + 504 -1, 1, 0 );
changeAnime( spep_0 + 448 -1, 1, 6 );
changeAnime( spep_0 + 472 -1, 1, 7 );

setMoveKey( spep_0 + 448 -1, 1, 512.3, -142.3 , 0 );
setMoveKey( spep_0 + 450 -1, 1, 325.6, -62.8 , 0 );
setMoveKey( spep_0 + 452 -1, 1, 138.9, 16.6 , 0 );
setMoveKey( spep_0 + 454 -1, 1, 124.6, 21 , 0 );
setMoveKey( spep_0 + 456 -1, 1, 111.3, 25 , 0 );
setMoveKey( spep_0 + 458 -1, 1, 99.2, 28.7 , 0 );
setMoveKey( spep_0 + 460 -1, 1, 88.2, 32.1 , 0 );
setMoveKey( spep_0 + 462 -1, 1, 78.2, 35.1 , 0 );
setMoveKey( spep_0 + 464 -1, 1, 69.4, 37.8 , 0 );
setMoveKey( spep_0 + 466 -1, 1, 61.7, 40.2 , 0 );
setMoveKey( spep_0 + 467 -1, 1, 61.7, 40.2 , 0 );
setMoveKey( spep_0 + 468 -1, 1, 64.7, 49.6 , 0 );
setMoveKey( spep_0 + 469 -1, 1, 64.7, 49.6 , 0 );
setMoveKey( spep_0 + 470 -1, 1, 46.1, -9.1 , 0 );
setMoveKey( spep_0 + 471 -1, 1, 46.1, -9.1 , 0 );--
setMoveKey( spep_0 + 472 -1, 1, -112, -65.4 , 0 );
setMoveKey( spep_0 + 473 -1, 1, -112, -65.4 , 0 );
setMoveKey( spep_0 + 474 -1, 1, -25.4, 54.1 , 0 );
setMoveKey( spep_0 + 475 -1, 1, -25.4, 54.1 , 0 );
setMoveKey( spep_0 + 476 -1, 1, -105.2, -89 , 0 );
setMoveKey( spep_0 + 477 -1, 1, -105.2, -89 , 0 );
setMoveKey( spep_0 + 478 -1, 1, -21.8, 43.1 , 0 );
setMoveKey( spep_0 + 479 -1, 1, -21.8, 43.1 , 0 );
setMoveKey( spep_0 + 480 -1, 1, -33.9, 34.1 , 0 );
setMoveKey( spep_0 + 481 -1, 1, -33.9, 34.1 , 0 );
setMoveKey( spep_0 + 482 -1, 1, -14.4, 53.8 , 0 );
setMoveKey( spep_0 + 483 -1, 1, -14.4, 53.8 , 0 );
setMoveKey( spep_0 + 484 -1, 1, -39.6, 47.9 , 0 );
setMoveKey( spep_0 + 485 -1, 1, -39.6, 47.9 , 0 );
setMoveKey( spep_0 + 486 -1, 1, -21.4, 35.3 , 0 );
setMoveKey( spep_0 + 487 -1, 1, -21.4, 35.3 , 0 );
setMoveKey( spep_0 + 488 -1, 1, -42.7, 33.2 , 0 );
setMoveKey( spep_0 + 489 -1, 1, -42.7, 33.2 , 0 );
setMoveKey( spep_0 + 490 -1, 1, -24.7, 52.8 , 0 );
setMoveKey( spep_0 + 491 -1, 1, -24.7, 52.8 , 0 );
setMoveKey( spep_0 + 492 -1, 1, -51.4, 46.6 , 0 );
setMoveKey( spep_0 + 493 -1, 1, -51.4, 46.6 , 0 );
setMoveKey( spep_0 + 494 -1, 1, -42.4, 40.9 , 0 );
setMoveKey( spep_0 + 495 -1, 1, -42.4, 40.9 , 0 );
setMoveKey( spep_0 + 496 -1, 1, -154.6, 28.9 , 0 );
setMoveKey( spep_0 + 498 -1, 1, -268.9, 16.6 , 0 );
setMoveKey( spep_0 + 500 -1, 1, -385.3, 4.1 , 0 );
setMoveKey( spep_0 + 502 -1, 1, -503.8, -8.6 , 0 );
setMoveKey( spep_0 + 504 -1, 1, -503.8, -8.6 , 0 );

setScaleKey( spep_0 + 448 -1, 1, 2.132, 2.132 );
setScaleKey( spep_0 + 466 -1, 1, 2.132, 2.132 );
setScaleKey( spep_0 + 467 -1, 1, 2.132, 2.132 );
setScaleKey( spep_0 + 468 -1, 1, 2.509, 2.509 );
setScaleKey( spep_0 + 469 -1, 1, 2.509, 2.509 );
setScaleKey( spep_0 + 470 -1, 1, 3.445, 3.445 );
setScaleKey( spep_0 + 471 -1, 1, 3.445, 3.445 );--
setScaleKey( spep_0 + 472 -1, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 473 -1, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 474 -1, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 475 -1, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 476 -1, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 477 -1, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 478 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 479 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 486 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 487 -1, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 488 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 489 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 494 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 495 -1, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 496 -1, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 498 -1, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 500 -1, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 502 -1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 504 -1, 1, 1.14, 1.14 );

setRotateKey( spep_0 + 448 -1, 1, 6 );
setRotateKey( spep_0 + 471 -1, 1, 6 );--
setRotateKey( spep_0 + 472 -1, 1, 2.3 );
setRotateKey( spep_0 + 504 -1, 1, 2.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 602 -1, 1, 1 );
setDisp( spep_0 + 650 -1, 1, 0 );
changeAnime( spep_0 + 602 -1, 1, 106 );
changeAnime( spep_0 + 624 -1, 1, 108 );

setMoveKey( spep_0 + 602 -1, 1, 657, 318.2 , 0 );
setMoveKey( spep_0 + 604 -1, 1, 612.2, 302 , 0 );
setMoveKey( spep_0 + 606 -1, 1, 557.4, 239.9 , 0 );
setMoveKey( spep_0 + 608 -1, 1, 502.5, 211.7 , 0 );
setMoveKey( spep_0 + 610 -1, 1, 447.7, 184.5 , 0 );
setMoveKey( spep_0 + 612 -1, 1, 392.9, 155.4 , 0 );
setMoveKey( spep_0 + 614 -1, 1, 337, 127.2 , 0 );
setMoveKey( spep_0 + 616 -1, 1, 282.2, 99 , 0 );
setMoveKey( spep_0 + 618 -1, 1, 227.6, 70.8 , 0 );
setMoveKey( spep_0 + 620 -1, 1, 172.5, 42.7 , 0 );
setMoveKey( spep_0 + 622 -1, 1, 117.3, 14.5 , 0 );
setMoveKey( spep_0 + 623 -1, 1, 117.3, 14.5 , 0 );--
setMoveKey( spep_0 + 624 -1, 1, 67.2, 26 , 0 );
setMoveKey( spep_0 + 625 -1, 1, 67.2, 26 , 0 );
setMoveKey( spep_0 + 626 -1, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_0 + 627 -1, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_0 + 628 -1, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_0 + 629 -1, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_0 + 630 -1, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_0 + 631 -1, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_0 + 632 -1, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_0 + 633 -1, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_0 + 634 -1, 1, 72, -6.7 , 0 );
setMoveKey( spep_0 + 635 -1, 1, 72, -6.7 , 0 );
setMoveKey( spep_0 + 636 -1, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_0 + 637 -1, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_0 + 638 -1, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_0 + 639 -1, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_0 + 640 -1, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_0 + 641 -1, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_0 + 642 -1, 1, 205.8, -6.7 , 0 );
setMoveKey( spep_0 + 644 -1, 1, 315.3, 5.6 , 0 );
setMoveKey( spep_0 + 646 -1, 1, 446.2, 0.3 , 0 );
setMoveKey( spep_0 + 648 -1, 1, 577.1, 5.1 , 0 );
setMoveKey( spep_0 + 650 -1, 1, 577.1, 5.1 , 0 );

setScaleKey( spep_0 + 602 -1, 1, 1.656, 1.656 );
setScaleKey( spep_0 + 623 -1, 1, 1.656, 1.656 );--
setScaleKey( spep_0 + 624 -1, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 625 -1, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 626 -1, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 627 -1, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 628 -1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 629 -1, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 630 -1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 631 -1, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 632 -1, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 650 -1, 1, 1.95, 1.95 );

setRotateKey( spep_0 + 602 -1, 1, -8.7 );
setRotateKey( spep_0 + 623 -1, 1, -8.7 );--
setRotateKey( spep_0 + 624 -1, 1, -14 );
setRotateKey( spep_0 + 650 -1, 1, -14 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 670 -1, 1, 1 );
setDisp( spep_0 + 730 -1, 1, 0 );
changeAnime( spep_0 + 670 -1, 1, 5 );

a4 =30;
setMoveKey( spep_0 + 670 -1, 1, -174.6 -a4, -337.2 , 0 );
setMoveKey( spep_0 + 672 -1, 1, -113.8 -a4, -279.8 , 0 );
setMoveKey( spep_0 + 674 -1, 1, -26.9 -a4, -251.4 , 0 );
setMoveKey( spep_0 + 676 -1, 1, 42.9 -a4, -188 , 0 );
setMoveKey( spep_0 + 678 -1, 1, 94.6 -a4, -160 , 0 );
setMoveKey( spep_0 + 680 -1, 1, 169.1 -a4, -105.2 , 0 );
setMoveKey( spep_0 + 682 -1, 1, 183.7 -a4, -100.7 , 0 );
setMoveKey( spep_0 + 684 -1, 1, 188.4 -a4, -87.1 , 0 );
setMoveKey( spep_0 + 686 -1, 1, 197.9 -a4, -86.1 , 0 );
setMoveKey( spep_0 + 688 -1, 1, 212.9 -a4, -75.4 , 0 );
setMoveKey( spep_0 + 690 -1, 1, 219.9 -a4, -76.1 , 0 );
setMoveKey( spep_0 + 692 -1, 1, 220.4 -a4, -65.2 , 0 );
setMoveKey( spep_0 + 694 -1, 1, 225.7 -a4, -66.8 , 0 );
setMoveKey( spep_0 + 696 -1, 1, 236.5 -a4, -58.6 , 0 );
setMoveKey( spep_0 + 698 -1, 1, 236.6 -a4, -63.6 , 0 );
setMoveKey( spep_0 + 700 -1, 1, 231.2 -a4, -56.3 , 0 );
setMoveKey( spep_0 + 702 -1, 1, 231.5 -a4, -60.9 , 0 );
setMoveKey( spep_0 + 704 -1, 1, 238.4 -a4, -55.1 , 0 );
setMoveKey( spep_0 + 706 -1, 1, 238.3 -a4, -60.3 , 0 );
setMoveKey( spep_0 + 708 -1, 1, 232.7 -a4, -53.2 , 0 );
setMoveKey( spep_0 + 710 -1, 1, 232.9 -a4, -58.1 , 0 );
setMoveKey( spep_0 + 712 -1, 1, 239.6 -a4, -52.6 , 0 );
setMoveKey( spep_0 + 714 -1, 1, 239.4 -a4, -58 , 0 );
setMoveKey( spep_0 + 716 -1, 1, 233.7 -a4, -51.2 , 0 );
setMoveKey( spep_0 + 718 -1, 1, 234.3 -a4, -51.4 , 0 );
setMoveKey( spep_0 + 720 -1, 1, 234.9 -a4, -51.5 , 0 );
setMoveKey( spep_0 + 722 -1, 1, 235.4 -a4, -51.8 , 0 );
setMoveKey( spep_0 + 724 -1, 1, 235.9 -a4, -52.1 , 0 );
setMoveKey( spep_0 + 726 -1, 1, 236.4 -a4, -52.4 , 0 );
setMoveKey( spep_0 + 728 -1, 1, 236.9 -a4, -52.8 , 0 );
setMoveKey( spep_0 + 730 -1, 1, 236.9 -a4, -52.8 , 0 );

setScaleKey( spep_0 + 670 -1, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 672 -1, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 674 -1, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 676 -1, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 678 -1, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 680 -1, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 682 -1, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 684 -1, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 686 -1, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 688 -1, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 690 -1, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 692 -1, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 694 -1, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 696 -1, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 698 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 700 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 702 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 706 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 708 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 712 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 714 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 730 -1, 1, 0.31, 0.31 );

r1 =41;
setRotateKey( spep_0 + 670 -1, 1, 95.7 -r1 );
setRotateKey( spep_0 + 672 -1, 1, 95.7 -r1 );
setRotateKey( spep_0 + 674 -1, 1, 95.6 -r1 );
setRotateKey( spep_0 + 730 -1, 1, 95.6 -r1 );

-- ** 音 ** --
--殴る
SE009 = playSeVer2( spep_0 + 162, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 162, 1010, "", 0, 0, 0, -1);

--右側から向かっていく
SE011 = playSeVer2( spep_0 + 198, 1117, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 198, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_0 + 222, 1116, "",spep_0 + 270, 0, 14, -1);
SE014 = playSeVer2( spep_0 + 240, 1004, "", 0, 0, 0, -1);

--裏拳
SE015 = playSeVer2( spep_0 + 262, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 292, 1121, "",spep_0 + 374, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 74 );

--瞬間移動
SE018 = playSeVer2( spep_0 + 322, 1109, "", 0, 0, 0, -1);

--叩き落とす
SE019 = playSeVer2( spep_0 + 334, 1123, "", 0, 0, 0, -1);

--裏拳２
SE020 = playSeVer2( spep_0 + 406, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE020, 127 );
SE021 = playSeVer2( spep_0 + 412, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 412, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE022, 79 );
SE023 = playSeVer2( spep_0 + 416, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE024 = playSeVer2( spep_0 + 458, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 468, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 470, 1153, "", 0, 0, 0, -1);

--構える
SE027 = playSeVer2( spep_0 + 526, 1013, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 526, 1189, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_0 + 558, 1182, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 558, 9, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 558, 1117, "", 0, 0, 0, -1);

--タックル
SE032 = playSeVer2( spep_0 + 620, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE032, 89 );
SE033 = playSeVer2( spep_0 + 620, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE033, 79 );
SE034 = playSeVer2( spep_0 + 620, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE034, 72 );

--敵ひきづられ飛んでいく
SE035 = playSeVer2( spep_0 + 664, 1159, "",spep_0 + 820, 14, 90, -1);
SE036 = playSeVer2( spep_0 + 664, 1044, "",spep_0 + 762, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 664, SE036, 174 );
SE037 = playSeVer2( spep_0 + 664, 1168, "",spep_0 + 764, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 664, SE037, 129 );
SE038 = playSeVer2( spep_0 + 670, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE038, 141 );
SE039 = playSeVer2( spep_0 + 674, 1011, "", 0, 18, 0, -1);
SE040 = playSeVer2( spep_0 + 680, 1197, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 692, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 692, SE041, 81 );
SE042 = playSeVer2( spep_0 + 702, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 702, SE042, 63 );
SE043 = playSeVer2( spep_0 + 712, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 712, SE043, 52 );

--腕上げる
SE044 = playSeVer2( spep_0 + 742, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE045 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜める
SE046 = playSeVer2( spep_0 + 760, 1154, "",spep_0 + 860, 0, 14, -1);
SE047 = playSeVer2( spep_0 + 760, 1296, "",spep_0 + 860, 0, 14, -1);
setPitch( spep_0 + 760, SE047, -200 );
setTimeStretch( SE047, 0.87, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 844 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 844;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--気弾発射
SE049 = playSeVer2( spep_1 + 88, 1027, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 88, 1022, "",spep_1 + 204, 0, 42, -1);
SE051 = playSeVer2( spep_1 + 88, 1177, "",spep_1 + 204, 0, 42, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射〜フィニッシュまで(222F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --気弾発射〜フィニッシュまで   ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 222, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 222, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 222, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 222, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾発射〜フィニッシュまで    ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 222, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 222, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 222, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 222, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 60, 1, 1 );
setDisp( spep_2 -1 + 114, 1, 0 );
changeAnime( spep_2 -1 + 60, 1, 7 );

setBlendColor( spep_2 -1 + 60, 1, 5, 1.0, 0.2, 0.6, 0.9 );
setBlendColor( spep_2 -1 + 113, 1, 5, 1.0, 0.2, 0.6, 0.9 );
setBlendColor( spep_2 -1 + 114, 1, 5, 1.0, 0.2, 0.6, 0 );

setMoveKey( spep_2 -1 + 60, 1, -47.6, -181.4 , 0 );
setMoveKey( spep_2 -1 + 62, 1, -47.6, -183.5 , 0 );
setMoveKey( spep_2 -1 + 64, 1, -46.5, -184.5 , 0 );
setMoveKey( spep_2 -1 + 66, 1, -46.5, -186.5 , 0 );
setMoveKey( spep_2 -1 + 68, 1, -48.8, -190.6 , 0 );
setMoveKey( spep_2 -1 + 70, 1, -48.8, -192.5 , 0 );
setMoveKey( spep_2 -1 + 72, 1, -49.1, -190.3 , 0 );
setMoveKey( spep_2 -1 + 74, 1, -43.9, -198.5 , 0 );
setMoveKey( spep_2 -1 + 76, 1, -50.1, -196.6 , 0 );
setMoveKey( spep_2 -1 + 78, 1, -47.5, -195.6 , 0 );
setMoveKey( spep_2 -1 + 80, 1, -46.5, -198.3 , 0 );
setMoveKey( spep_2 -1 + 82, 1, -46.5, -199.8 , 0 );
setMoveKey( spep_2 -1 + 84, 1, -51.4, -199.5 , 0 );
setMoveKey( spep_2 -1 + 86, 1, -46.2, -207.2 , 0 );
setMoveKey( spep_2 -1 + 88, 1, -47.8, -207.1 , 0 );
setMoveKey( spep_2 -1 + 90, 1, -43.9, -209.6 , 0 );
setMoveKey( spep_2 -1 + 92, 1, -50.1, -207.1 , 0 );
setMoveKey( spep_2 -1 + 94, 1, -47.5, -205.4 , 0 );
setMoveKey( spep_2 -1 + 96, 1, -46.5, -209.9 , 0 );
setMoveKey( spep_2 -1 + 98, 1, -46.5, -210.8 , 0 );
setMoveKey( spep_2 -1 + 100, 1, -51.8, -205.4 , 0 );
setMoveKey( spep_2 -1 + 102, 1, -46.6, -212.6 , 0 );
setMoveKey( spep_2 -1 + 104, 1, -47.8, -211.5 , 0 );
setMoveKey( spep_2 -1 + 106, 1, -45.2, -209.5 , 0 );
setMoveKey( spep_2 -1 + 108, 1, -48.8, -213.9 , 0 );
setMoveKey( spep_2 -1 + 110, 1, -53.3, -211.1 , 0 );
setMoveKey( spep_2 -1 + 112, 1, -44.4, -216.1 , 0 );
setMoveKey( spep_2 -1 + 114, 1, -44.4, -216.1 , 0 );

setScaleKey( spep_2 -1 + 60, 1, 0.66, 0.66 );
setScaleKey( spep_2 -1 + 62, 1, 0.67, 0.67 );
setScaleKey( spep_2 -1 + 64, 1, 0.68, 0.68 );
setScaleKey( spep_2 -1 + 66, 1, 0.69, 0.69 );
setScaleKey( spep_2 -1 + 68, 1, 0.7, 0.7 );
setScaleKey( spep_2 -1 + 70, 1, 0.71, 0.71 );
setScaleKey( spep_2 -1 + 72, 1, 0.73, 0.73 );
setScaleKey( spep_2 -1 + 74, 1, 0.74, 0.74 );
setScaleKey( spep_2 -1 + 76, 1, 0.75, 0.75 );
setScaleKey( spep_2 -1 + 78, 1, 0.75, 0.75 );
setScaleKey( spep_2 -1 + 80, 1, 0.76, 0.76 );
setScaleKey( spep_2 -1 + 82, 1, 0.77, 0.77 );
setScaleKey( spep_2 -1 + 84, 1, 0.78, 0.78 );
setScaleKey( spep_2 -1 + 86, 1, 0.79, 0.79 );
setScaleKey( spep_2 -1 + 88, 1, 0.8, 0.8 );
setScaleKey( spep_2 -1 + 90, 1, 0.8, 0.8 );
setScaleKey( spep_2 -1 + 92, 1, 0.81, 0.81 );
setScaleKey( spep_2 -1 + 94, 1, 0.81, 0.81 );
setScaleKey( spep_2 -1 + 96, 1, 0.82, 0.82 );
setScaleKey( spep_2 -1 + 98, 1, 0.82, 0.82 );
setScaleKey( spep_2 -1 + 100, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 102, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 104, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 108, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_2 -1 + 114, 1, 0.85, 0.85 );

setRotateKey( spep_2 -1 + 60, 1, -42.4 );
setRotateKey( spep_2 -1 + 114, 1, -42.4 );

-- ** 音 ** --
--気弾発射
SE052 = playSeVer2( spep_2 + 2, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE052, 60 );

--気弾に飲まれて向かってくる
SE053 = playSeVer2( spep_2 + 54, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE053, 68 );
SE054 = playSeVer2( spep_2 + 54, 1044, "", 0, 56, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE054, 316 );
SE055 = playSeVer2( spep_2 + 62, 1024, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 72, 1258, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 112 );
endPhase( spep_2 + 212 );

end