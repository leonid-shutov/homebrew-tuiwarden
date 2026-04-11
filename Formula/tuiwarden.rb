class Tuiwarden < Formula
  desc "Bitwarden terminal UI"
  homepage "https://github.com/leonid-shutov/tuiwarden"
  url "https://registry.npmjs.org/tuiwarden/-/tuiwarden-1.0.0-alpha.2.tgz"
  sha256 "76e594ee989a05f30586d154ae4a795aa0e6e5984a19bed85551ce1dedad243b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuiwarden --version")
  end
end
