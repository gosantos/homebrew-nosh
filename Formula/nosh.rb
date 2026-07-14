class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.4.1/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "8c363f70e3bdd93570c81e25ca21e1f0374d4a67ee5204ec498b3c5eaae56af4" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.4.1/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "7b0e923e61e96464a1fe2a39e59dc330f6c478e5a8a6b08ad6617ab3d7a21e74" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
