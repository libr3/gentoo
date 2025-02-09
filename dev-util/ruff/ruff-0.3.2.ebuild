# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	Inflector@0.11.4
	adler@1.0.2
	ahash@0.8.10
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	annotate-snippets@0.6.1
	annotate-snippets@0.9.2
	anstream@0.6.13
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.6
	anyhow@1.0.80
	argfile@0.1.6
	arrayvec@0.7.4
	ascii-canvas@3.0.0
	assert_cmd@2.0.14
	autocfg@1.1.0
	base64@0.21.7
	bincode@1.3.3
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.2
	bstr@1.9.1
	bumpalo@3.15.3
	cachedir@0.3.1
	cast@0.3.0
	cc@1.0.88
	cfg-if@1.0.0
	chic@1.2.2
	chrono@0.4.34
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	clap@4.5.1
	clap_builder@4.5.1
	clap_complete@4.5.1
	clap_complete_command@0.5.1
	clap_complete_fig@4.5.0
	clap_complete_nushell@0.1.11
	clap_derive@4.5.0
	clap_lex@0.7.0
	clearscreen@2.0.1
	codspeed-criterion-compat@2.4.0
	codspeed@2.4.0
	colorchoice@1.0.0
	colored@2.1.0
	console@0.15.8
	console_error_panic_hook@0.1.7
	console_log@1.0.0
	core-foundation-sys@0.8.6
	countme@3.0.1
	crc32fast@1.4.0
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-channel@0.5.12
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.19
	crunchy@0.2.2
	darling@0.20.8
	darling_core@0.20.8
	darling_macro@0.20.8
	diff@0.1.13
	difflib@0.4.0
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	dirs-sys@0.3.7
	dirs-sys@0.4.1
	dirs@4.0.0
	dirs@5.0.1
	doc-comment@0.3.3
	drop_bomb@0.1.5
	dyn-clone@1.0.17
	either@1.10.0
	ena@0.14.2
	encode_unicode@0.3.6
	env_logger@0.10.2
	equivalent@1.0.1
	errno@0.3.8
	fastrand@2.0.1
	fern@0.6.2
	filetime@0.2.23
	fixedbitset@0.4.2
	flate2@1.0.28
	fnv@1.0.7
	form_urlencoded@1.2.1
	fs-err@2.11.0
	fsevent-sys@4.1.0
	getopts@0.2.21
	getrandom@0.2.12
	glob@0.3.1
	globset@0.4.14
	half@2.4.0
	hashbrown@0.12.3
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.9
	hexf-parse@0.2.1
	home@0.5.9
	humantime@2.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	ident_case@1.0.1
	idna@0.5.0
	ignore@0.4.22
	imara-diff@0.1.5
	imperative@1.0.5
	indexmap@2.2.5
	indicatif@0.17.8
	indoc@2.0.4
	inotify-sys@0.1.5
	inotify@0.9.6
	insta-cmd@0.4.0
	insta@1.35.1
	instant@0.1.12
	is-docker@0.2.0
	is-macro@0.3.5
	is-terminal@0.4.12
	is-wsl@0.4.0
	itertools@0.10.5
	itertools@0.11.0
	itertools@0.12.1
	itoa@1.0.10
	js-sys@0.3.68
	kqueue-sys@1.0.4
	kqueue@1.0.8
	lalrpop-util@0.20.2
	lalrpop@0.20.2
	lazy_static@1.4.0
	lexical-parse-float@0.8.5
	lexical-parse-integer@0.8.6
	lexical-util@0.8.5
	libc@0.2.153
	libcst@1.2.0
	libcst_derive@1.2.0
	libmimalloc-sys@0.1.35
	libredox@0.0.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.13
	lock_api@0.4.11
	log@0.4.21
	matchers@0.1.0
	matches@0.1.10
	memchr@2.7.1
	mimalloc@0.1.39
	minimal-lexical@0.2.1
	miniz_oxide@0.7.2
	mio@0.8.11
	natord@1.0.9
	new_debug_unreachable@1.0.4
	nextest-workspace-hack@0.1.0
	nix@0.26.4
	nom@7.1.3
	notify@6.1.1
	nu-ansi-term@0.46.0
	num-traits@0.2.18
	number_prefix@0.4.0
	once_cell@1.19.0
	oorandom@11.1.3
	option-ext@0.2.0
	os_str_bytes@6.6.1
	overload@0.1.1
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	paste@1.0.14
	path-absolutize@3.1.1
	path-dedot@3.1.1
	pathdiff@0.2.1
	peg-macros@0.8.2
	peg-runtime@0.8.2
	peg@0.8.2
	pep440_rs@0.4.0
	pep508_rs@0.3.0
	percent-encoding@2.3.1
	petgraph@0.6.4
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_shared@0.10.0
	phf_shared@0.11.2
	pin-project-lite@0.2.13
	pmutil@0.6.1
	portable-atomic@1.6.0
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.1.0
	pretty_assertions@1.4.0
	proc-macro2@1.0.78
	pyproject-toml@0.9.0
	quick-junit@0.3.5
	quick-xml@0.31.0
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.9.0
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.1.10
	regex-automata@0.4.5
	regex-syntax@0.6.29
	regex-syntax@0.8.2
	regex@1.10.3
	result-like-derive@0.5.0
	result-like@0.5.0
	ring@0.17.8
	rust-stemmers@1.2.0
	rustc-hash@1.1.0
	rustix@0.38.31
	rustls-pki-types@1.3.1
	rustls-webpki@0.102.2
	rustls@0.22.2
	rustversion@1.0.14
	ryu@1.0.17
	same-file@1.0.6
	schemars@0.8.16
	schemars_derive@0.8.16
	scoped-tls@1.0.1
	scopeguard@1.2.0
	seahash@4.1.0
	serde-wasm-bindgen@0.6.5
	serde@1.0.197
	serde_derive@1.0.197
	serde_derive_internals@0.26.0
	serde_json@1.0.114
	serde_spanned@0.6.5
	serde_test@1.0.176
	serde_with@3.6.1
	serde_with_macros@3.6.1
	sharded-slab@0.1.7
	shellexpand@3.1.0
	shlex@1.3.0
	similar@2.4.0
	siphasher@0.3.11
	smallvec@1.13.1
	spin@0.9.8
	static_assertions@1.1.0
	string_cache@0.8.7
	strip-ansi-escapes@0.2.0
	strsim@0.10.0
	strsim@0.11.0
	strum@0.25.0
	strum_macros@0.25.3
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.52
	tempfile@3.10.1
	term@0.7.0
	termcolor@1.4.1
	terminal_size@0.3.0
	terminfo@0.8.0
	termtree@0.4.1
	test-case-core@3.3.1
	test-case-macros@3.3.1
	test-case@3.3.1
	thiserror-impl@1.0.57
	thiserror@1.0.57
	thread_local@1.1.8
	tikv-jemalloc-sys@0.5.4+5.3.0-patched
	tikv-jemallocator@0.5.4
	time-core@0.1.0
	time@0.3.20
	tiny-keccak@2.0.2
	tinytemplate@1.2.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.8.10
	toml_datetime@0.6.5
	toml_edit@0.22.6
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-indicatif@0.3.6
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	typed-arena@2.0.2
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-ucd-category@0.9.0
	unic-ucd-version@0.9.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unicode-width@0.1.11
	unicode-xid@0.2.4
	unicode_names2@1.2.1
	unicode_names2_generator@1.2.1
	untrusted@0.9.0
	ureq@2.9.6
	url@2.5.0
	utf8parse@0.2.1
	uuid-macro-internal@1.7.0
	uuid@1.7.0
	valuable@0.1.0
	version_check@0.9.4
	vt100@0.15.2
	vte@0.11.1
	vte_generate_state_changes@0.1.1
	wait-timeout@0.2.0
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.91
	wasm-bindgen-futures@0.4.41
	wasm-bindgen-macro-support@0.2.91
	wasm-bindgen-macro@0.2.91
	wasm-bindgen-shared@0.2.91
	wasm-bindgen-test-macro@0.3.41
	wasm-bindgen-test@0.3.41
	wasm-bindgen@0.2.91
	web-sys@0.3.68
	webpki-roots@0.26.1
	which@4.4.2
	wild@2.2.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.4
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.4
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.4
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.4
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.4
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.4
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.4
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.4
	winnow@0.6.5
	yaml-rust@0.4.5
	yansi-term@0.1.2
	yansi@0.5.1
	zerocopy-derive@0.7.32
	zerocopy@0.7.32
	zeroize@1.7.0
