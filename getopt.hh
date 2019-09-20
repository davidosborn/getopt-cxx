#pragma once

#include <string>
#include <vector>

namespace getopt {
	struct Option {
	};

	struct Usage {
		bool first;
		std::string header;
	};

	struct Settings {
		std::vector<Option> options;
		Usage usage;
	};

	struct Result {
	};

	struct Results {
	};

	Results getopt(int argc, char *argv[], const Settings &settings);

	std::vector<Result> parse(int argc, char *argv[], const Settings &settings);
}
