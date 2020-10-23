# { stdenv, lib, makeWrapper, fetchurl, pup, curl }:
# stdenv.mkDerivation rec {

{ pkgs ? import <nixpkgs> {} }:
with pkgs; stdenv.mkDerivation rec {

	name = "trends";
	src = ./.;

	phases = [ "installphase" "postFixup" ];
	nativeBuildInputs = [ makeWrapper ];
	wrapperPath = with stdenv.lib; makeBinPath ([
		pup
		curl
	]);

	installphase = ''
		mkdir -p $out/bin
		cp ${src}/trends $out/bin/${name}
		chmod +x $out/bin/${name}
	'';

	postFixup = ''
		wrapProgram $out/bin/${name} $wrapperfile --prefix PATH : "${wrapperPath}"
	'';

}
