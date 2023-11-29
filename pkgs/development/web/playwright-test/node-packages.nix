# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "playwright-1.40.0" = {
      name = "playwright";
      packageName = "playwright";
      version = "1.40.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/playwright/-/playwright-1.40.0.tgz";
        sha512 = "gyHAgQjiDf1m34Xpwzaqb76KgfzYrhK7iih+2IzcOCoZWr/8ZqmdBw+t0RU85ZmfJMgtgAiNtBQ/KS2325INXw==";
      };
    };
    "playwright-core-1.40.0" = {
      name = "playwright-core";
      packageName = "playwright-core";
      version = "1.40.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/playwright-core/-/playwright-core-1.40.0.tgz";
        sha512 = "fvKewVJpGeca8t0ipM56jkVSU6Eo0RmFvQ/MaCQNDYm+sdvKkMBBWTE1FdeMqIdumRaXXjZChWHvIzCGM/tA/Q==";
      };
    };
  };
in
{
  "@playwright/test-1.40.0" = nodeEnv.buildNodePackage {
    name = "_at_playwright_slash_test";
    packageName = "@playwright/test";
    version = "1.40.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/@playwright/test/-/test-1.40.0.tgz";
      sha512 = "PdW+kn4eV99iP5gxWNSDQCbhMaDVej+RXL5xr6t04nbKLCBwYtA046t7ofoczHOm8u6c+45hpDKQVZqtqwkeQg==";
    };
    dependencies = [
      sources."playwright-1.40.0"
      sources."playwright-core-1.40.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "A high-level API to automate web browsers";
      homepage = "https://playwright.dev";
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
