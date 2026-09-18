print ("[lua]exec bk0001");

ATK_01 = 0;
ATK_D = 268;
ATK_end = ATK_01+442;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, ATK_D, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, ATK_D, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=440

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,120, 0x100, -1, 0, 0, 0); --ef_192(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 119, 0x100, -1, 0, 0, 0);  --味方側 ef_191

else
    effect_front = entryEffect( ATK_01 + 0, 122, 0x100, -1, 0, 0, 0);  --敵側 ef_191r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,121, 0x80, -1, 0, 0, 0); --ef_193
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

-- 気弾エフェクト1(0x40)
kidan01sub = entryEffectLife( ATK_01 + 129, 135, 2, 0x40, 0, 100, -100, 0);  --ef300
setEffAlphaKey(ATK_01 + 129, kidan01sub,255);
setEffAlphaKey(ATK_01 + 130, kidan01sub,0);

kidan01 = entryEffect( ATK_01 + 130, 135, 0x40, 0, 100, 0, 0);  --ef300
setEffMoveKey(ATK_01 + 130, kidan01,-100, 0);
setEffMoveKey(ATK_01 + 131, kidan01,0, 0);

-- 気弾エフェクト2(0x40)
kidan02sub = entryEffectLife( ATK_01 + 145, 136, 2, 0x40, 0, 100, -100, 0);  --ef301
setEffAlphaKey(ATK_01 + 145, kidan02sub,255);
setEffAlphaKey(ATK_01 + 146, kidan02sub,0);

kidan02 = entryEffect( ATK_01 + 146, 136, 0x40, 0, 100, 0, 0);  --ef301
setEffMoveKey(ATK_01 + 146, kidan02,-100, 0);
setEffMoveKey(ATK_01 + 147, kidan02,0, 0);

-- 気弾エフェクト3(0x40)
kidan03sub1 = entryEffectLife( ATK_01 + 167, 135, 2, 0x40, 0, 100, -100, 0);  --ef300
setEffAlphaKey(ATK_01 + 167, kidan03sub1,255);
setEffAlphaKey(ATK_01 + 168, kidan03sub1,0);
kidan03sub2 = entryEffectLife( ATK_01 + 168, 135, 2, 0x40, 0, 100, -100, 0);  --ef300
setEffAlphaKey(ATK_01 + 168, kidan03sub2,255);
setEffAlphaKey(ATK_01 + 169, kidan03sub2,0);
kidan03sub3 = entryEffectLife( ATK_01 + 169, 135, 2, 0x40, 0, 100, -100, 0);  --ef300
setEffAlphaKey(ATK_01 + 169, kidan03sub3,255);
setEffAlphaKey(ATK_01 + 170, kidan03sub3,0);

kidan03 = entryEffect( ATK_01 + 170, 135, 0x40, 0, 100, 0, 0);  --ef300
setEffMoveKey(ATK_01 + 170, kidan03,-100, 0);
setEffMoveKey(ATK_01 + 171, kidan03,0, 0);

-- 気弾エフェクト4(0x40)
kidan04sub1 = entryEffectLife( ATK_01 + 183, 136, 2, 0x40, 0, 100, 85, 50);  --ef301
setEffAlphaKey(ATK_01 + 183, kidan04sub1,255);
setEffAlphaKey(ATK_01 + 184, kidan04sub1,0);
kidan04sub2 = entryEffectLife( ATK_01 + 184, 136, 2, 0x40, 0, 100, -105, 0);  --ef301
setEffAlphaKey(ATK_01 + 184, kidan04sub2,255);
setEffAlphaKey(ATK_01 + 185, kidan04sub2,0);
kidan04sub3 = entryEffectLife( ATK_01 + 185, 136, 2, 0x40, 0, 100, -105, 0);  --ef301
setEffAlphaKey(ATK_01 + 185, kidan04sub3,255);
setEffAlphaKey(ATK_01 + 186, kidan04sub3,0);

kidan04 = entryEffect( ATK_01 + 186, 136, 0x40, 0, 100, 0, 0);  --ef301
setEffMoveKey(ATK_01 + 186, kidan04,-105, 0);
setEffMoveKey(ATK_01 + 187, kidan04,0, 0);


--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	setBgScroll(ATK_01+50, 0);
	startBgScroll(ATK_01+52,-40,50);
	stopBgScroll(ATK_01+106,1);
	startBgScroll(ATK_01+134,-5,1);
	startBgScroll(ATK_01+139,-10,1);
	startBgScroll(ATK_01+149,-20,1);
    stopBgScroll(ATK_01+180,20);

	startBgScroll(ATK_01+200,-60,1);
	stopBgScroll(ATK_01+318,1);
	setBgScroll(ATK_01+320, -10);

else
	setBgScroll(ATK_01+0, 0);
	startBgScroll(ATK_01+2,-20,1);
	startBgScroll(ATK_01+70,-40,40);
	stopBgScroll(ATK_01+156,1);
	startBgScroll(ATK_01+158,-60,1);
	stopBgScroll(ATK_01+160,20);
	startBgScroll(ATK_01+184,-60,1);
	stopBgScroll(ATK_01+186,20);
	startBgScroll(ATK_01+214,-10,1);
	startBgScroll(ATK_01+248,-30,1);

end

--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 0, 1);
setDrawFront( ATK_01 + 76 + OFFSET_X, 0, 0);
setDrawFront( ATK_01 + 76 + OFFSET_X, 1, 1);
setDrawFront( ATK_01 + 82 + OFFSET_X, 1, 0);
setDrawFront( ATK_01 + 82 + OFFSET_X, 0, 1);

--画面振動
setShakeXY(ATK_01 + 52 + OFFSET_X,8, 50, 20);
setShakeXY(ATK_01 + 60 + OFFSET_X,4, 20, 20);
setQuake(ATK_01 + 64 + OFFSET_X,8, 10, 40);
setShakeXY(ATK_01 + 72 + OFFSET_X,14, 30, 10);
setShakeXY(ATK_01 + 86 + OFFSET_X,6, 30, 30);
setShakeXY(ATK_01 + 92 + OFFSET_X,8, 10, 40);
setShakeXY(ATK_01 + 108 + OFFSET_X,10, 50, 10);
setShakeXY(ATK_01 + 118 + OFFSET_X,6, 20, 30);
setShakeXY(ATK_01 + 268 + OFFSET_X,10, 20, 60);
setShakeXY(ATK_01 + 278 + OFFSET_X,6, 20, 0);
setShakeXY(ATK_01 + 284 + OFFSET_X,60, 10, 60);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------
setDisp( ATK_01 + 0, 0, 0 );
setDisp( ATK_01 + 28 + OFFSET_X, 0, 1 );
setDisp( ATK_01 + 30 + OFFSET_X, 0, 0 );
setDisp( ATK_01 + 32 + OFFSET_X, 0, 1 );
setDisp( ATK_01 + 200 + OFFSET_X, 0, 0 );

changeAnime( ATK_01 + 28 + OFFSET_X, 0, 2 );
changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 0, 11, 1 );
changeAnimeAndStop( ATK_01 + 48 + OFFSET_X, 0, 11, 3 );
changeAnimeAndStop( ATK_01 + 62 + OFFSET_X, 0, 11, 1 );
changeAnime( ATK_01 + 64 + OFFSET_X, 0, 9 );
changeAnime( ATK_01 + 70 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 76 + OFFSET_X, 0, 4 );
changeAnime( ATK_01 + 82 + OFFSET_X, 0, 9 );
changeAnimeAndStop( ATK_01 + 86 + OFFSET_X, 0, 11, 1 );
changeAnime( ATK_01 + 102 + OFFSET_X, 0, 12 );
changeAnimeAndStop( ATK_01 + 122 + OFFSET_X, 0, 19, 1 );
changeAnimeAndStop( ATK_01 + 132 + OFFSET_X, 0, 19, 4 );
changeAnimeAndStop( ATK_01 + 144 + OFFSET_X, 0, 19, 1 );
changeAnimeAndStop( ATK_01 + 148 + OFFSET_X, 0, 19, 10 );
changeAnimeAndStop( ATK_01 + 166 + OFFSET_X, 0, 19, 1 );
changeAnimeAndStop( ATK_01 + 172 + OFFSET_X, 0, 19, 4 );
changeAnimeAndStop( ATK_01 + 184 + OFFSET_X, 0, 19, 1 );
changeAnimeAndStop( ATK_01 + 188 + OFFSET_X, 0, 19, 10 );

