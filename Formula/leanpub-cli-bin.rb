class LeanPubCliBin < Formula
  version '0.1.1'
  desc "CLI tool for leanpub.com."
  homepage "https://github.com/hjiang/leanpub-cli"

  if OS.mac?
      url "https://github.com/hjiang/leanpub-cli/releases/download/v#{version}/leanpub-cli-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "60ce1dbb4d7e4d48eb2a9ceda6c28f10d5a2a2d7b953fafd2a8edc66fca276ef"
  elsif OS.linux?
      url "https://github.com/hjiang/leanpub-cli/releases/download/v#{version}/leanpub-cli-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "570c6055e07f7ffd2f8a2fa4ed37fb184b37ab0a5e07e05756869d76c97927ef"
  end

  # conflicts_with "leanpub-cli"

  def install
    bin.install "leanpub-cli"
    # man1.install "doc/leanpub-cli.1"
  end
end