"

inherit cargo shell-completion

DESCRIPTION="An extremely fast Python linter, written in Rust"
HOMEPAGE="
	https://docs.astral.sh/ruff
	https://github.com/charliermarsh/ruff
"
SRC_URI="
	${CARGO_CRATE_URIS}
	https://github.com/charliermarsh/ruff/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD-2 BSD-2 BSD CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016
	WTFPL-2
"
# ring
LICENSE+="
	ISC SSLeay openssl MIT
"
# libcst
LICENSE+="
	MIT PSF-2 Apache-2.0
"
# libcst_derive
LICENSE+="
	MIT PSF-2 Apache-2.0
"

SLOT="0"
KEYWORDS="~amd64 ~loong"

BDEPEND="
	>=virtual/rust-1.71
"
RDEPEND="dev-libs/jemalloc:="
DEPEND="${RDEPEND}"

QA_FLAGS_IGNORED="usr/bin/.*"

PATCHES=(
	"${FILESDIR}/ruff-0.1.14-tests.patch"
	"${FILESDIR}/ruff-0.2.0-tests.patch"
	# backport fix for rustc version-specific test
	"${FILESDIR}"/0001-Gate-f-string-struct-size-test-for-Rustc-1.76-10371.patch
)

DOCS=(
	BREAKING_CHANGES.md
	CODE_OF_CONDUCT.md
	CONTRIBUTING.md
	README.md
	assets
	docs
)

src_configure() {
	export RUSTFLAGS="${RUSTFLAGS}"
	cargo_src_configure
}

src_compile() {
	local -x CARGO_FEATURE_UNPREFIXED_MALLOC_ON_SUPPORTED_PLATFORMS=1
	local -x JEMALLOC_OVERRIDE="${ESYSROOT}/usr/$(get_libdir)"/libjemalloc.so
	cargo_src_compile --bin ruff --bin ruff_shrinking

	local releasedir
	releasedir=target/$(usex 'debug' 'debug' 'release')

	${releasedir}/ruff generate-shell-completion bash > ruff-completion.bash || die
	${releasedir}/ruff generate-shell-completion zsh > ruff-completion.zsh || die
}

src_test() {
	cargo_src_test
}

src_install() {
	local releasedir=target/$(usex 'debug' 'debug' 'release')

	dobin ${releasedir}/ruff{,_shrinking}

	newbashcomp ruff-completion.bash ruff
	newzshcomp ruff-completion.zsh _ruff

	dodoc -r "${DOCS[@]}"
}
