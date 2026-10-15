class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v2.7.2.tar.gz"
  sha256 "a2aa59c66cfdc16d9c6741617f0e98bab52667464f2871d7779a59a41c1dda2b"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "nasm" => :build
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
