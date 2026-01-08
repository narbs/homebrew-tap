class NarbsPtui < Formula
  desc "PTUI"
  homepage "https://github.com/narbs/ptui"
  url "https://github.com/narbs/ptui/archive/refs/tags/v1.0.12.tar.gz"
  sha256 "f836a7c8ea8466bc34f0e67b3c7d16a1f4ddd551a1b5ff558357db623de40a72"
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
