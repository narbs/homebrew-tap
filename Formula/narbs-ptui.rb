class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v2.2.4.tar.gz"
  sha256 "abbbd4d6ef04b35f36a73048563e4e3ea2d7e902c77a9b4db9eb46854cab355e"
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
