#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include <fmclient.h>

static int
not_here(s)
char *s;
{
    croak("%s not implemented on this architecture", s);
    return -1;
}

static double
constant(name, arg)
	char *name;
	int arg;
{
not_there:
    errno = ENOENT;
    return 0;
}

MODULE = SGI::FM		PACKAGE = SGI::FM	PREFIX = fm

double
constant(name,arg)
	char *		name
	int		arg

fmfonthandle
fmfindfont(face)
	char *		face

void
fminit()

long
fmgetstrwidth(fh,str)
	fmfonthandle	fh
	char *		str

long
fmprstr(str)
	char *		str

fmfonthandle
fmscalefont(fh,scale)
	fmfonthandle	fh
	double		scale

void
fmsetfont(fh)
	fmfonthandle	fh

void
fmfreefont(fh)
	fmfonthandle	fh
