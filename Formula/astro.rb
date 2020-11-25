# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.23.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.23.1/astro_0.23.1_darwin_amd64.tar.gz"
    sha256 "d6d0390614d8e597919b9b8ebc6c5a1ba625dc1567c4fe7d355ff9fb774c96b4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.23.1/astro_0.23.1_linux_amd64.tar.gz"
      sha256 "76818a00a279ae39d83f2df65de77b05b3c7153929265a7ecabdfa5653344e8b"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end
