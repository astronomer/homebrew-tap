# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT023  < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.23.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.23.0/astro_0.23.0_darwin_amd64.tar.gz"
    sha256 "98825325677aadc74c1c7be1cd070c650418315df336915e59bc585a2c20e0c2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.23.0/astro_0.23.0_linux_amd64.tar.gz"
      sha256 "85b98d1a9ff4e5dbc8aa087db4f0a38f747882d6a4693eabc060cee1acc8f3fc"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end