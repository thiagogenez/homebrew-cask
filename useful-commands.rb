#Template generated on 2017-08-16 17:32:48 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class UsefulCommands < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the UsefulCommands formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '1'

  depends_on 'jq'

  def install
    File.open('useful-commands', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'useful-commands'
  end
end
    