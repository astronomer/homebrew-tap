# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0131 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.13.1"

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.13.1/astro_0.13.1_darwin_amd64.tar.gz"
    sha256 "a3f61c2a978377835e692d821e47a27b1276a20955abaf7eed893669ea80c037"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.13.1/astro_0.13.1_linux_386.tar.gz"
      sha256 "fb8d5b66922b459b6a936ef718d44cb16db046a73e3aaa97ccda9ab48d1c43e2"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end
