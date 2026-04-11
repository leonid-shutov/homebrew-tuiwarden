class Tuiwarden < Formula
  desc "Bitwarden terminal UI"
  homepage "https://github.com/leonid-shutov/tuiwarden"
  url "https://registry.npmjs.org/tuiwarden/-/tuiwarden-1.0.0-alpha.1.tgz"
  sha256 "139f6e7214924a730cfeec69cf8ce8ea44096cdbd4af8245dbaf13138b720619"
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
