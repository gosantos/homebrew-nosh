class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.4.1/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "60ee7d7598b4f66dd692f37e3d884d779923acc667ef26a1a5493f89f9b4f255" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.4.1/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "c816c5b6475488fc6edb6be0dde33dae0748618aa0b4f468889aa5612ccccb28" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
