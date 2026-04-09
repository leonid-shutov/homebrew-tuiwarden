class Tuiwarden < Formula
  desc "Bitwarden terminal UI."
  homepage "https://github.com/leonid-shutov/tuiwarden"
  url "https://github.com/leonid-shutov/tuiwarden/archive/refs/tags/v1.0.0-alpha.1.tar.gz"
  sha256 "8ebfd4083fb876d68435a2b33614053bd597f7ef46e45aee75480b4e72f6b988"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["libexec/bin/*"]
  end

  test do
    system "#{bin}/tuiwarden", "--version"
  end
end
