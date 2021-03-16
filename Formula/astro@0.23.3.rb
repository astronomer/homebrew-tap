# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0233 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.23.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.23.3/astro_0.23.3_darwin_amd64.tar.gz"
    sha256 "ce9e13b4e1ea678586c9a2c38ddda2656e44df4c8559bf7ae5aaffa01801acc3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.23.3/astro_0.23.3_linux_amd64.tar.gz"
      sha256 "a003c21aaee5fce91affba1e2296daf95b0eadf27fc9c509ef79dd5664430454"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end
