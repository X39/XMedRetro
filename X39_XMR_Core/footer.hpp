#ifndef _DEFAULT_HEADER_
    throw "header.hpp not included";
#endif
#ifndef _DEFAULT_FOOTER_
    #define _DEFAULT_FOOTER_
#else
    throw "_DEFAULT_FOOTER_ already defined";
#endif
#ifdef VARIABLENAMESPACE
};
#endif
#ifndef DISABLERETURN
    };
    _res
#endif
#ifdef DOTRACE
};
___callTrace___ deleteAt (count ___callTrace___) - 1;
_res;
#endif