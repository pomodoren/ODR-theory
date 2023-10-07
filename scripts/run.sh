# connect bibliography
pandoc ChaptX.md --bibliography=lib_exp.bib --citeproc -o chapters/ChaptX.pdf

pandoc src/*.md --output chapters/Thesis.pdf

pandoc src/*.md --output results/Thesis.pdf --bibliography='src/My Collection.bib' --citeproc

pandoc src/12_chapter_4.md --output results/Chapter4.pdf --bibliography='bibliography.bib' --citeproc

pandoc src/*.md --output results/Thesis.pdf --bibliography='bibliography.bib' --citeproc
