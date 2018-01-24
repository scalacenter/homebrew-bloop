class Bloop < Formula
  desc "Bloop gives you fast edit/compile/test workflows for Scala."
  homepage "https://github.com/scalacenter/bloop"
  version "no-tag-yet"
  url "https://raw.githubusercontent.com/scalacenter/bloop/no-tag-yet/bin/install.py"
  sha256 "52b5299d7dc1eeaf51268534e51011acd0cf34fb37f8a29083d9f75ad746e01c"
  bottle :unneeded

  depends_on "python"
  depends_on :java => "1.8+"

  def install
      mkdir "bin"
      system "python2", "install.py", "--dest", "bin", "--version", version
      prefix.install "bin"
  end

  def plist; <<~EOS
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>ProgramArguments</key>
    <array>
        <string>#{bin}/bloop-server</string>
    </array>
    <key>KeepAlive</key>
    <true/>
</dict>
</plist>
          EOS
      end

  test do
  end
end

