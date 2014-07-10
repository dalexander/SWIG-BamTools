#pragma once

namespace BamTools
{
    class BamToolsException : public std::exception {
    private:
        const char* msg_;
    public:
        BamToolsException(const char* msg)
            :msg_(msg)
        {}

        const char* what() const throw()
        {
            return msg_;
        }
    };
}
