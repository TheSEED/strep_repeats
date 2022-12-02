TOP_DIR = ../..
include $(TOP_DIR)/tools/Makefile.common

SRC_PERL = $(wildcard scripts/*.pl)
BIN_PERL = $(addprefix $(BIN_DIR)/,$(basename $(notdir $(SRC_PERL))))

HMM_SRC = deps/hmmer-1.8.4

all: deps bin data

deploy: deploy-client
deploy-client: deploy-deps deploy-scripts deploy-data

deploy-deps: $(HMM_SRC)/hmmls
	test -d $(TARGET)/libexec || mkdir $(TARGET)/libexec
	test -d $(TARGET)/libexec/$(CURRENT_DIR) || mkdir $(TARGET)/libexec/$(CURRENT_DIR)
	cp $(HMM_SRC)/hmmls $(TARGET)/libexec/$(CURRENT_DIR)/hmmls

deploy-data:
	cp -r Repeat_HMMs $(TARGET)/libexec/$(CURRENT_DIR)/.

deps: $(LIBEXEC_DIR)/$(CURRENT_DIR)/hmmls

$(LIBEXEC_DIR)/$(CURRENT_DIR)/hmmls: $(HMM_SRC)/hmmls
	test -d $(LIBEXEC_DIR) || mkdir $(LIBEXEC_DIR)
	test -d $(LIBEXEC_DIR)/$(CURRENT_DIR) || mkdir $(LIBEXEC_DIR)/$(CURRENT_DIR)
	cp $(HMM_SRC)/hmmls $(LIBEXEC_DIR)/$(CURRENT_DIR)/hmmls

data:
	cp -r Repeat_HMMs $(LIBEXEC_DIR)/$(CURRENT_DIR)/.

$(HMM_SRC)/hmmls:
	cd $(HMM_SRC); make hmmls

bin: $(BIN_PERL)

$(BIN_DIR)/%: scripts/%.pl 
	$(TOOLS_DIR)/wrap_perl '$$KB_TOP/modules/$(CURRENT_DIR)/$<' $@

include $(TOP_DIR)/tools/Makefile.common.rules
