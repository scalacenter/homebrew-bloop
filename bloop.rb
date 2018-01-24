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

