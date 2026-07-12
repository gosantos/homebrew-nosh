class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.3.2/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "04ccd921439cd6ba72dbc0732656c5d922da6adb4d43eb02faa8e09a6afc83f3" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.3.2/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "f426e9ff760df2240de4767c222c3cb94811e64781c04e9f80b28873bed7dbb2" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
