init:

	Rscript requirements.R
	bash init.sh

fetch_data:

	bash fetch_data.sh

model:

	Rscript -e 'rmarkdown::render("./index.Rmd")'


figures:

	rm paper/*.png
	cp figure/*.png paper/

view: 

	python -m SimpleHTTPServer

s3:

	s3cmd put data/smoke-alarm-risk-scores.csv s3://enigma-public/projects/smoke-alarm-risk/data/smoke-alarm-risk-scores.csv 
	s3cmd setacl s3://enigma-public/projects/smoke-alarm-risk/data/smoke-alarm-risk-scores.csv --acl-public --recursive
