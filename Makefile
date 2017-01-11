source:=$(wildcard src/*.dot)

all: $(patsubst src/%.dot,dst/%.svg,$(source))

clean:
	@del dst\\*.svg

.PHONY: all clean

dst/%.svg: src/%.dot
	@dot -T svg -o $@ $<
