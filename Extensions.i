#include <exception>
#include <string>

//
// We "add" these to the BamAlignment API using SWIG %extend
//
%extend BamTools::BamAlignment {

    int GetIntTag(const std::string& tagName) throw(BamToolsException)
    {
        int rv;
        bool ok = $self->GetTag<int>(tagName, rv);
        if (ok)
        {
            return rv;
        }
        else
        {
            throw BamTools::BamToolsException("Cannot load tag");
        }
    }

    int GetUintTag(const std::string& tagName) throw(BamToolsException)
    {
        unsigned int rv;
        bool ok = $self->GetTag<unsigned int>(tagName, rv);
        if (ok)
        {
            return rv;
        }
        else
        {
            throw BamTools::BamToolsException("Cannot load tag");
        }
    }

    std::string GetStringTag(const std::string& tagName) throw(BamToolsException)
    {
        std::string rv;
        bool ok = $self->GetTag<std::string>(tagName, rv);
        if (ok)
        {
            return rv;
        }
        else
        {
            throw BamTools::BamToolsException("Cannot load tag");
        }
    }

    // std::vector<char> GetByteVectorTag(const std::string& tagName)
    // {
    //     //return
    // }

};


%extend BamTools::SamReadGroupDictionary {
    std::vector<BamTools::SamReadGroup>* ToList()
    {
        return new std::vector<BamTools::SamReadGroup>
            ($self->ConstBegin(), $self->ConstEnd());
    }
}

%extend BamTools::SamSequenceDictionary {
    std::vector<BamTools::SamSequence>* ToList()
    {
        return new std::vector<BamTools::SamSequence>
            ($self->ConstBegin(), $self->ConstEnd());
    }
}

%extend BamTools::SamProgramChain {
    std::vector<BamTools::SamProgram>* ToList()
    {
        return new std::vector<BamTools::SamProgram>
            ($self->ConstBegin(), $self->ConstEnd());
    }
}
