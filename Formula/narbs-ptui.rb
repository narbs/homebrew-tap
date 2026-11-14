class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v2.7.6.tar.gz"
  sha256 "d29674baae2c4d708780823c16bc479904206a97334be26985a76c32df68b2bc"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "nasm" => :build
  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "chafa"
  depends_on "imagemagick"

  def install
    system "cargo", "install", "--features", "fast-jpeg", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptui --version")
  end
end