setMoveKey( ATK_01 + 28 + OFFSET_X, 0, -144.1, -60 , 0 );
setMoveKey( ATK_01 + 41 + OFFSET_X, 0, -144.1, -60 , 0 );
setMoveKey( ATK_01 + 42 + OFFSET_X, 0, -138.8, -56.2 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, -138.8, -56.2 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, -123.1, -45 , 0 );
setMoveKey( ATK_01 + 45 + OFFSET_X, 0, -123.1, -45 , 0 );
setMoveKey( ATK_01 + 46 + OFFSET_X, 0, -96.7, -26.2 , 0 );
setMoveKey( ATK_01 + 47 + OFFSET_X, 0, -96.7, -26.2 , 0 );
setMoveKey( ATK_01 + 48 + OFFSET_X, 0, -60, 0 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, -60, 0 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, -42.1, 2.1 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 0, -42.1, 2.1 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 0, -22.4, 22 , 0 );
setMoveKey( ATK_01 + 65 + OFFSET_X, 0, -22.4, 22 , 0 );
setMoveKey( ATK_01 + 66 + OFFSET_X, 0, -23.4, 21.9 , 0 );
setMoveKey( ATK_01 + 67 + OFFSET_X, 0, -23.4, 21.9 , 0 );
setMoveKey( ATK_01 + 68 + OFFSET_X, 0, -25.2, 21.9 , 0 );
setMoveKey( ATK_01 + 69 + OFFSET_X, 0, -25.2, 21.9 , 0 );
setMoveKey( ATK_01 + 70 + OFFSET_X, 0, -27.7, 21.8 , 0 );
setMoveKey( ATK_01 + 71 + OFFSET_X, 0, -27.7, 21.8 , 0 );
setMoveKey( ATK_01 + 72 + OFFSET_X, 0, -30.9, 21.7 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, -30.9, 21.7 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, -34.8, 21.5 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, -34.8, 21.5 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, -85.3, 52.4 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, -85.3, 52.4 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, -90.2, 51.9 , 0 );
setMoveKey( ATK_01 + 79 + OFFSET_X, 0, -90.2, 51.9 , 0 );
setMoveKey( ATK_01 + 80 + OFFSET_X, 0, -95.8, 51.3 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, -95.8, 51.3 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, -43.2, 52.5 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, -43.2, 52.5 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, -48.7, 52 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, -48.7, 52 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, -53.5, 51.5 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, -53.5, 51.5 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, -91.1, 47.8 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, -91.1, 47.8 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, -120.1, 44.9 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -120.1, 44.9 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -140.9, 42.9 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, -140.9, 42.9 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, -153.5, 41.6 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, -153.5, 41.6 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, -158, 41.2 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, -158, 41.2 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -157.1, 41.1 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, -157.1, 41.1 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, -158.3, 40.8 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, -158.3, 40.8 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, -153, 49.6 , 0 );
setMoveKey( ATK_01 + 103 + OFFSET_X, 0, -153, 49.6 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, -96.3, 46.1 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 0, -96.3, 46.1 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 0, -115.5, 46.7 , 0 );
setMoveKey( ATK_01 + 107 + OFFSET_X, 0, -115.5, 46.7 , 0 );
setMoveKey( ATK_01 + 108 + OFFSET_X, 0, -119.4, 46.9 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 0, -119.4, 46.9 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 0, -116.2, 46.9 , 0 );
setMoveKey( ATK_01 + 111 + OFFSET_X, 0, -116.2, 46.9 , 0 );
setMoveKey( ATK_01 + 112 + OFFSET_X, 0, -113.5, 46.9 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 0, -113.5, 46.9 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 0, -111.4, 46.9 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, -111.4, 46.9 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, -109.9, 46.9 , 0 );
setMoveKey( ATK_01 + 117 + OFFSET_X, 0, -109.9, 46.9 , 0 );
setMoveKey( ATK_01 + 118 + OFFSET_X, 0, -109, 46.9 , 0 );
setMoveKey( ATK_01 + 119 + OFFSET_X, 0, -109, 46.9 , 0 );
setMoveKey( ATK_01 + 120 + OFFSET_X, 0, -108.8, 46.9 , 0 );
setMoveKey( ATK_01 + 121 + OFFSET_X, 0, -108.8, 46.9 , 0 );
setMoveKey( ATK_01 + 122 + OFFSET_X, 0, -108.7, 53 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, -108.7, 53 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, -108.7, 52.9 , 0 );
setMoveKey( ATK_01 + 131 + OFFSET_X, 0, -108.7, 52.9 , 0 );
setMoveKey( ATK_01 + 132 + OFFSET_X, 0, -108, 53.8 , 0 );
setMoveKey( ATK_01 + 133 + OFFSET_X, 0, -108, 53.8 , 0 );
setMoveKey( ATK_01 + 134 + OFFSET_X, 0, -108.1, 53.8 , 0 );
setMoveKey( ATK_01 + 135 + OFFSET_X, 0, -108.1, 53.8 , 0 );
setMoveKey( ATK_01 + 136 + OFFSET_X, 0, -108.2, 53.7 , 0 );
setMoveKey( ATK_01 + 137 + OFFSET_X, 0, -108.2, 53.7 , 0 );
setMoveKey( ATK_01 + 138 + OFFSET_X, 0, -108.3, 53.5 , 0 );
setMoveKey( ATK_01 + 139 + OFFSET_X, 0, -108.3, 53.5 , 0 );
setMoveKey( ATK_01 + 140 + OFFSET_X, 0, -114.3, 53.4 , 0 );
setMoveKey( ATK_01 + 141 + OFFSET_X, 0, -114.3, 53.4 , 0 );
setMoveKey( ATK_01 + 142 + OFFSET_X, 0, -120.3, 53.1 , 0 );
setMoveKey( ATK_01 + 143 + OFFSET_X, 0, -120.3, 53.1 , 0 );
setMoveKey( ATK_01 + 144 + OFFSET_X, 0, -109.9, 51.8 , 0 );
setMoveKey( ATK_01 + 145 + OFFSET_X, 0, -109.9, 51.8 , 0 );
setMoveKey( ATK_01 + 146 + OFFSET_X, 0, -110.5, 51.3 , 0 );
setMoveKey( ATK_01 + 147 + OFFSET_X, 0, -110.5, 51.3 , 0 );
setMoveKey( ATK_01 + 148 + OFFSET_X, 0, -107.4, 54.7 , 0 );
setMoveKey( ATK_01 + 149 + OFFSET_X, 0, -107.4, 54.7 , 0 );
setMoveKey( ATK_01 + 150 + OFFSET_X, 0, -108.2, 53.9 , 0 );
setMoveKey( ATK_01 + 151 + OFFSET_X, 0, -108.2, 53.9 , 0 );
setMoveKey( ATK_01 + 152 + OFFSET_X, 0, -109.3, 53 , 0 );
setMoveKey( ATK_01 + 153 + OFFSET_X, 0, -109.3, 53 , 0 );
setMoveKey( ATK_01 + 154 + OFFSET_X, 0, -110.6, 51.8 , 0 );
setMoveKey( ATK_01 + 155 + OFFSET_X, 0, -110.6, 51.8 , 0 );
setMoveKey( ATK_01 + 156 + OFFSET_X, 0, -118.1, 50.4 , 0 );
setMoveKey( ATK_01 + 157 + OFFSET_X, 0, -118.1, 50.4 , 0 );
setMoveKey( ATK_01 + 158 + OFFSET_X, 0, -126, 48.8 , 0 );
setMoveKey( ATK_01 + 159 + OFFSET_X, 0, -126, 48.8 , 0 );
setMoveKey( ATK_01 + 160 + OFFSET_X, 0, -128.3, 46.8 , 0 );
setMoveKey( ATK_01 + 161 + OFFSET_X, 0, -128.3, 46.8 , 0 );
setMoveKey( ATK_01 + 162 + OFFSET_X, 0, -130.6, 44.8 , 0 );
setMoveKey( ATK_01 + 163 + OFFSET_X, 0, -130.6, 44.8 , 0 );
setMoveKey( ATK_01 + 164 + OFFSET_X, 0, -132.6, 43.2 , 0 );
setMoveKey( ATK_01 + 165 + OFFSET_X, 0, -132.6, 43.2 , 0 );
setMoveKey( ATK_01 + 166 + OFFSET_X, 0, -125.8, 37.4 , 0 );
setMoveKey( ATK_01 + 167 + OFFSET_X, 0, -125.8, 37.4 , 0 );
setMoveKey( ATK_01 + 168 + OFFSET_X, 0, -127.1, 36.2 , 0 );
setMoveKey( ATK_01 + 169 + OFFSET_X, 0, -127.1, 36.2 , 0 );
setMoveKey( ATK_01 + 170 + OFFSET_X, 0, -128.2, 35.3 , 0 );
setMoveKey( ATK_01 + 171 + OFFSET_X, 0, -128.2, 35.3 , 0 );
setMoveKey( ATK_01 + 172 + OFFSET_X, 0, -128.3, 35.5 , 0 );
setMoveKey( ATK_01 + 173 + OFFSET_X, 0, -128.3, 35.5 , 0 );
setMoveKey( ATK_01 + 174 + OFFSET_X, 0, -129, 34.9 , 0 );
setMoveKey( ATK_01 + 175 + OFFSET_X, 0, -129, 34.9 , 0 );
setMoveKey( ATK_01 + 176 + OFFSET_X, 0, -129.5, 34.4 , 0 );
setMoveKey( ATK_01 + 177 + OFFSET_X, 0, -129.5, 34.4 , 0 );
setMoveKey( ATK_01 + 178 + OFFSET_X, 0, -129.9, 34 , 0 );
setMoveKey( ATK_01 + 179 + OFFSET_X, 0, -129.9, 34 , 0 );
setMoveKey( ATK_01 + 180 + OFFSET_X, 0, -136.7, 33.8 , 0 );
setMoveKey( ATK_01 + 181 + OFFSET_X, 0, -136.7, 33.8 , 0 );
setMoveKey( ATK_01 + 182 + OFFSET_X, 0, -143.4, 33.6 , 0 );
setMoveKey( ATK_01 + 183 + OFFSET_X, 0, -143.4, 33.6 , 0 );
setMoveKey( ATK_01 + 184 + OFFSET_X, 0, -131.4, 32.4 , 0 );
setMoveKey( ATK_01 + 185 + OFFSET_X, 0, -131.4, 32.4 , 0 );
setMoveKey( ATK_01 + 186 + OFFSET_X, 0, -131.5, 32.3 , 0 );
setMoveKey( ATK_01 + 187 + OFFSET_X, 0, -131.5, 32.3 , 0 );
setMoveKey( ATK_01 + 188 + OFFSET_X, 0, -127.3, 36.7 , 0 );
setMoveKey( ATK_01 + 195 + OFFSET_X, 0, -127.3, 36.7 , 0 );
setMoveKey( ATK_01 + 196 + OFFSET_X, 0, -133.8, 36.7 , 0 );
setMoveKey( ATK_01 + 200 + OFFSET_X, 0, -133.8, 36.7 , 0 );
setMoveKey( ATK_01 + ATK_end -2, 0, 2000, 0, 0 );

