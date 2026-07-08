class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.2.4/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "1b75cce1c341bceb0565356f9ef497bc768407e9c5825b0198bde814689cdbe8" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.2.4/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "43301ed975f929c14bd608d1d8d8bd418edc1797f3afa4f4bd80ae5a5f313b62" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
