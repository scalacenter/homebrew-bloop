class Bloop < Formula
  desc "Bloop gives you fast edit/compile/test workflows for Scala."
  homepage "https://github.com/scalacenter/bloop"
  version "no-tag-yet"
  url "https://raw.githubusercontent.com/scalacenter/bloop/no-tag-yet/bin/install.py"
  sha256 "d756f1e3612c9edc4785a745b788bf4add2f1ed12de3689a3e00fb0a0068"
  bottle :unneeded

  depends_on "python"
  depends_on :java => "1.8+"

  def install
      mkdir "bin"
      system "python2", "install.py", "--dest", "bin", "--version", version
      prefix.install "bin"
  end

  test do
  end
end

