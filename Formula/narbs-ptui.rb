class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "e9343fbd955566212531d0cc498e4411704c2633e1590efb27b8ee2d6ec97706"
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