setScaleKey( ATK_01 + 28 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 67 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 68 + OFFSET_X, 0, 1.59, 1.59 );
setScaleKey( ATK_01 + 69 + OFFSET_X, 0, 1.59, 1.59 );
setScaleKey( ATK_01 + 70 + OFFSET_X, 0, 1.58, 1.58 );
setScaleKey( ATK_01 + 73 + OFFSET_X, 0, 1.58, 1.58 );
setScaleKey( ATK_01 + 74 + OFFSET_X, 0, 1.56, 1.56 );
setScaleKey( ATK_01 + 75 + OFFSET_X, 0, 1.56, 1.56 );
setScaleKey( ATK_01 + 76 + OFFSET_X, 0, 1.55, 1.55 );
setScaleKey( ATK_01 + 77 + OFFSET_X, 0, 1.55, 1.55 );
setScaleKey( ATK_01 + 78 + OFFSET_X, 0, 1.54, 1.54 );
setScaleKey( ATK_01 + 79 + OFFSET_X, 0, 1.54, 1.54 );
setScaleKey( ATK_01 + 80 + OFFSET_X, 0, 1.52, 1.52 );
setScaleKey( ATK_01 + 81 + OFFSET_X, 0, 1.52, 1.52 );
setScaleKey( ATK_01 + 82 + OFFSET_X, 0, 1.5, 1.5 );
setScaleKey( ATK_01 + 83 + OFFSET_X, 0, 1.5, 1.5 );
setScaleKey( ATK_01 + 84 + OFFSET_X, 0, 1.49, 1.49 );
setScaleKey( ATK_01 + 85 + OFFSET_X, 0, 1.49, 1.49 );
setScaleKey( ATK_01 + 86 + OFFSET_X, 0, 1.48, 1.48 );
setScaleKey( ATK_01 + 87 + OFFSET_X, 0, 1.48, 1.48 );
setScaleKey( ATK_01 + 88 + OFFSET_X, 0, 1.46, 1.46 );
setScaleKey( ATK_01 + 91 + OFFSET_X, 0, 1.46, 1.46 );
setScaleKey( ATK_01 + 92 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 93 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 94 + OFFSET_X, 0, 1.44, 1.44 );
setScaleKey( ATK_01 + 99 + OFFSET_X, 0, 1.44, 1.44 );
setScaleKey( ATK_01 + 100 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 101 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 102 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 103 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 104 + OFFSET_X, 0, 1.49, 1.49 );
setScaleKey( ATK_01 + 105 + OFFSET_X, 0, 1.49, 1.49 );
setScaleKey( ATK_01 + 106 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 107 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 108 + OFFSET_X, 0, 1.52, 1.52 );
setScaleKey( ATK_01 + 139 + OFFSET_X, 0, 1.52, 1.52 );
setScaleKey( ATK_01 + 140 + OFFSET_X, 0, 1.53, 1.53 );
setScaleKey( ATK_01 + 145 + OFFSET_X, 0, 1.53, 1.53 );
setScaleKey( ATK_01 + 146 + OFFSET_X, 0, 1.54, 1.54 );
setScaleKey( ATK_01 + 149 + OFFSET_X, 0, 1.54, 1.54 );
setScaleKey( ATK_01 + 150 + OFFSET_X, 0, 1.55, 1.55 );
setScaleKey( ATK_01 + 151 + OFFSET_X, 0, 1.55, 1.55 );
setScaleKey( ATK_01 + 152 + OFFSET_X, 0, 1.56, 1.56 );
setScaleKey( ATK_01 + 153 + OFFSET_X, 0, 1.56, 1.56 );
setScaleKey( ATK_01 + 154 + OFFSET_X, 0, 1.57, 1.57 );
setScaleKey( ATK_01 + 155 + OFFSET_X, 0, 1.57, 1.57 );
setScaleKey( ATK_01 + 156 + OFFSET_X, 0, 1.59, 1.59 );
setScaleKey( ATK_01 + 157 + OFFSET_X, 0, 1.59, 1.59 );
setScaleKey( ATK_01 + 158 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 159 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 160 + OFFSET_X, 0, 1.62, 1.62 );
setScaleKey( ATK_01 + 161 + OFFSET_X, 0, 1.62, 1.62 );
setScaleKey( ATK_01 + 162 + OFFSET_X, 0, 1.64, 1.64 );
setScaleKey( ATK_01 + 163 + OFFSET_X, 0, 1.64, 1.64 );
setScaleKey( ATK_01 + 164 + OFFSET_X, 0, 1.66, 1.66 );
setScaleKey( ATK_01 + 165 + OFFSET_X, 0, 1.66, 1.66 );
setScaleKey( ATK_01 + 166 + OFFSET_X, 0, 1.68, 1.68 );
setScaleKey( ATK_01 + 167 + OFFSET_X, 0, 1.68, 1.68 );
setScaleKey( ATK_01 + 168 + OFFSET_X, 0, 1.69, 1.69 );
setScaleKey( ATK_01 + 169 + OFFSET_X, 0, 1.69, 1.69 );
setScaleKey( ATK_01 + 170 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 173 + OFFSET_X, 0, 1.7, 1.7 );
setScaleKey( ATK_01 + 174 + OFFSET_X, 0, 1.71, 1.71 );
setScaleKey( ATK_01 + 175 + OFFSET_X, 0, 1.71, 1.71 );
setScaleKey( ATK_01 + 176 + OFFSET_X, 0, 1.72, 1.72 );
setScaleKey( ATK_01 + 183 + OFFSET_X, 0, 1.72, 1.72 );
setScaleKey( ATK_01 + 184 + OFFSET_X, 0, 1.73, 1.73 );
setScaleKey( ATK_01 + 200 + OFFSET_X, 0, 1.73, 1.73 );

setRotateKey( ATK_01 + 28 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 43 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 44 + OFFSET_X, 0, -21.4 );
setRotateKey( ATK_01 + 47 + OFFSET_X, 0, -21.4 );
setRotateKey( ATK_01 + 48 + OFFSET_X, 0, 0.3 );
setRotateKey( ATK_01 + 61 + OFFSET_X, 0, 0.3 );
setRotateKey( ATK_01 + 62 + OFFSET_X, 0, -18.6 );
setRotateKey( ATK_01 + 63 + OFFSET_X, 0, -18.6 );
setRotateKey( ATK_01 + 64 + OFFSET_X, 0, 9.7 );
setRotateKey( ATK_01 + 69 + OFFSET_X, 0, 9.7 );
setRotateKey( ATK_01 + 70 + OFFSET_X, 0, 0.3 );
setRotateKey( ATK_01 + 75 + OFFSET_X, 0, 0.3 );
setRotateKey( ATK_01 + 76 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 81 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 82 + OFFSET_X, 0, 7.2 );
setRotateKey( ATK_01 + 85 + OFFSET_X, 0, 7.2 );
setRotateKey( ATK_01 + 86 + OFFSET_X, 0, 0.7 );
setRotateKey( ATK_01 + 87 + OFFSET_X, 0, 0.7 );
setRotateKey( ATK_01 + 88 + OFFSET_X, 0, -1.5 );
setRotateKey( ATK_01 + 89 + OFFSET_X, 0, -1.5 );
setRotateKey( ATK_01 + 90 + OFFSET_X, 0, -3.3 );
setRotateKey( ATK_01 + 91 + OFFSET_X, 0, -3.3 );
setRotateKey( ATK_01 + 92 + OFFSET_X, 0, -4.5 );
setRotateKey( ATK_01 + 93 + OFFSET_X, 0, -4.5 );
setRotateKey( ATK_01 + 94 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 95 + OFFSET_X, 0, -5.3 );
setRotateKey( ATK_01 + 96 + OFFSET_X, 0, -5.5 );
setRotateKey( ATK_01 + 97 + OFFSET_X, 0, -5.5 );
setRotateKey( ATK_01 + 98 + OFFSET_X, 0, -6.1 );
setRotateKey( ATK_01 + 99 + OFFSET_X, 0, -6.1 );
setRotateKey( ATK_01 + 100 + OFFSET_X, 0, -9.5 );
setRotateKey( ATK_01 + 101 + OFFSET_X, 0, -9.5 );
setRotateKey( ATK_01 + 102 + OFFSET_X, 0, 28.9 );
setRotateKey( ATK_01 + 103 + OFFSET_X, 0, 28.9 );
setRotateKey( ATK_01 + 104 + OFFSET_X, 0, 21.3 );
setRotateKey( ATK_01 + 121 + OFFSET_X, 0, 21.3 );
setRotateKey( ATK_01 + 122 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 200 + OFFSET_X, 0, 0 );

setAlphaKey( ATK_01 + 28 + OFFSET_X, 0, 128 );
setAlphaKey( ATK_01 + 29 + OFFSET_X, 0, 128 );
setAlphaKey( ATK_01 + 30 + OFFSET_X, 0, 255 );
setAlphaKey( ATK_01 + 200 + OFFSET_X, 0, 255 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

    setDisp( ATK_01 + 0, 1, 0 );
    setDisp( ATK_01 + 10 + OFFSET_X, 1, 1 );
    setDisp( ATK_01 + 12 + OFFSET_X, 1, 0 );
    setDisp( ATK_01 + 14 + OFFSET_X, 1, 1 );
    setDisp( ATK_01 + 120 + OFFSET_X, 1, 0 );
    setDisp( ATK_01 + 200 + OFFSET_X, 1, 1 );
    setDisp( ATK_01 + ATK_end -2, 1, 0 );

    changeAnime( ATK_01 + 10 + OFFSET_X, 1, 104 );
    changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 1, 111, 1 );
    changeAnime( ATK_01 + 48 + OFFSET_X, 1, 109 );
    changeAnime( ATK_01 + 62 + OFFSET_X, 1, 101 );
    changeAnime( ATK_01 + 64 + OFFSET_X, 1, 104 );
    changeAnime( ATK_01 + 76 + OFFSET_X, 1, 112 );
    changeAnime( ATK_01 + 82 + OFFSET_X, 1, 104 );
