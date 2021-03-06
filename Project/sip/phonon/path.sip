// path.sip generated by MetaSIP
//
// This file is part of the phonon Python extension module.
//
// Copyright (c) 2018 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt4.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


%If (Qt_4_4_0 -)

namespace Phonon
{
%TypeHeaderCode
#include <path.h>
%End

    class Path
    {
%TypeHeaderCode
#include <path.h>
%End

    public:
        Path();
        Path(const Phonon::Path &);
        ~Path();
        bool isValid() const;
        Phonon::Effect *insertEffect(const Phonon::EffectDescription &desc, Phonon::Effect *before = 0);
        bool insertEffect(Phonon::Effect *newEffect, Phonon::Effect *before = 0);
        bool removeEffect(Phonon::Effect *effect);
        QList<Phonon::Effect*> effects() const;
        bool reconnect(Phonon::MediaNode *source, Phonon::MediaNode *sink);
        bool disconnect();
        bool operator==(const Phonon::Path &p) const;
        bool operator!=(const Phonon::Path &p) const;
%If (Qt_4_5_0 -)
        Phonon::MediaNode *source() const;
%End
%If (Qt_4_5_0 -)
        Phonon::MediaNode *sink() const;
%End
    };

    Phonon::Path createPath(Phonon::MediaNode *source, Phonon::MediaNode *sink);
};

%End
