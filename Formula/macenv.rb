class Macenv < Formula
  desc "Set environment variables for GUI applications in macOS"
  homepage "https://github.com/yuezk/macenv"
  url "https://github.com/yuezk/macenv/archive/refs/tags/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "f17af3eef04d5cf494b6343664e8e910fd1f617fa397632f6852e95e5c0b6fe4"
  license "MIT"

  def install
    libexec.install "macenv"
    bin.install_symlink libexec/"macenv"
  end

  test do
    assert_equal "macenv 1.0.0", shell_output("#{bin}/macenv -v").strip
  end
end
