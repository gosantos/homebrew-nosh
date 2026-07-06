class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.2.0/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "472f68e6e1ebbeed1f07d91dcf213ec056186150d15a6d0cf413c876e27d5a38"
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.2.0/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "d20fdfb919ecf1503697a6344e22e56c0e59db336e666af99a5571e055582d2f"
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
