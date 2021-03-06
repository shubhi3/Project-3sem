// qtableview.sip generated by MetaSIP
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


class QTableView : QAbstractItemView
{
%TypeHeaderCode
#include <qtableview.h>
%End

public:
    explicit QTableView(QWidget *parent /TransferThis/ = 0);
    virtual ~QTableView();
    virtual void setModel(QAbstractItemModel *model /KeepReference/);
    virtual void setRootIndex(const QModelIndex &index);
    virtual void setSelectionModel(QItemSelectionModel *selectionModel /KeepReference/);
    QHeaderView *horizontalHeader() const;
    QHeaderView *verticalHeader() const;
    void setHorizontalHeader(QHeaderView *header /Transfer/);
    void setVerticalHeader(QHeaderView *header /Transfer/);
    int rowViewportPosition(int row) const;
    void setRowHeight(int row, int height);
    int rowHeight(int row) const;
    int rowAt(int y) const;
    int columnViewportPosition(int column) const;
    void setColumnWidth(int column, int width);
    int columnWidth(int column) const;
    int columnAt(int x) const;
    bool isRowHidden(int row) const;
    void setRowHidden(int row, bool hide);
    bool isColumnHidden(int column) const;
    void setColumnHidden(int column, bool hide);
    bool showGrid() const;
    void setShowGrid(bool show);
    Qt::PenStyle gridStyle() const;
    void setGridStyle(Qt::PenStyle style);
    virtual QRect visualRect(const QModelIndex &index) const;
    virtual void scrollTo(const QModelIndex &index, QAbstractItemView::ScrollHint hint = QAbstractItemView::EnsureVisible);
    virtual QModelIndex indexAt(const QPoint &p) const;

public slots:
    void selectRow(int row);
    void selectColumn(int column);
    void hideRow(int row);
    void hideColumn(int column);
    void showRow(int row);
    void showColumn(int column);
    void resizeRowToContents(int row);
    void resizeRowsToContents();
    void resizeColumnToContents(int column);
    void resizeColumnsToContents();
    void sortByColumn(int column);

protected slots:
    void rowMoved(int row, int oldIndex, int newIndex);
    void columnMoved(int column, int oldIndex, int newIndex);
    void rowResized(int row, int oldHeight, int newHeight);
    void columnResized(int column, int oldWidth, int newWidth);
    void rowCountChanged(int oldCount, int newCount);
    void columnCountChanged(int oldCount, int newCount);

protected:
    virtual void scrollContentsBy(int dx, int dy);
    virtual QStyleOptionViewItem viewOptions() const;
    virtual void paintEvent(QPaintEvent *e);
    virtual void timerEvent(QTimerEvent *event);
    virtual int horizontalOffset() const;
    virtual int verticalOffset() const;
    virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers);
    virtual void setSelection(const QRect &rect, QFlags<QItemSelectionModel::SelectionFlag> command);
    virtual QRegion visualRegionForSelection(const QItemSelection &selection) const;
    virtual QModelIndexList selectedIndexes() const;
    virtual void updateGeometries();
    virtual int sizeHintForRow(int row) const;
    virtual int sizeHintForColumn(int column) const;
    virtual void verticalScrollbarAction(int action);
    virtual void horizontalScrollbarAction(int action);
    virtual bool isIndexHidden(const QModelIndex &index) const;

public:
%If (Qt_4_2_0 -)
    void setSortingEnabled(bool enable);
%End
%If (Qt_4_2_0 -)
    bool isSortingEnabled() const;
%End
%If (Qt_4_2_0 -)
    void setSpan(int row, int column, int rowSpan, int columnSpan);
%End
%If (Qt_4_2_0 -)
    int rowSpan(int row, int column) const;
%End
%If (Qt_4_2_0 -)
    int columnSpan(int row, int column) const;
%End
%If (Qt_4_2_0 -)
    void sortByColumn(int column, Qt::SortOrder order);
%End
%If (Qt_4_3_0 -)
    void setWordWrap(bool on);
%End
%If (Qt_4_3_0 -)
    bool wordWrap() const;
%End
%If (Qt_4_3_0 -)
    void setCornerButtonEnabled(bool enable);
%End
%If (Qt_4_3_0 -)
    bool isCornerButtonEnabled() const;
%End
%If (Qt_4_4_0 -)
    void clearSpans();
%End

protected:
%If (Qt_4_3_0 -)
    virtual void selectionChanged(const QItemSelection &selected, const QItemSelection &deselected);
%End
%If (Qt_4_3_0 -)
    virtual void currentChanged(const QModelIndex &current, const QModelIndex &previous);
%End

private:
    QTableView(const QTableView &);
};
