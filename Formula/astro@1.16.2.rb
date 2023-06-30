# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1162 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.16.2/astro_1.16.2_darwin_arm64.tar.gz"
        sha256 "125110492978c78c0cd0ec066bcdab0fffc7be7430e9abf919d8f51a30c234d9"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.16.2/astro_1.16.2_darwin_amd64.tar.gz"
        sha256 "fd8c1a75702e38bc43ae04eb14707913c00cba0a379e00e708799f71231d8956"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.16.2/astro_1.16.2_linux_arm64.tar.gz"
        sha256 "7e12a2e7566fe45961907676228b99c363f4827d72a7f085e5990970cc8190a6"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.16.2/astro_1.16.2_linux_amd64.tar.gz"
        sha256 "1368e5bdd30f0ac1d325b3d91af8178225adf2e0824815317f03d0d3d6135b33"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
