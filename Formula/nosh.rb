class Nosh < Formula
  desc "TUI todo and notes manager"
  homepage "https://github.com/gosantos/nosh"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gosantos/nosh/releases/download/v0.4.1/nosh-aarch64-apple-darwin.tar.gz"
      sha256 "7fcddc3f3aba4f1ac45b4a5cc972262b441725c43ffe9c7fbb645f0fd6452968" # arm
    else
      url "https://github.com/gosantos/nosh/releases/download/v0.4.1/nosh-x86_64-apple-darwin.tar.gz"
      sha256 "0d9b115fb82f46e9e5bfa044d80a08ebc83780694aedd61bb92a05195016129d" # intel
    end
  end

  def install
    bin.install "nosh"
  end

  test do
    system "#{bin}/nosh", "--version"
  end
end
