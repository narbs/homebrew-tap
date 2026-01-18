class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "dde212b2654dce1e77039a0c6c8993b7ff7d6af3f72f9bc134cf295991fea6f6"
  license "MIT"

  depends_on "rust" => :build
  depends_on "nasm" => :build
  depends_on "chafa"
  depends_on "imagemagick"

  def install
    system "cargo", "install", "--features", "fast-jpeg", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptui --version")
  end
end
