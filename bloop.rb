class Bloop < Formula
  desc "Bloop gives you fast edit/compile/test workflows for Scala."
  homepage "https://github.com/scalacenter/bloop"
  version "1.0.0-M6"
  url "https://github.com/scalacenter/bloop/releases/download/v1.0.0-M6/install.py"
  sha256 "afa915806da781971e1f04430951ffc14e5e0c57ed33f5e501ad1c8908db059c"
  bottle :unneeded

  depends_on "python"
  depends_on :java => "1.8+"

  def install
      mkdir "bin"
      system "python", "install.py", "--dest", "bin", "--version", version
      File.delete("bin/blp-coursier")
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
        <string>#{bin}/blp-server</string>
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
