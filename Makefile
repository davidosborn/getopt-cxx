.DEFAULT_GOAL := all

################################################################################
# Configure

-include config.mk

################################################################################
# Build

.PHONY: all
all: $(LIBPREFIX)$(PACKAGE)$(LIBEXT)

$(LIBPREFIX)$(PACKAGE)$(LIBEXT): $(SRCS:%.cc=%$(OBJEXT))
	$(AR) rcs $@ $^

%$(OBJEXT): %.cc Makefile config.h config.mk
	$(CXX) -c $(CPPFLAGS) $(CXXFLAGS) -o $@ $<

################################################################################
# Clean

.PHONY: clean
clean:
	rm -f $(LIBPREFIX)$(PACKAGE)$(LIBEXT)
	rm -f $(SRCS:%.cc=%$(OBJEXT))
