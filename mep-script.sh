echo "load $1.log" > jmol01.tmp
echo "wireframe 0.25" > jmol02.tmp
echo "isosurface $1_den.cube map color range -0.05 0.10 $1_esp.cube" > jmol03.tmp
echo "isosurface translucent" > jmol04.tmp
echo "center" > jmol05.tmp
echo "zoom 0" > jmol06.tmp
echo "zoom out" > jmol07.tmp
echo "zoom 85" > jmol08.tmp
echo "rotate z 0" > jmol09.tmp
echo "rotate x 30" > jmol10.tmp
echo "set ambientPercent (50)" > jmol11.tmp
echo "set specularPercent (50)" > jmol12.tmp
echo "background [255,255,255]" > jmol13.tmp
echo "set antialiasDisplay ON" > jmol14.tmp
echo "write POVRAY $1" > jmol15.tmp
cat jmol01.tmp jmol02.tmp jmol03.tmp jmol04.tmp jmol05.tmp jmol06.tmp jmol07.tmp jmol08.tmp jmol09.tmp > pt1.tmp
cat jmol10.tmp jmol11.tmp jmol12.tmp jmol13.tmp jmol14.tmp jmol15.tmp > pt2.tmp
cat pt1.tmp pt2.tmp > $1_jmol.sh
rm -f *.tmp
