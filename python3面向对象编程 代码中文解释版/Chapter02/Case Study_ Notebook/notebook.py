import datetime

# 存储所有新便笺的下一个可用ID
last_id = 0


class Note(object):
    """表示笔记本中的笔记。与搜索中的字符串匹配，并为每个便笺存储标记。tags"""

    def __init__(self, memo, tags=""):
        """用memo和可选项初始化注释以空格分隔的标签。自动设置便笺的创建日期和唯一ID。"""
        self.memo = memo
        self.tags = tags
        self.creation_date = datetime.date.today()
        global last_id
        last_id += 1
        self.id = last_id

    def match(self, filter):
        """确定此注释是否与筛选文本匹配。如果匹配则返回true，否则返回false。
        
        搜索区分大小写，同时匹配文本和标记"""
        return filter in self.memo or filter in self.tags


class Notebook(object):
    """Represent a collection of notes that can be tagged,
    modified, and searched."""

    def __init__(self):
        """Initialize a notebook with an empty list."""
        self.notes = []

    def new_note(self, memo, tags=""):
        """Create a new note and add it to the list."""
        self.notes.append(Note(memo, tags))

    def _find_note(self, note_id):
        """Locate the note with the given id."""
        for note in self.notes:
            if str(note.id) == str(note_id):
                return note
        return None

    def modify_memo(self, note_id, memo):
        """Find the note with the given id and change its
        memo to the given value."""
        note = self._find_note(note_id)
        if note:
            note.memo = memo
            return True
        return False

    def modify_tags(self, note_id, tags):
        """Find the note with the given id and change its
        tags to the given value."""
        note = self._find_note(note_id)
        if note:
            note.tags = tags
            return True
        return False

    def search(self, filter):
        """Find all notes that match the given filter
        string."""
        return [note for note in self.notes if note.match(filter)]





