# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0163 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.16.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/astronomer/astro-cli/releases/download/v0.16.3/astro_0.16.3_darwin_amd64.tar.gz"
    sha256 "e1a03f17afd1dda0e9d63c28eca7ff29d644919a63943b69cbb120bfa2eef1b6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.16.3/astro_0.16.3_linux_386.tar.gz"
      sha256 "b2788d92766b9fe48fc3ef7834edade08e58a36f4afde6e3cfd3efa9f6730886"
    end
  end
  
  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end