--    changeAnime( ATK_01 + 104 + OFFSET_X, 1, 108 );
    changeAnime( ATK_01 + 200 + OFFSET_X, 1, 117 );
    changeAnime( ATK_01 + 328 + OFFSET_X, 1, 104 );
    changeAnime( ATK_01 + 382 + OFFSET_X, 1, 117 );

    setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 125.6, 40 , 0 );
    setMoveKey( ATK_01 + 41 + OFFSET_X, 1, 125.6, 40 , 0 );
    setMoveKey( ATK_01 + 42 + OFFSET_X, 1, 121.5, 37.5 , 0 );
    setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 121.5, 37.5 , 0 );
    setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 100.5, 42 , 0 );
    setMoveKey( ATK_01 + 45 + OFFSET_X, 1, 100.5, 42 , 0 );
    setMoveKey( ATK_01 + 46 + OFFSET_X, 1, 79, 28.7 , 0 );
    setMoveKey( ATK_01 + 47 + OFFSET_X, 1, 79, 28.7 , 0 );
    setMoveKey( ATK_01 + 48 + OFFSET_X, 1, 49.4, 10.5 , 0 );
    setMoveKey( ATK_01 + 61 + OFFSET_X, 1, 49.4, 10.5 , 0 );
    setMoveKey( ATK_01 + 62 + OFFSET_X, 1, 118.2, 44.6 , 0 );
    setMoveKey( ATK_01 + 63 + OFFSET_X, 1, 118.2, 44.6 , 0 );
    setMoveKey( ATK_01 + 64 + OFFSET_X, 1, 127.8, 50.6 , 0 );
    setMoveKey( ATK_01 + 65 + OFFSET_X, 1, 127.8, 50.6 , 0 );
    setMoveKey( ATK_01 + 66 + OFFSET_X, 1, 126.4, 50.5 , 0 );
    setMoveKey( ATK_01 + 67 + OFFSET_X, 1, 126.4, 50.5 , 0 );
    setMoveKey( ATK_01 + 68 + OFFSET_X, 1, 124.2, 50.3 , 0 );
    setMoveKey( ATK_01 + 69 + OFFSET_X, 1, 124.2, 50.3 , 0 );
    setMoveKey( ATK_01 + 70 + OFFSET_X, 1, 121, 50.1 , 0 );
    setMoveKey( ATK_01 + 71 + OFFSET_X, 1, 121, 50.1 , 0 );
    setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 117, 49.8 , 0 );
    setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 117, 49.8 , 0 );
    setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 112, 49.5 , 0 );
    setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 112, 49.5 , 0 );
    setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 51.2, 70.4 , 0 );
    setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 51.2, 70.4 , 0 );
    setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 45, 69.7 , 0 );
    setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 45, 69.7 , 0 );
    setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 37.9, 68.9 , 0 );
    setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 37.9, 68.9 , 0 );
    setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 66.7, 42.3 , 0 );
    setMoveKey( ATK_01 + 83 + OFFSET_X, 1, 66.7, 42.3 , 0 );
    setMoveKey( ATK_01 + 84 + OFFSET_X, 1, 60.1, 41.9 , 0 );
    setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 60.1, 41.9 , 0 );
    setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 54.5, 41.5 , 0 );
    setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 54.5, 41.5 , 0 );
    setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 66.9, 41 , 0 );
    setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 66.9, 41 , 0 );
    setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 77.6, 40.5 , 0 );
    setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 77.6, 40.5 , 0 );
    setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 86.9, 40.1 , 0 );
    setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 86.9, 40.1 , 0 );
    setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 94.7, 39.8 , 0 );
    setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 94.7, 39.8 , 0 );
    setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 101.2, 39.6 , 0 );
    setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 101.2, 39.6 , 0 );
    setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 106.4, 39.5 , 0 );
    setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 106.4, 39.5 , 0 );
    setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 102.5, 39.6 , 0 );
    setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 102.5, 39.6 , 0 );
    setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 81.9, 40.2 , 0 );
    setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 81.9, 40.2 , 0 );
    setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 90.3, 47.8 , 0 );
    setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 90.3, 47.8 , 0 );
    setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 69.1, 48.4 , 0 );
    setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 69.1, 48.4 , 0 );
    setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 62, 48.7 , 0 );
    setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 62, 48.7 , 0 );
    setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 331.8, 48.7 , 0 );
    setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 331.8, 48.7 , 0 );
    setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 601.6, 48.7 , 0 );
    setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 601.6, 48.7 , 0 );
    setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 871.4, 48.7 , 0 );
    setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 871.4, 48.7 , 0 );
    setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 1141.2, 48.7 , 0 );
    setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 1141.2, 48.7 , 0 );
    setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 1411, 48.7 , 0 );
    setMoveKey( ATK_01 + 199 + OFFSET_X, 1, 1411, 48.7 , 0 );
    setMoveKey( ATK_01 + 200 + OFFSET_X, 1, 0, 0.8 , 0 );
    setMoveKey( ATK_01 + 201 + OFFSET_X, 1, 0, 0.8 , 0 );
    setMoveKey( ATK_01 + 202 + OFFSET_X, 1, -0.1, 0.6 , 0 );
    setMoveKey( ATK_01 + 203 + OFFSET_X, 1, -0.1, 0.6 , 0 );
    setMoveKey( ATK_01 + 204 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 205 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 206 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 207 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 212 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 213 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 216 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 219 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 220 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 221 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 222 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 223 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 224 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 230 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 231 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 236 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 237 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 240 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 241 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 246 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 249 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 255 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 256 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 259 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 260 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 327 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 328 + OFFSET_X, 1, -70.2, 1.7 , 0 );
    setMoveKey( ATK_01 + 337 + OFFSET_X, 1, -70.2, 1.7 , 0 );
    setMoveKey( ATK_01 + 338 + OFFSET_X, 1, -60.6, 1.6 , 0 );
    setMoveKey( ATK_01 + 339 + OFFSET_X, 1, -60.6, 1.6 , 0 );
    setMoveKey( ATK_01 + 340 + OFFSET_X, 1, -51.6, 1.5 , 0 );
    setMoveKey( ATK_01 + 341 + OFFSET_X, 1, -51.6, 1.5 , 0 );
    setMoveKey( ATK_01 + 342 + OFFSET_X, 1, -43, 1.5 , 0 );
    setMoveKey( ATK_01 + 343 + OFFSET_X, 1, -43, 1.5 , 0 );
    setMoveKey( ATK_01 + 344 + OFFSET_X, 1, -34.9, 1.4 , 0 );
    setMoveKey( ATK_01 + 345 + OFFSET_X, 1, -34.9, 1.4 , 0 );
    setMoveKey( ATK_01 + 346 + OFFSET_X, 1, -27.3, 1.3 , 0 );
    setMoveKey( ATK_01 + 347 + OFFSET_X, 1, -27.3, 1.3 , 0 );
    setMoveKey( ATK_01 + 348 + OFFSET_X, 1, -20.2, 1.3 , 0 );
    setMoveKey( ATK_01 + 349 + OFFSET_X, 1, -20.2, 1.3 , 0 );
    setMoveKey( ATK_01 + 350 + OFFSET_X, 1, -13.5, 1.2 , 0 );
    setMoveKey( ATK_01 + 351 + OFFSET_X, 1, -13.5, 1.2 , 0 );
    setMoveKey( ATK_01 + 352 + OFFSET_X, 1, -7.4, 1.2 , 0 );
    setMoveKey( ATK_01 + 353 + OFFSET_X, 1, -7.4, 1.2 , 0 );
    setMoveKey( ATK_01 + 354 + OFFSET_X, 1, -1.8, 1.1 , 0 );
    setMoveKey( ATK_01 + 355 + OFFSET_X, 1, -1.8, 1.1 , 0 );
    setMoveKey( ATK_01 + 356 + OFFSET_X, 1, 3.4, 1.1 , 0 );
    setMoveKey( ATK_01 + 357 + OFFSET_X, 1, 3.4, 1.1 , 0 );
    setMoveKey( ATK_01 + 358 + OFFSET_X, 1, 8, 1 , 0 );
    setMoveKey( ATK_01 + 359 + OFFSET_X, 1, 8, 1 , 0 );
    setMoveKey( ATK_01 + 360 + OFFSET_X, 1, 12.2, 1 , 0 );
    setMoveKey( ATK_01 + 361 + OFFSET_X, 1, 12.2, 1 , 0 );
    setMoveKey( ATK_01 + 362 + OFFSET_X, 1, 15.9, 1 , 0 );
    setMoveKey( ATK_01 + 363 + OFFSET_X, 1, 15.9, 1 , 0 );
    setMoveKey( ATK_01 + 364 + OFFSET_X, 1, 19.1, 0.9 , 0 );
    setMoveKey( ATK_01 + 365 + OFFSET_X, 1, 19.1, 0.9 , 0 );
    setMoveKey( ATK_01 + 366 + OFFSET_X, 1, 21.8, 0.9 , 0 );
    setMoveKey( ATK_01 + 367 + OFFSET_X, 1, 21.8, 0.9 , 0 );
    setMoveKey( ATK_01 + 368 + OFFSET_X, 1, 24, 0.9 , 0 );
    setMoveKey( ATK_01 + 369 + OFFSET_X, 1, 24, 0.9 , 0 );
    setMoveKey( ATK_01 + 370 + OFFSET_X, 1, 25.7, 0.9 , 0 );
    setMoveKey( ATK_01 + 371 + OFFSET_X, 1, 25.7, 0.9 , 0 );
    setMoveKey( ATK_01 + 372 + OFFSET_X, 1, 26.9, 0.9 , 0 );
    setMoveKey( ATK_01 + 373 + OFFSET_X, 1, 26.9, 0.9 , 0 );
    setMoveKey( ATK_01 + 374 + OFFSET_X, 1, 27.7, 0.8 , 0 );
    setMoveKey( ATK_01 + 375 + OFFSET_X, 1, 27.7, 0.8 , 0 );
    setMoveKey( ATK_01 + 376 + OFFSET_X, 1, 27.9, 0.8 , 0 );
    setMoveKey( ATK_01 + 377 + OFFSET_X, 1, 27.9, 0.8 , 0 );
    setMoveKey( ATK_01 + 378 + OFFSET_X, 1, 27.8, 1.6 , 0 );
    setMoveKey( ATK_01 + 379 + OFFSET_X, 1, 27.8, 1.6 , 0 );
    setMoveKey( ATK_01 + 380 + OFFSET_X, 1, 27.2, 3.7 , 0 );
    setMoveKey( ATK_01 + 381 + OFFSET_X, 1, 27.2, 3.7 , 0 );
    setMoveKey( ATK_01 + 382 + OFFSET_X, 1, 18, 0.5 , 0 );
    setMoveKey( ATK_01 + ATK_end -3, 1, 18, 0.5 , 0 );
    setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

    setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 1.6, 1.6 );
    setScaleKey( ATK_01 + 67 + OFFSET_X, 1, 1.6, 1.6 );
    setScaleKey( ATK_01 + 68 + OFFSET_X, 1, 1.59, 1.59 );
    setScaleKey( ATK_01 + 69 + OFFSET_X, 1, 1.59, 1.59 );
    setScaleKey( ATK_01 + 70 + OFFSET_X, 1, 1.58, 1.58 );
    setScaleKey( ATK_01 + 73 + OFFSET_X, 1, 1.58, 1.58 );
    setScaleKey( ATK_01 + 74 + OFFSET_X, 1, 1.56, 1.56 );
    setScaleKey( ATK_01 + 75 + OFFSET_X, 1, 1.56, 1.56 );
    setScaleKey( ATK_01 + 76 + OFFSET_X, 1, 1.55, 1.55 );
    setScaleKey( ATK_01 + 77 + OFFSET_X, 1, 1.55, 1.55 );
    setScaleKey( ATK_01 + 78 + OFFSET_X, 1, 1.54, 1.54 );
    setScaleKey( ATK_01 + 79 + OFFSET_X, 1, 1.54, 1.54 );
    setScaleKey( ATK_01 + 80 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 81 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 82 + OFFSET_X, 1, 1.5, 1.5 );
    setScaleKey( ATK_01 + 83 + OFFSET_X, 1, 1.5, 1.5 );
    setScaleKey( ATK_01 + 84 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 85 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 86 + OFFSET_X, 1, 1.48, 1.48 );
    setScaleKey( ATK_01 + 87 + OFFSET_X, 1, 1.48, 1.48 );
    setScaleKey( ATK_01 + 88 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 91 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 92 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 93 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 94 + OFFSET_X, 1, 1.44, 1.44 );
    setScaleKey( ATK_01 + 99 + OFFSET_X, 1, 1.44, 1.44 );
    setScaleKey( ATK_01 + 100 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 101 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 102 + OFFSET_X, 1, 1.47, 1.47 );
    setScaleKey( ATK_01 + 103 + OFFSET_X, 1, 1.47, 1.47 );
    setScaleKey( ATK_01 + 104 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 105 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 106 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 199 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 200 + OFFSET_X, 1, 3.09, 3.09 );
    setScaleKey( ATK_01 + 201 + OFFSET_X, 1, 3.09, 3.09 );
    setScaleKey( ATK_01 + 202 + OFFSET_X, 1, 2.14, 2.14 );
    setScaleKey( ATK_01 + 203 + OFFSET_X, 1, 2.14, 2.14 );
    setScaleKey( ATK_01 + 204 + OFFSET_X, 1, 1.9, 1.9 );
    setScaleKey( ATK_01 + 205 + OFFSET_X, 1, 1.9, 1.9 );
    setScaleKey( ATK_01 + 206 + OFFSET_X, 1, 1.75, 1.75 );
    setScaleKey( ATK_01 + 207 + OFFSET_X, 1, 1.75, 1.75 );
    setScaleKey( ATK_01 + 208 + OFFSET_X, 1, 1.65, 1.65 );
    setScaleKey( ATK_01 + 209 + OFFSET_X, 1, 1.65, 1.65 );
    setScaleKey( ATK_01 + 210 + OFFSET_X, 1, 1.57, 1.57 );
    setScaleKey( ATK_01 + 211 + OFFSET_X, 1, 1.57, 1.57 );
    setScaleKey( ATK_01 + 212 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 213 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 214 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 215 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 216 + OFFSET_X, 1, 1.41, 1.41 );
    setScaleKey( ATK_01 + 217 + OFFSET_X, 1, 1.41, 1.41 );
    setScaleKey( ATK_01 + 218 + OFFSET_X, 1, 1.37, 1.37 );
    setScaleKey( ATK_01 + 219 + OFFSET_X, 1, 1.37, 1.37 );
    setScaleKey( ATK_01 + 220 + OFFSET_X, 1, 1.34, 1.34 );
    setScaleKey( ATK_01 + 221 + OFFSET_X, 1, 1.34, 1.34 );
    setScaleKey( ATK_01 + 222 + OFFSET_X, 1, 1.31, 1.31 );
    setScaleKey( ATK_01 + 223 + OFFSET_X, 1, 1.31, 1.31 );
    setScaleKey( ATK_01 + 224 + OFFSET_X, 1, 1.29, 1.29 );
    setScaleKey( ATK_01 + 225 + OFFSET_X, 1, 1.29, 1.29 );
    setScaleKey( ATK_01 + 226 + OFFSET_X, 1, 1.27, 1.27 );
    setScaleKey( ATK_01 + 227 + OFFSET_X, 1, 1.27, 1.27 );
    setScaleKey( ATK_01 + 228 + OFFSET_X, 1, 1.25, 1.25 );
    setScaleKey( ATK_01 + 229 + OFFSET_X, 1, 1.25, 1.25 );
    setScaleKey( ATK_01 + 230 + OFFSET_X, 1, 1.24, 1.24 );
    setScaleKey( ATK_01 + 231 + OFFSET_X, 1, 1.24, 1.24 );
    setScaleKey( ATK_01 + 232 + OFFSET_X, 1, 1.23, 1.23 );
    setScaleKey( ATK_01 + 233 + OFFSET_X, 1, 1.23, 1.23 );
    setScaleKey( ATK_01 + 234 + OFFSET_X, 1, 1.22, 1.22 );
    setScaleKey( ATK_01 + 235 + OFFSET_X, 1, 1.22, 1.22 );
    setScaleKey( ATK_01 + 236 + OFFSET_X, 1, 1.21, 1.21 );
    setScaleKey( ATK_01 + 237 + OFFSET_X, 1, 1.21, 1.21 );
    setScaleKey( ATK_01 + 238 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 241 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 242 + OFFSET_X, 1, 1.19, 1.19 );
    setScaleKey( ATK_01 + 253 + OFFSET_X, 1, 1.19, 1.19 );
    setScaleKey( ATK_01 + 254 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 327 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 328 + OFFSET_X, 1, 1.87, 1.87 );
    setScaleKey( ATK_01 + ATK_end, 1, 1.87, 1.87 );

    setRotateKey( ATK_01 + 10 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 41 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 42 + OFFSET_X, 1, -1 );
    setRotateKey( ATK_01 + 43 + OFFSET_X, 1, -1 );
    setRotateKey( ATK_01 + 44 + OFFSET_X, 1, -4.1 );
    setRotateKey( ATK_01 + 45 + OFFSET_X, 1, -4.1 );
    setRotateKey( ATK_01 + 46 + OFFSET_X, 1, -9.2 );
    setRotateKey( ATK_01 + 47 + OFFSET_X, 1, -9.2 );
    setRotateKey( ATK_01 + 48 + OFFSET_X, 1, -13.5 );
    setRotateKey( ATK_01 + 61 + OFFSET_X, 1, -13.5 );
    setRotateKey( ATK_01 + 62 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 64 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 75 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 76 + OFFSET_X, 1, -13 );
    setRotateKey( ATK_01 + 81 + OFFSET_X, 1, -13 );
    setRotateKey( ATK_01 + 82 + OFFSET_X, 1, -28 );
    setRotateKey( ATK_01 + 87 + OFFSET_X, 1, -28 );
    setRotateKey( ATK_01 + 88 + OFFSET_X, 1, -25.9 );
    setRotateKey( ATK_01 + 89 + OFFSET_X, 1, -25.9 );
    setRotateKey( ATK_01 + 90 + OFFSET_X, 1, -24.1 );
    setRotateKey( ATK_01 + 91 + OFFSET_X, 1, -24.1 );
    setRotateKey( ATK_01 + 92 + OFFSET_X, 1, -22.5 );
    setRotateKey( ATK_01 + 93 + OFFSET_X, 1, -22.5 );
    setRotateKey( ATK_01 + 94 + OFFSET_X, 1, -21.3 );
    setRotateKey( ATK_01 + 95 + OFFSET_X, 1, -21.3 );
    setRotateKey( ATK_01 + 96 + OFFSET_X, 1, -20.3 );
    setRotateKey( ATK_01 + 97 + OFFSET_X, 1, -20.3 );
    setRotateKey( ATK_01 + 98 + OFFSET_X, 1, -19.6 );
    setRotateKey( ATK_01 + 99 + OFFSET_X, 1, -19.6 );
    setRotateKey( ATK_01 + 100 + OFFSET_X, 1, -19.1 );
    setRotateKey( ATK_01 + 101 + OFFSET_X, 1, -19.1 );
    setRotateKey( ATK_01 + 102 + OFFSET_X, 1, -19 );
    setRotateKey( ATK_01 + 103 + OFFSET_X, 1, -19 );
    setRotateKey( ATK_01 + 104 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 199 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 200 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 327 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 328 + OFFSET_X, 1, -19.2 );
    setRotateKey( ATK_01 + 337 + OFFSET_X, 1, -19.2 );
    setRotateKey( ATK_01 + 338 + OFFSET_X, 1, -18.7 );
    setRotateKey( ATK_01 + 339 + OFFSET_X, 1, -18.7 );
    setRotateKey( ATK_01 + 340 + OFFSET_X, 1, -18.3 );
    setRotateKey( ATK_01 + 341 + OFFSET_X, 1, -18.3 );
    setRotateKey( ATK_01 + 342 + OFFSET_X, 1, -17.8 );
    setRotateKey( ATK_01 + 343 + OFFSET_X, 1, -17.8 );
    setRotateKey( ATK_01 + 344 + OFFSET_X, 1, -17.4 );
    setRotateKey( ATK_01 + 345 + OFFSET_X, 1, -17.4 );
    setRotateKey( ATK_01 + 346 + OFFSET_X, 1, -17 );
    setRotateKey( ATK_01 + 347 + OFFSET_X, 1, -17 );
    setRotateKey( ATK_01 + 348 + OFFSET_X, 1, -16.7 );
    setRotateKey( ATK_01 + 349 + OFFSET_X, 1, -16.7 );
    setRotateKey( ATK_01 + 350 + OFFSET_X, 1, -16.3 );
    setRotateKey( ATK_01 + 351 + OFFSET_X, 1, -16.3 );
    setRotateKey( ATK_01 + 352 + OFFSET_X, 1, -16 );
    setRotateKey( ATK_01 + 353 + OFFSET_X, 1, -16 );
    setRotateKey( ATK_01 + 354 + OFFSET_X, 1, -15.8 );
    setRotateKey( ATK_01 + 355 + OFFSET_X, 1, -15.8 );
    setRotateKey( ATK_01 + 356 + OFFSET_X, 1, -15.5 );
    setRotateKey( ATK_01 + 357 + OFFSET_X, 1, -15.5 );
    setRotateKey( ATK_01 + 358 + OFFSET_X, 1, -15.3 );
    setRotateKey( ATK_01 + 359 + OFFSET_X, 1, -15.3 );
    setRotateKey( ATK_01 + 360 + OFFSET_X, 1, -15.1 );
    setRotateKey( ATK_01 + 361 + OFFSET_X, 1, -15.1 );
    setRotateKey( ATK_01 + 362 + OFFSET_X, 1, -14.9 );
    setRotateKey( ATK_01 + 363 + OFFSET_X, 1, -14.9 );
    setRotateKey( ATK_01 + 364 + OFFSET_X, 1, -14.7 );
    setRotateKey( ATK_01 + 365 + OFFSET_X, 1, -14.7 );
    setRotateKey( ATK_01 + 366 + OFFSET_X, 1, -14.6 );
    setRotateKey( ATK_01 + 367 + OFFSET_X, 1, -14.6 );
    setRotateKey( ATK_01 + 368 + OFFSET_X, 1, -14.5 );
    setRotateKey( ATK_01 + 369 + OFFSET_X, 1, -14.5 );
    setRotateKey( ATK_01 + 370 + OFFSET_X, 1, -14.4 );
    setRotateKey( ATK_01 + 371 + OFFSET_X, 1, -14.4 );
    setRotateKey( ATK_01 + 372 + OFFSET_X, 1, -14.3 );
    setRotateKey( ATK_01 + 377 + OFFSET_X, 1, -14.3 );
    setRotateKey( ATK_01 + 378 + OFFSET_X, 1, -18.6 );
    setRotateKey( ATK_01 + 379 + OFFSET_X, 1, -18.6 );
    setRotateKey( ATK_01 + 380 + OFFSET_X, 1, -31.5 );
    setRotateKey( ATK_01 + 381 + OFFSET_X, 1, -31.5 );
    setRotateKey( ATK_01 + 382 + OFFSET_X, 1, 4.8 );
    setRotateKey( ATK_01 + 383 + OFFSET_X, 1, 4.8 );
    setRotateKey( ATK_01 + 384 + OFFSET_X, 1, 0.5 );
    setRotateKey( ATK_01 + ATK_end, 1, 0.5 );

    setAlphaKey( ATK_01 + 10 + OFFSET_X, 1, 128 );
    setAlphaKey( ATK_01 + 13 + OFFSET_X, 1, 128 );
    setAlphaKey( ATK_01 + 14 + OFFSET_X, 1, 255 );
    setAlphaKey( ATK_01 + ATK_end, 1, 255 );

