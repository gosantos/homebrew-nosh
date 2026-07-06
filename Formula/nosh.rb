class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.1.0/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "7b3963d2e916027893fb2cb2879bf5eb071f7cf0741453ca106321d68f4c0e85"
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.1.0/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "1e66ac74f216481a88faf0e0e6dacb1f4e4055eb3d461f949ebc7a7c6ad8292e"
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
