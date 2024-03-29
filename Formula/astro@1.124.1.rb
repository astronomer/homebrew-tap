# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1241 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.1/astro_1.24.1_darwin_arm64.tar.gz"
        sha256 "b0db68fec795636f36bf6728bbd67b220a7154bc099390fdf84ee11a8725ab16"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.1/astro_1.24.1_darwin_amd64.tar.gz"
        sha256 "582826cd69bd9d17f6a233029d4b5794111d789d2004f692b711eaa585292562"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.1/astro_1.24.1_linux_arm64.tar.gz"
        sha256 "e9943a6207f7501555bb9b70ab2a1cae9ec80d7f92951c21778c4652c977d1d4"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.1/astro_1.24.1_linux_amd64.tar.gz"
        sha256 "d3c2a03731ac491ee816ca48deb0ea4bcc4925d859c56c8875952ca6b2355610"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
