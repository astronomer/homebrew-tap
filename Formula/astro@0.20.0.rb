# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0200 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.20.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.20.0/astro_0.20.0_darwin_amd64.tar.gz"
    sha256 "dd11c73ba09b57af32e4027e191a866a46601babf7b546b80d86e3fc473e659a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.20.0/astro_0.20.0_linux_amd64.tar.gz"
      sha256 "1f6b36be2994f80d4110566c4b78ccb351b3f0f90811b2f46c4ebd52b3e785e2"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end