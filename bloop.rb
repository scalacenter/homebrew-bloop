class Bloop < Formula
  desc "Bloop gives you fast edit/compile/test workflows for Scala."
  homepage "https://github.com/scalacenter/bloop"
  version "1.0.0-M1"
  url "https://github.com/scalacenter/bloop/releases/download/v1.0.0-M1/install.py"
  sha256 "a9a28ed45efb8b2c8cd523b6e69c6143a77af1d1b99b88c9bfe8223389127b20"
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