// qtextdocumentfragment.sip generated by MetaSIP
//
// This file is part of the QtGui Python extension module.
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


class QTextDocumentFragment
{
%TypeHeaderCode
#include <qtextdocumentfragment.h>
%End

public:
    QTextDocumentFragment();
    explicit QTextDocumentFragment(const QTextDocument *document);
    explicit QTextDocumentFragment(const QTextCursor &range);
    QTextDocumentFragment(const QTextDocumentFragment &rhs);
    ~QTextDocumentFragment();
    bool isEmpty() const;
    QString toPlainText() const;
%If (Qt_5_0_0 -)
    QString toHtml(const QByteArray &encoding = QByteArray()) const;
%End
%If (- Qt_5_0_0)
    QString toHtml() const;
%End
%If (Qt_4_2_0 - Qt_5_0_0)
    QString toHtml(const QByteArray &encoding) const;
%End
    static QTextDocumentFragment fromPlainText(const QString &plainText);
    static QTextDocumentFragment fromHtml(const QString &html);
%If (Qt_4_2_0 -)
    static QTextDocumentFragment fromHtml(const QString &html, const QTextDocument *resourceProvider);
%End
};
