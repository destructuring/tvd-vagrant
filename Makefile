GEM := $(shell pwd | xargs basename)

all: ready

ready:
	@git submodule update --init --recursive
	@bundle check 2>&1 >/dev/null || { bundle --local --path vendor/bundle > /dev/null || bundle check; }

gem:
	gem build $(GEM).gemspec

public:
	gem push $(shell ls -thd $(GEM)*.gem  | head -1)
