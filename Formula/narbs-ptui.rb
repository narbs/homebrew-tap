class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v1.0.9.tar.gz"
  sha256 "c85a7c39b4fb2774db7010d2e18771bb46c52d7ae65f411d4096facc2b68269d"
  license "MIT"

  depends_on "rust" => :build
  depends_on "chafa"
  depends_on "imagemagick"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ptui --version")
  end
end
