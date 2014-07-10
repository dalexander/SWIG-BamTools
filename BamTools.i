%module BamTools

%{
#define BAMTOOLS_LIBRARY_IMPORT
#define API_EXPORT

#include "api/api_global.h"

#include "api/SamConstants.h"
#include "api/SamHeader.h"
#include "api/SamReadGroup.h"
#include "api/SamReadGroupDictionary.h"
#include "api/SamSequenceDictionary.h"
#include "api/SamSequence.h"
#include "api/SamProgram.h"
#include "api/SamProgramChain.h"

#include "api/BamAux.h"
#include "api/BamAlignment.h"
#include "api/BamReader.h"
#include "api/BamIndex.h"

#include "Extensions.hpp"

using namespace BamTools;

%}

#define API_EXPORT

%include "std_string.i"
%include "std_vector.i"
%include "std_map.i"

%include "stdint.i"

%include "api/SamConstants.h"
%include "api/SamReadGroup.h"
%include "api/SamReadGroupDictionary.h"
%include "api/SamSequenceDictionary.h"
%include "api/SamSequence.h"
%include "api/SamProgram.h"
%include "api/SamProgramChain.h"
%include "api/SamHeader.h"

%include "api/BamAux.h"
%include "api/BamAlignment.h"
%include "api/BamIndex.h"
%include "api/BamReader.h"

namespace BamTools {
    %template(CigarOpVector) ::std::vector<BamTools::CigarOp>;
    %template(RefDataVector) ::std::vector<BamTools::RefData>;
    %template(StringVector)  ::std::vector<std::string>;
 }

%include "Extensions.hpp"
%include "Extensions.i"
