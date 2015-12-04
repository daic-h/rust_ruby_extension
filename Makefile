all:
	@echo Nothing to do...

debug:
	cargo rustc -Clink-args='-Wl,-undefined,dynamic_lookup' --verbose

dev:
	cargo rustc -Clink-args='-Wl,-undefined,dynamic_lookup'
	rm -rf ./target/debug/rust.bundle
	cp ./target/debug/librust.dylib ./target/debug/rust.bundle

irb:
	irb -r ./target/debug/rust
