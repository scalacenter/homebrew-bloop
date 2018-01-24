class Bloop < Formula
  desc "Bloop gives you fast edit/compile/test workflows for Scala."
  homepage "https://github.com/scalacenter/bloop"
  version "no-tag-yet"
  url "https://raw.githubusercontent.com/scalacenter/bloop/no-tag-yet/bin/install.py"
  sha256 "c8cd4e1126b83c41e1a4e2f7d1bc29b48c52e235254d32630496a7f8ef3e90"
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

