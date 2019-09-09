import datetime
last_id = 0

class Note(object):
    """笔记本中的笔记,为每个便条存储tags"""

    def __init__(self, memo,tags = ""):
        """   """
        self.memo = memo
        self.tags = tags
        self.creation_date = datetime.date.today()
        global last_id
        last_id += 1
        self.id = last_id

    def match(self, filter):
        return (filter in self.memo or filter in self.tags)
        #这个是新的知识点,return 返回的是True/False,return后面的是判断语句

class Notebook(object):
    """表示可以标记、修改和搜索的笔记集合。"""

    def __init__(self):
        """Initialize a notebook with an empty list."""
        self.notes = []

    def new_note(self, memo ,tags = ""):
        """Create a new note and add it to the list."""
        self.notes.append(Note(memo, tags)) 
        # 以上是对象

    def _find_note(self, note_id):
        """Locate the note with the given id."""
        for note in self.notes:
            if str(note.id) == str(note_id):
                return note
        return None


    
    def modify_memo(self, note_id, memo):
        """Find the note with the gvie id and change its memo to the given value."""
        note = self._find_note(note_id)
        if note:
            note.memo = memo
            return True
        return False

    
    def modify_tags(self, note_id, tags):
        note = self._find_note(note_id)
        if note:
            note.tags = tags
            return True
        return False
    
    def search(self, filter):
        """Find all notes that match the given filter string"""
        for note in self.notes:
            return [note for note in self.notes if note.match(filter)]


if __name__ == "__main__":
    n = Notebook()
    n.new_note("hello world")
    n.new_note("hello again")
    print(n.notes)
    print(n.notes[0].id)
    print(n.notes[1].id)
    print(n.notes[0].memo)
    print(n.search("hello"))
    print(n.search("world"))
    n.modify_memo(1, "hi world")
    print(n.notes[0].memo)
