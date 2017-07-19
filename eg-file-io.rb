#Template generated on 2017-07-19 15:07:59 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class EgFileIo < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the EgFileIo formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '1'

  depends_on 'homebrew/science/genometools'
  depends_on 'ensembl/ensembl/maftools'
  depends_on 'homebrew/science/newick-utils'

  def install
    File.open('eg-file-io', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'eg-file-io'
  end
end
    