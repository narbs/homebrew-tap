class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "2bf7254b38fcd065a00329a3b1c9514eb857d9f8246c9fbacb48c7d511d25fd8"
  license "MIT"

  depends_on "rust" => :build
  depends_on "nasm" => :build
  depends_on "cmake" => :build
  depends_on "chafa"
  depends_on "imagemagick"

  def install
    system "cargo", "install", "--features", "fast-jpeg", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptui --version")
  end
end
