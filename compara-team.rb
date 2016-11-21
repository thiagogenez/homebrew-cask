#Template generated on 2016-11-21 12:00:06 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class ComparaTeam < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the ComparaTeam formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '0.1'

  depends_on 'ensembl/ensembl/exonerate22'
  depends_on 'homebrew/homebrew-science/infernal'
  depends_on 'homebrew/homebrew-science/hmmer'
  depends_on 'homebrew/homebrew-science/hmmer2'
  depends_on 'ensembl/homebrew-ensembl/blast'
  depends_on 'homebrew/homebrew-science/mafft'
  depends_on 'ensembl/homebrew-ensembl/t-coffee'
  depends_on 'ensembl/homebrew-ensembl/hclustersg'
  depends_on 'ensembl/homebrew-ensembl/treebest'
  depends_on 'ensembl/homebrew-ensembl/quicktree'
  depends_on 'codemod'
  depends_on 'ensembl/homebrew-ensembl/ktreedist'
  depends_on 'ensembl/homebrew-ensembl/raxml-get-patterns'
  depends_on 'ensembl/homebrew-ensembl/noisy'
  depends_on 'ensembl/homebrew-ensembl/notung'
  depends_on 'ensembl/homebrew-ensembl/notung'
  depends_on 'ensembl/homebrew-ensembl/pecan'
  depends_on 'ensembl/homebrew-ensembl/ortheus'
  depends_on 'ensembl/homebrew-ensembl/fasttree'
  depends_on 'ensembl/homebrew-ensembl/prottest3'
  depends_on 'homebrew/homebrew-science/trimal'
  depends_on 'ensembl/homebrew-ensembl/badirate'
  depends_on 'ensembl/homebrew-ensembl/cafe'
  depends_on 'ensembl/homebrew-ensembl/gerp'
  depends_on 'homebrew/homebrew-science/mcl'
  depends_on 'ensembl/homebrew-ensembl/prank'
  depends_on 'ensembl/homebrew-ensembl/r2r'
  depends_on 'ensembl/homebrew-ensembl/phast'
  depends_on 'homebrew/homebrew-science/lastz'
  depends_on 'ensembl/homebrew-ensembl/kent'
  depends_on 'homebrew/homebrew-science/blat'
  depends_on 'ensembl/homebrew-ensembl/parsimonator'

  def install
    File.open('compara-team', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'compara-team'
  end
end
    