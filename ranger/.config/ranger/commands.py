import os

import ranger.api.commands
from ranger.config.commands import trash as rtrash
from ranger.container.file import File
from ranger.container.directory import Directory

class trash(rtrash):
    """:trash

    Override of upstream to fix issue #1798 (Ranger crashes when deleting to Trash)
    Current version v1.9.3. Will be fixed in v1.9.4.

    TODO: remove after upgrade to v1.9.4
    """

    def execute(self):
        import shlex
        from functools import partial

        def is_directory_with_files(path):
            return os.path.isdir(path) and not os.path.islink(path) and len(os.listdir(path)) > 0

        if self.rest(1):
            files = shlex.split(self.rest(1))
            many_files = (len(files) > 1 or is_directory_with_files(files[0]))
        else:
            cwd = self.fm.thisdir
            tfile = self.fm.thisfile
            if not cwd or not tfile:
                self.fm.notify("Error: no file selected for deletion!", bad=True)
                return

            files = [f.relative_path for f in self.fm.thistab.get_selection()]
            many_files = (cwd.marked_items or is_directory_with_files(tfile.path))

        confirm = self.fm.settings.confirm_on_delete
        fileobjs = [_get_object(path) for path in files]
        if confirm != 'never' and (confirm != 'multiple' or many_files):
            self.fm.ui.console.ask(
                "Confirm deletion of: %s (y/N)" % ', '.join(files),
                partial(self._question_callback, fileobjs),
                ('n', 'N', 'y', 'Y'),
            )
        else:
            self.fm.execute_file(fileobjs, label='trash')



        
def _get_object(path):
    if not isinstance(path, str):
        return path

    if os.path.isdir(path):
        return Directory(path)

    return File(path)