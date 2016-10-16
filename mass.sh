for f in *.html
do
	pandoc $f -o $f.tex
done

for f in *.tex
do
	sed -i -e 's|{{|\\textit{|g' $f
	sed -i -e 's|}}|\}|g' $f

done