else

    setDisp( ATK_01 + 0, 1, 0 );
    setDisp( ATK_01 + 10 + OFFSET_X, 1, 1 );
    setDisp( ATK_01 + 12 + OFFSET_X, 1, 0 );
    setDisp( ATK_01 + 14 + OFFSET_X, 1, 1 );
    setDisp( ATK_01 + 120 + OFFSET_X, 1, 0 );
    setDisp( ATK_01 + 200 + OFFSET_X, 1, 1 );
    setDisp( ATK_01 + ATK_end -2, 1, 0 );

    changeAnime( ATK_01 + 10 + OFFSET_X, 1, 104 );
    changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 1, 111, 1 );
    changeAnime( ATK_01 + 48 + OFFSET_X, 1, 109 );
    changeAnime( ATK_01 + 62 + OFFSET_X, 1, 101 );
    changeAnime( ATK_01 + 64 + OFFSET_X, 1, 104 );
    changeAnime( ATK_01 + 76 + OFFSET_X, 1, 112 );
    changeAnime( ATK_01 + 82 + OFFSET_X, 1, 106 );
    changeAnime( ATK_01 + 104 + OFFSET_X, 1, 108 );
    changeAnime( ATK_01 + 200 + OFFSET_X, 1, 5 );
    changeAnime( ATK_01 + 328 + OFFSET_X, 1, 106 );
    changeAnime( ATK_01 + 382 + OFFSET_X, 1, 117 );

    setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 125.6, 40 , 0 );
    setMoveKey( ATK_01 + 41 + OFFSET_X, 1, 125.6, 40 , 0 );
    setMoveKey( ATK_01 + 42 + OFFSET_X, 1, 121.5, 37.5 , 0 );
    setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 121.5, 37.5 , 0 );
    setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 100.5, 42 , 0 );
    setMoveKey( ATK_01 + 45 + OFFSET_X, 1, 100.5, 42 , 0 );
    setMoveKey( ATK_01 + 46 + OFFSET_X, 1, 79, 28.7 , 0 );
    setMoveKey( ATK_01 + 47 + OFFSET_X, 1, 79, 28.7 , 0 );
    setMoveKey( ATK_01 + 48 + OFFSET_X, 1, 49.4, 10.5 , 0 );
    setMoveKey( ATK_01 + 61 + OFFSET_X, 1, 49.4, 10.5 , 0 );
    setMoveKey( ATK_01 + 62 + OFFSET_X, 1, 118.2, 44.6 , 0 );
    setMoveKey( ATK_01 + 63 + OFFSET_X, 1, 118.2, 44.6 , 0 );
    setMoveKey( ATK_01 + 64 + OFFSET_X, 1, 127.8, 50.6 , 0 );
    setMoveKey( ATK_01 + 65 + OFFSET_X, 1, 127.8, 50.6 , 0 );
    setMoveKey( ATK_01 + 66 + OFFSET_X, 1, 126.4, 50.5 , 0 );
    setMoveKey( ATK_01 + 67 + OFFSET_X, 1, 126.4, 50.5 , 0 );
    setMoveKey( ATK_01 + 68 + OFFSET_X, 1, 124.2, 50.3 , 0 );
    setMoveKey( ATK_01 + 69 + OFFSET_X, 1, 124.2, 50.3 , 0 );
    setMoveKey( ATK_01 + 70 + OFFSET_X, 1, 121, 50.1 , 0 );
    setMoveKey( ATK_01 + 71 + OFFSET_X, 1, 121, 50.1 , 0 );
    setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 117, 49.8 , 0 );
    setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 117, 49.8 , 0 );
    setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 112, 49.5 , 0 );
    setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 112, 49.5 , 0 );
    setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 51.2, 70.4 , 0 );
    setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 51.2, 70.4 , 0 );
    setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 45, 69.7 , 0 );
    setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 45, 69.7 , 0 );
    setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 37.9, 68.9 , 0 );
    setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 37.9, 68.9 , 0 );
    setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 66.7, 42.3 , 0 );
    setMoveKey( ATK_01 + 83 + OFFSET_X, 1, 66.7, 42.3 , 0 );
    setMoveKey( ATK_01 + 84 + OFFSET_X, 1, 60.1, 41.9 , 0 );
    setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 60.1, 41.9 , 0 );
    setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 54.5, 41.5 , 0 );
    setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 54.5, 41.5 , 0 );
    setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 66.9, 41 , 0 );
    setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 66.9, 41 , 0 );
    setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 77.6, 40.5 , 0 );
    setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 77.6, 40.5 , 0 );
    setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 86.9, 40.1 , 0 );
    setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 86.9, 40.1 , 0 );
    setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 94.7, 39.8 , 0 );
    setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 94.7, 39.8 , 0 );
    setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 101.2, 39.6 , 0 );
    setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 101.2, 39.6 , 0 );
    setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 106.4, 39.5 , 0 );
    setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 106.4, 39.5 , 0 );
    setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 102.5, 39.6 , 0 );
    setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 102.5, 39.6 , 0 );
    setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 81.9, 40.2 , 0 );
    setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 81.9, 40.2 , 0 );
    setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 90.3, 47.8 , 0 );
    setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 90.3, 47.8 , 0 );
    setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 69.1, 48.4 , 0 );
    setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 69.1, 48.4 , 0 );
    setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 62, 48.7 , 0 );
    setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 62, 48.7 , 0 );
    setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 331.8, 48.7 , 0 );
    setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 331.8, 48.7 , 0 );
    setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 601.6, 48.7 , 0 );
    setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 601.6, 48.7 , 0 );
    setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 871.4, 48.7 , 0 );
    setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 871.4, 48.7 , 0 );
    setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 1141.2, 48.7 , 0 );
    setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 1141.2, 48.7 , 0 );
    setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 1411, 48.7 , 0 );
    setMoveKey( ATK_01 + 199 + OFFSET_X, 1, 1411, 48.7 , 0 );
    setMoveKey( ATK_01 + 200 + OFFSET_X, 1, 0, 0.8 , 0 );
    setMoveKey( ATK_01 + 201 + OFFSET_X, 1, 0, 0.8 , 0 );
    setMoveKey( ATK_01 + 202 + OFFSET_X, 1, -0.1, 0.6 , 0 );
    setMoveKey( ATK_01 + 203 + OFFSET_X, 1, -0.1, 0.6 , 0 );
    setMoveKey( ATK_01 + 204 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 205 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 206 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 207 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 0, 0.4 , 0 );
    setMoveKey( ATK_01 + 212 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 213 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 216 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 219 + OFFSET_X, 1, -0.1, 0.4 , 0 );
    setMoveKey( ATK_01 + 220 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 221 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 222 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 223 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 224 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 230 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 231 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 236 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 237 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 240 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 241 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 246 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 249 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 255 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 256 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 259 + OFFSET_X, 1, -0.1, 0.3 , 0 );
    setMoveKey( ATK_01 + 260 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 327 + OFFSET_X, 1, 0, 0.3 , 0 );
    setMoveKey( ATK_01 + 328 + OFFSET_X, 1, -70.2, 1.7 , 0 );
    setMoveKey( ATK_01 + 337 + OFFSET_X, 1, -70.2, 1.7 , 0 );
    setMoveKey( ATK_01 + 338 + OFFSET_X, 1, -60.6, 1.6 , 0 );
    setMoveKey( ATK_01 + 339 + OFFSET_X, 1, -60.6, 1.6 , 0 );
    setMoveKey( ATK_01 + 340 + OFFSET_X, 1, -51.6, 1.5 , 0 );
    setMoveKey( ATK_01 + 341 + OFFSET_X, 1, -51.6, 1.5 , 0 );
    setMoveKey( ATK_01 + 342 + OFFSET_X, 1, -43, 1.5 , 0 );
    setMoveKey( ATK_01 + 343 + OFFSET_X, 1, -43, 1.5 , 0 );
    setMoveKey( ATK_01 + 344 + OFFSET_X, 1, -34.9, 1.4 , 0 );
    setMoveKey( ATK_01 + 345 + OFFSET_X, 1, -34.9, 1.4 , 0 );
    setMoveKey( ATK_01 + 346 + OFFSET_X, 1, -27.3, 1.3 , 0 );
    setMoveKey( ATK_01 + 347 + OFFSET_X, 1, -27.3, 1.3 , 0 );
    setMoveKey( ATK_01 + 348 + OFFSET_X, 1, -20.2, 1.3 , 0 );
    setMoveKey( ATK_01 + 349 + OFFSET_X, 1, -20.2, 1.3 , 0 );
    setMoveKey( ATK_01 + 350 + OFFSET_X, 1, -13.5, 1.2 , 0 );
    setMoveKey( ATK_01 + 351 + OFFSET_X, 1, -13.5, 1.2 , 0 );
    setMoveKey( ATK_01 + 352 + OFFSET_X, 1, -7.4, 1.2 , 0 );
    setMoveKey( ATK_01 + 353 + OFFSET_X, 1, -7.4, 1.2 , 0 );
    setMoveKey( ATK_01 + 354 + OFFSET_X, 1, -1.8, 1.1 , 0 );
    setMoveKey( ATK_01 + 355 + OFFSET_X, 1, -1.8, 1.1 , 0 );
    setMoveKey( ATK_01 + 356 + OFFSET_X, 1, 3.4, 1.1 , 0 );
    setMoveKey( ATK_01 + 357 + OFFSET_X, 1, 3.4, 1.1 , 0 );
    setMoveKey( ATK_01 + 358 + OFFSET_X, 1, 8, 1 , 0 );
    setMoveKey( ATK_01 + 359 + OFFSET_X, 1, 8, 1 , 0 );
    setMoveKey( ATK_01 + 360 + OFFSET_X, 1, 12.2, 1 , 0 );
    setMoveKey( ATK_01 + 361 + OFFSET_X, 1, 12.2, 1 , 0 );
    setMoveKey( ATK_01 + 362 + OFFSET_X, 1, 15.9, 1 , 0 );
    setMoveKey( ATK_01 + 363 + OFFSET_X, 1, 15.9, 1 , 0 );
    setMoveKey( ATK_01 + 364 + OFFSET_X, 1, 19.1, 0.9 , 0 );
    setMoveKey( ATK_01 + 365 + OFFSET_X, 1, 19.1, 0.9 , 0 );
    setMoveKey( ATK_01 + 366 + OFFSET_X, 1, 21.8, 0.9 , 0 );
    setMoveKey( ATK_01 + 367 + OFFSET_X, 1, 21.8, 0.9 , 0 );
    setMoveKey( ATK_01 + 368 + OFFSET_X, 1, 24, 0.9 , 0 );
    setMoveKey( ATK_01 + 369 + OFFSET_X, 1, 24, 0.9 , 0 );
    setMoveKey( ATK_01 + 370 + OFFSET_X, 1, 25.7, 0.9 , 0 );
    setMoveKey( ATK_01 + 371 + OFFSET_X, 1, 25.7, 0.9 , 0 );
    setMoveKey( ATK_01 + 372 + OFFSET_X, 1, 26.9, 0.9 , 0 );
    setMoveKey( ATK_01 + 373 + OFFSET_X, 1, 26.9, 0.9 , 0 );
    setMoveKey( ATK_01 + 374 + OFFSET_X, 1, 27.7, 0.8 , 0 );
    setMoveKey( ATK_01 + 375 + OFFSET_X, 1, 27.7, 0.8 , 0 );
    setMoveKey( ATK_01 + 376 + OFFSET_X, 1, 27.9, 0.8 , 0 );
    setMoveKey( ATK_01 + 377 + OFFSET_X, 1, 27.9, 0.8 , 0 );
    setMoveKey( ATK_01 + 378 + OFFSET_X, 1, 27.8, 1.6 , 0 );
    setMoveKey( ATK_01 + 379 + OFFSET_X, 1, 27.8, 1.6 , 0 );
    setMoveKey( ATK_01 + 380 + OFFSET_X, 1, 27.2, 3.7 , 0 );
    setMoveKey( ATK_01 + 381 + OFFSET_X, 1, 27.2, 3.7 , 0 );
    setMoveKey( ATK_01 + 382 + OFFSET_X, 1, 18, 0.5 , 0 );
    setMoveKey( ATK_01 + ATK_end -3, 1, 18, 0.5 , 0 );
    setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

    setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 1.6, 1.6 );
    setScaleKey( ATK_01 + 67 + OFFSET_X, 1, 1.6, 1.6 );
    setScaleKey( ATK_01 + 68 + OFFSET_X, 1, 1.59, 1.59 );
    setScaleKey( ATK_01 + 69 + OFFSET_X, 1, 1.59, 1.59 );
    setScaleKey( ATK_01 + 70 + OFFSET_X, 1, 1.58, 1.58 );
    setScaleKey( ATK_01 + 73 + OFFSET_X, 1, 1.58, 1.58 );
    setScaleKey( ATK_01 + 74 + OFFSET_X, 1, 1.56, 1.56 );
    setScaleKey( ATK_01 + 75 + OFFSET_X, 1, 1.56, 1.56 );
    setScaleKey( ATK_01 + 76 + OFFSET_X, 1, 1.55, 1.55 );
    setScaleKey( ATK_01 + 77 + OFFSET_X, 1, 1.55, 1.55 );
    setScaleKey( ATK_01 + 78 + OFFSET_X, 1, 1.54, 1.54 );
    setScaleKey( ATK_01 + 79 + OFFSET_X, 1, 1.54, 1.54 );
    setScaleKey( ATK_01 + 80 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 81 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 82 + OFFSET_X, 1, 1.5, 1.5 );
    setScaleKey( ATK_01 + 83 + OFFSET_X, 1, 1.5, 1.5 );
    setScaleKey( ATK_01 + 84 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 85 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 86 + OFFSET_X, 1, 1.48, 1.48 );
    setScaleKey( ATK_01 + 87 + OFFSET_X, 1, 1.48, 1.48 );
    setScaleKey( ATK_01 + 88 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 91 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 92 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 93 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 94 + OFFSET_X, 1, 1.44, 1.44 );
    setScaleKey( ATK_01 + 99 + OFFSET_X, 1, 1.44, 1.44 );
    setScaleKey( ATK_01 + 100 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 101 + OFFSET_X, 1, 1.45, 1.45 );
    setScaleKey( ATK_01 + 102 + OFFSET_X, 1, 1.47, 1.47 );
    setScaleKey( ATK_01 + 103 + OFFSET_X, 1, 1.47, 1.47 );
    setScaleKey( ATK_01 + 104 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 105 + OFFSET_X, 1, 1.49, 1.49 );
    setScaleKey( ATK_01 + 106 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 199 + OFFSET_X, 1, 1.52, 1.52 );
    setScaleKey( ATK_01 + 200 + OFFSET_X, 1, 3.09, 3.09 );
    setScaleKey( ATK_01 + 201 + OFFSET_X, 1, 3.09, 3.09 );
    setScaleKey( ATK_01 + 202 + OFFSET_X, 1, 2.14, 2.14 );
    setScaleKey( ATK_01 + 203 + OFFSET_X, 1, 2.14, 2.14 );
    setScaleKey( ATK_01 + 204 + OFFSET_X, 1, 1.9, 1.9 );
    setScaleKey( ATK_01 + 205 + OFFSET_X, 1, 1.9, 1.9 );
    setScaleKey( ATK_01 + 206 + OFFSET_X, 1, 1.75, 1.75 );
    setScaleKey( ATK_01 + 207 + OFFSET_X, 1, 1.75, 1.75 );
    setScaleKey( ATK_01 + 208 + OFFSET_X, 1, 1.65, 1.65 );
    setScaleKey( ATK_01 + 209 + OFFSET_X, 1, 1.65, 1.65 );
    setScaleKey( ATK_01 + 210 + OFFSET_X, 1, 1.57, 1.57 );
    setScaleKey( ATK_01 + 211 + OFFSET_X, 1, 1.57, 1.57 );
    setScaleKey( ATK_01 + 212 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 213 + OFFSET_X, 1, 1.51, 1.51 );
    setScaleKey( ATK_01 + 214 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 215 + OFFSET_X, 1, 1.46, 1.46 );
    setScaleKey( ATK_01 + 216 + OFFSET_X, 1, 1.41, 1.41 );
    setScaleKey( ATK_01 + 217 + OFFSET_X, 1, 1.41, 1.41 );
    setScaleKey( ATK_01 + 218 + OFFSET_X, 1, 1.37, 1.37 );
    setScaleKey( ATK_01 + 219 + OFFSET_X, 1, 1.37, 1.37 );
    setScaleKey( ATK_01 + 220 + OFFSET_X, 1, 1.34, 1.34 );
    setScaleKey( ATK_01 + 221 + OFFSET_X, 1, 1.34, 1.34 );
    setScaleKey( ATK_01 + 222 + OFFSET_X, 1, 1.31, 1.31 );
    setScaleKey( ATK_01 + 223 + OFFSET_X, 1, 1.31, 1.31 );
    setScaleKey( ATK_01 + 224 + OFFSET_X, 1, 1.29, 1.29 );
    setScaleKey( ATK_01 + 225 + OFFSET_X, 1, 1.29, 1.29 );
    setScaleKey( ATK_01 + 226 + OFFSET_X, 1, 1.27, 1.27 );
    setScaleKey( ATK_01 + 227 + OFFSET_X, 1, 1.27, 1.27 );
    setScaleKey( ATK_01 + 228 + OFFSET_X, 1, 1.25, 1.25 );
    setScaleKey( ATK_01 + 229 + OFFSET_X, 1, 1.25, 1.25 );
    setScaleKey( ATK_01 + 230 + OFFSET_X, 1, 1.24, 1.24 );
    setScaleKey( ATK_01 + 231 + OFFSET_X, 1, 1.24, 1.24 );
    setScaleKey( ATK_01 + 232 + OFFSET_X, 1, 1.23, 1.23 );
    setScaleKey( ATK_01 + 233 + OFFSET_X, 1, 1.23, 1.23 );
    setScaleKey( ATK_01 + 234 + OFFSET_X, 1, 1.22, 1.22 );
    setScaleKey( ATK_01 + 235 + OFFSET_X, 1, 1.22, 1.22 );
    setScaleKey( ATK_01 + 236 + OFFSET_X, 1, 1.21, 1.21 );
    setScaleKey( ATK_01 + 237 + OFFSET_X, 1, 1.21, 1.21 );
    setScaleKey( ATK_01 + 238 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 241 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 242 + OFFSET_X, 1, 1.19, 1.19 );
    setScaleKey( ATK_01 + 253 + OFFSET_X, 1, 1.19, 1.19 );
    setScaleKey( ATK_01 + 254 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 327 + OFFSET_X, 1, 1.2, 1.2 );
    setScaleKey( ATK_01 + 328 + OFFSET_X, 1, 1.87, 1.87 );
    setScaleKey( ATK_01 + ATK_end, 1, 1.87, 1.87 );

    setRotateKey( ATK_01 + 10 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 41 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 42 + OFFSET_X, 1, -1 );
    setRotateKey( ATK_01 + 43 + OFFSET_X, 1, -1 );
    setRotateKey( ATK_01 + 44 + OFFSET_X, 1, -4.1 );
    setRotateKey( ATK_01 + 45 + OFFSET_X, 1, -4.1 );
    setRotateKey( ATK_01 + 46 + OFFSET_X, 1, -9.2 );
    setRotateKey( ATK_01 + 47 + OFFSET_X, 1, -9.2 );
    setRotateKey( ATK_01 + 48 + OFFSET_X, 1, -13.5 );
    setRotateKey( ATK_01 + 61 + OFFSET_X, 1, -13.5 );
    setRotateKey( ATK_01 + 62 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 64 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 75 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 76 + OFFSET_X, 1, -13 );
    setRotateKey( ATK_01 + 81 + OFFSET_X, 1, -13 );
    setRotateKey( ATK_01 + 82 + OFFSET_X, 1, -28 );
    setRotateKey( ATK_01 + 87 + OFFSET_X, 1, -28 );
    setRotateKey( ATK_01 + 88 + OFFSET_X, 1, -25.9 );
    setRotateKey( ATK_01 + 89 + OFFSET_X, 1, -25.9 );
    setRotateKey( ATK_01 + 90 + OFFSET_X, 1, -24.1 );
    setRotateKey( ATK_01 + 91 + OFFSET_X, 1, -24.1 );
    setRotateKey( ATK_01 + 92 + OFFSET_X, 1, -22.5 );
    setRotateKey( ATK_01 + 93 + OFFSET_X, 1, -22.5 );
    setRotateKey( ATK_01 + 94 + OFFSET_X, 1, -21.3 );
    setRotateKey( ATK_01 + 95 + OFFSET_X, 1, -21.3 );
    setRotateKey( ATK_01 + 96 + OFFSET_X, 1, -20.3 );
    setRotateKey( ATK_01 + 97 + OFFSET_X, 1, -20.3 );
    setRotateKey( ATK_01 + 98 + OFFSET_X, 1, -19.6 );
    setRotateKey( ATK_01 + 99 + OFFSET_X, 1, -19.6 );
    setRotateKey( ATK_01 + 100 + OFFSET_X, 1, -19.1 );
    setRotateKey( ATK_01 + 101 + OFFSET_X, 1, -19.1 );
    setRotateKey( ATK_01 + 102 + OFFSET_X, 1, -19 );
    setRotateKey( ATK_01 + 103 + OFFSET_X, 1, -19 );
    setRotateKey( ATK_01 + 104 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 199 + OFFSET_X, 1, 0.2 );
    setRotateKey( ATK_01 + 200 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 327 + OFFSET_X, 1, 0 );
    setRotateKey( ATK_01 + 328 + OFFSET_X, 1, -19.2 );
    setRotateKey( ATK_01 + 337 + OFFSET_X, 1, -19.2 );
    setRotateKey( ATK_01 + 338 + OFFSET_X, 1, -18.7 );
    setRotateKey( ATK_01 + 339 + OFFSET_X, 1, -18.7 );
    setRotateKey( ATK_01 + 340 + OFFSET_X, 1, -18.3 );
    setRotateKey( ATK_01 + 341 + OFFSET_X, 1, -18.3 );
    setRotateKey( ATK_01 + 342 + OFFSET_X, 1, -17.8 );
    setRotateKey( ATK_01 + 343 + OFFSET_X, 1, -17.8 );
    setRotateKey( ATK_01 + 344 + OFFSET_X, 1, -17.4 );
    setRotateKey( ATK_01 + 345 + OFFSET_X, 1, -17.4 );
    setRotateKey( ATK_01 + 346 + OFFSET_X, 1, -17 );
    setRotateKey( ATK_01 + 347 + OFFSET_X, 1, -17 );
    setRotateKey( ATK_01 + 348 + OFFSET_X, 1, -16.7 );
    setRotateKey( ATK_01 + 349 + OFFSET_X, 1, -16.7 );
    setRotateKey( ATK_01 + 350 + OFFSET_X, 1, -16.3 );
    setRotateKey( ATK_01 + 351 + OFFSET_X, 1, -16.3 );
    setRotateKey( ATK_01 + 352 + OFFSET_X, 1, -16 );
    setRotateKey( ATK_01 + 353 + OFFSET_X, 1, -16 );
    setRotateKey( ATK_01 + 354 + OFFSET_X, 1, -15.8 );
    setRotateKey( ATK_01 + 355 + OFFSET_X, 1, -15.8 );
    setRotateKey( ATK_01 + 356 + OFFSET_X, 1, -15.5 );
    setRotateKey( ATK_01 + 357 + OFFSET_X, 1, -15.5 );
    setRotateKey( ATK_01 + 358 + OFFSET_X, 1, -15.3 );
    setRotateKey( ATK_01 + 359 + OFFSET_X, 1, -15.3 );
    setRotateKey( ATK_01 + 360 + OFFSET_X, 1, -15.1 );
    setRotateKey( ATK_01 + 361 + OFFSET_X, 1, -15.1 );
    setRotateKey( ATK_01 + 362 + OFFSET_X, 1, -14.9 );
    setRotateKey( ATK_01 + 363 + OFFSET_X, 1, -14.9 );
    setRotateKey( ATK_01 + 364 + OFFSET_X, 1, -14.7 );
    setRotateKey( ATK_01 + 365 + OFFSET_X, 1, -14.7 );
    setRotateKey( ATK_01 + 366 + OFFSET_X, 1, -14.6 );
    setRotateKey( ATK_01 + 367 + OFFSET_X, 1, -14.6 );
    setRotateKey( ATK_01 + 368 + OFFSET_X, 1, -14.5 );
    setRotateKey( ATK_01 + 369 + OFFSET_X, 1, -14.5 );
    setRotateKey( ATK_01 + 370 + OFFSET_X, 1, -14.4 );
    setRotateKey( ATK_01 + 371 + OFFSET_X, 1, -14.4 );
    setRotateKey( ATK_01 + 372 + OFFSET_X, 1, -14.3 );
    setRotateKey( ATK_01 + 377 + OFFSET_X, 1, -14.3 );
    setRotateKey( ATK_01 + 378 + OFFSET_X, 1, -18.6 );
    setRotateKey( ATK_01 + 379 + OFFSET_X, 1, -18.6 );
    setRotateKey( ATK_01 + 380 + OFFSET_X, 1, -31.5 );
    setRotateKey( ATK_01 + 381 + OFFSET_X, 1, -31.5 );
    setRotateKey( ATK_01 + 382 + OFFSET_X, 1, 4.8 );
    setRotateKey( ATK_01 + 383 + OFFSET_X, 1, 4.8 );
    setRotateKey( ATK_01 + 384 + OFFSET_X, 1, 0.5 );
    setRotateKey( ATK_01 + ATK_end, 1, 0.5 );

    setAlphaKey( ATK_01 + 10 + OFFSET_X, 1, 128 );
    setAlphaKey( ATK_01 + 13 + OFFSET_X, 1, 128 );
    setAlphaKey( ATK_01 + 14 + OFFSET_X, 1, 255 );
    setAlphaKey( ATK_01 + ATK_end, 1, 255 );

