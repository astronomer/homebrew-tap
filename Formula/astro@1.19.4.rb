# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1194 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.4/astro_1.19.4_darwin_arm64.tar.gz"
        sha256 "3d5897f8879e0191ab68f51bd3614c0f466c9e048203aad3b2104baf76038f65"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.4/astro_1.19.4_darwin_amd64.tar.gz"
        sha256 "96083757c2211e9f68666b9c2554064ac481c2dad95dd1f0a43ed12f3a94830b"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.4/astro_1.19.4_linux_arm64.tar.gz"
        sha256 "e126e0f370acb95dfe92b0844af6345f8230c2cf96d2abfd844a17eb65c956b6"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.4/astro_1.19.4_linux_amd64.tar.gz"
        sha256 "4dfe1ad4e6154d41b3a66bc1921c9522b3a40cc46f9989280d16476eb048ebf1"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