end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 14; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-12, 1042);
	
	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
	
	
	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
	
		if (_IS_PLAYER_SIDE_ == 1) then
	
			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
	
		else
	
			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
	
		end
	
	setEffAlphaKey( SP_dodge, kaihi, 255);
	
	pauseAll( SP_dodge, 67);
	
	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
	setMoveKey(  SP_dodge+5, 0, 90, 80,    0);-- 中央位置から
	setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
	--setDisp( SP_dodge+5, 0, 0);
	
	endPhase(SP_dodge+10);
	do return end
	else end

-- ** 音 ** --
--瞬間移動
SE001 = playSeVer2( ATK_01 + 0, 1109, "", 0, 0, 0, -1);
SE002 = playSeVer2( ATK_01 + 10, 1109, "", 0, 0, 0, -1);

--連続攻撃
SE003 = playSeVer2( ATK_01 + 34, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( ATK_01 + 40, 1110, "", 0, 0, 0, -1);
SE005 = playSeVer2( ATK_01 + 40, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 40, SE005, 71 );
SE006 = playSeVer2( ATK_01 + 50, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( ATK_01 + 60, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 60, SE007, 79 );
SE008 = playSeVer2( ATK_01 + 70, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 70, SE008, 89 );

--蹴り飛ばす
SE009 = playSeVer2( ATK_01 + 88, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 88, SE009, 69 );
SE010 = playSeVer2( ATK_01 + 96, 1120, "", 0, 0, 0, -1);

--連続気弾発射
SE011 = playSeVer2( ATK_01 + 122, 1021, "", 0, 0, 0, -1);
SE012 = playSeVer2( ATK_01 + 122, 1402, "", 0, 0, 0, -1);
SE013 = playSeVer2( ATK_01 + 124, 1016, "", 0, 0, 0, -1);
SE014 = playSeVer2( ATK_01 + 140, 1402, "", 0, 0, 0, -1);
SE015 = playSeVer2( ATK_01 + 142, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( ATK_01 + 158, 1402, "", 0, 0, 0, -1);
SE017 = playSeVer2( ATK_01 + 160, 1016, "", 0, 0, 0, -1);
SE018 = playSeVer2( ATK_01 + 174, 1402, "", 0, 0, 0, -1);
SE019 = playSeVer2( ATK_01 + 176, 1016, "", 0, 0, 0, -1);

--気弾飛んでいく
SE020 = playSeVer2( ATK_01 + 192, 1021, "", 0, 0, 0, -1);
SE021 = playSeVer2( ATK_01 + 192, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( ATK_01 + 192, SE021, 195 );

--爆発
SE022 = playSeVer2( ATK_01 + 254, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( ATK_01 + 264, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 264, SE023, 69 );

--敵構える
SE024 = playSeVer2( ATK_01 + 370, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 370, SE024, 72 );

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 300;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end

print ("[lua]exec bk0001");